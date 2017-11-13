.class Lcom/sec/epdg/EpdgService$23;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$23;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->setIsWifiRssiInPollingZone(Z)V
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$10200(Z)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    # invokes: Lcom/sec/epdg/EpdgService;->getIsImsCallConnected()Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$8200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    :goto_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/sec/epdg/EpdgService;->startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$6700(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "IMS is on epdg and status is idle, no need to set the epdg availability to false"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    goto :goto_0
.end method
