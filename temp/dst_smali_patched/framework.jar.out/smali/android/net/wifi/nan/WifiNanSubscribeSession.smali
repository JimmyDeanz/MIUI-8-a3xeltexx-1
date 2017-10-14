.class public Landroid/net/wifi/nan/WifiNanSubscribeSession;
.super Landroid/net/wifi/nan/WifiNanSession;
.source "WifiNanSubscribeSession.java"


# direct methods
.method public constructor <init>(Landroid/net/wifi/nan/WifiNanManager;I)V
    .locals 0
    .param p1, "manager"    # Landroid/net/wifi/nan/WifiNanManager;
    .param p2, "sessionId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/nan/WifiNanSession;-><init>(Landroid/net/wifi/nan/WifiNanManager;I)V

    return-void
.end method


# virtual methods
.method public subscribe(Landroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;)V
    .locals 2
    .param p1, "subscribeData"    # Landroid/net/wifi/nan/SubscribeData;
    .param p2, "subscribeSettings"    # Landroid/net/wifi/nan/SubscribeSettings;

    .prologue
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSubscribeSession;->mManager:Landroid/net/wifi/nan/WifiNanManager;

    iget v1, p0, Landroid/net/wifi/nan/WifiNanSubscribeSession;->mSessionId:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/nan/WifiNanManager;->subscribe(ILandroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;)V

    return-void
.end method
