.class public Lcom/sec/epdg/EpdgRilAdapter;
.super Ljava/lang/Object;
.source "EpdgRilAdapter.java"

# interfaces
.implements Lcom/sec/epdg/EpdgRilInterface;


# static fields
.field private static final OUTGOING_TAG:Ljava/lang/String; = "[EPDG-->RIL]"

.field private static mInstance:Lcom/sec/epdg/EpdgRilAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgRilAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgRilAdapter;->mInstance:Lcom/sec/epdg/EpdgRilAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/epdg/EpdgRilAdapter;

    invoke-direct {v0}, Lcom/sec/epdg/EpdgRilAdapter;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgRilAdapter;->mInstance:Lcom/sec/epdg/EpdgRilAdapter;

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgRilAdapter;->mInstance:Lcom/sec/epdg/EpdgRilAdapter;

    return-object v0
.end method

.method private getTargetNetwork()I
    .locals 5

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .local v0, "targetNetworkType":I
    const-string v2, "[EPDG-->RIL]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Default Network: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x21

    .local v1, "targetRilNet":I
    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    const/16 v1, 0x19

    :cond_0
    return v1
.end method


# virtual methods
.method public triggerHandover(IZ)V
    .locals 5
    .param p1, "cid"    # I
    .param p2, "handoverToWifi"    # Z

    .prologue
    if-eqz p2, :cond_1

    const/16 v0, 0x30

    .local v0, "act":I
    :goto_0
    const/4 v1, 0x2

    .local v1, "cause":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x3

    :cond_0
    const-string v2, "[EPDG-->RIL]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SEND HANDOVER SUSPEND <-> Cid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendNetDataHandover(IIII)Z

    return-void

    .end local v0    # "act":I
    .end local v1    # "cause":I
    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgRilAdapter;->getTargetNetwork()I

    move-result v0

    goto :goto_0
.end method

.method public updateApnConnStatus(IZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;ZZZ)V
    .locals 12
    .param p1, "cid"    # I
    .param p2, "isConnSuccessful"    # Z
    .param p3, "prop"    # Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    .param p4, "isHandover"    # Z
    .param p5, "isAttachPdn"    # Z
    .param p6, "isPermanentFail"    # Z

    .prologue
    if-eqz p2, :cond_0

    const-string v1, "[EPDG-->RIL]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEND GPRS IP CONFIG <-> Cid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIptype()Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIpv4addr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getmIpv4Dnses()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p3}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIpv4PcscfAddr()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIpv6addr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getIpv6PcscfAddr()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;->getmIpv6Dnses()[Ljava/lang/String;

    move-result-object v10

    move v1, p1

    invoke-static/range {v1 .. v10}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->SendGprsIPConfigs(ILcom/sec/epdg/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    :cond_0
    const-string v1, "[EPDG-->RIL]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEND CALL STATUS <-> Cid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Connection Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    :goto_0
    move/from16 v0, p6

    invoke-static {p1, v1, v0}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGprsCallStatus(IIZ)Z

    if-eqz p5, :cond_1

    const-string v1, "[EPDG-->RIL]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEND GPRS EPDG STATUS <-> Cid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Connection Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-static {p1, v1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendGprsEpdgStatus(II)Z

    :cond_1
    if-eqz p4, :cond_2

    if-eqz p2, :cond_5

    const/16 v11, 0x30

    .local v11, "act":I
    :goto_2
    const-string v1, "[EPDG-->RIL]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEND HANDOVER RESUME <-> Cid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v1, v2, v11, p1}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendNetDataHandover(IIII)Z

    .end local v11    # "act":I
    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/sec/epdg/EpdgRilAdapter;->getTargetNetwork()I

    move-result v11

    goto :goto_2
.end method

.method public updateEpdgAvailability(Z)V
    .locals 4
    .param p1, "isAvailable"    # Z

    .prologue
    const-string v2, "[EPDG-->RIL]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEND NET REGISTER -- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string v1, "EPDG AVAILABLE"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .local v0, "availabilty":I
    :goto_1
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/epdg/EpdgRilSharedData;->setSmartWifiState(I)V

    const/16 v1, 0x30

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendNetRegist(III)Z

    return-void

    .end local v0    # "availabilty":I
    :cond_0
    const-string v1, "EPDG NOT AVAILABLE"

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public updateEpdgHoThreshold(ZIIIIII)V
    .locals 7
    .param p1, "isAvailable"    # Z
    .param p2, "threhold4gRoveIn"    # I
    .param p3, "threhold4gRoveOut"    # I
    .param p4, "threhold3gRoveIn"    # I
    .param p5, "threhold3gRoveOut"    # I
    .param p6, "threhold2gRoveIn"    # I
    .param p7, "threhold2gRoveOut"    # I

    .prologue
    const-string v2, "[EPDG-->RIL]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEND EPDG HANDOVER THRESHOLD -- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string v1, "TURN ON"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .local v0, "availabilty":I
    :goto_1
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Lcom/sec/epdg/ipc/EpdgIpcDispatcher;->sendEpdgHoThreshold(IIIIIII)Z

    return-void

    .end local v0    # "availabilty":I
    :cond_0
    const-string v1, "TURN OFF"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
