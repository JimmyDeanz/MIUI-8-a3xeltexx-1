.class public Lcom/sec/epdg/handover/EpdgImsListener;
.super Ljava/lang/Object;
.source "EpdgImsListener.java"


# static fields
.field private static mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hdlr"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hdlr"    # Landroid/os/Handler;

    .prologue
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener;->isIms60()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener60;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    :goto_0
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener50;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    goto :goto_0
.end method

.method private static isIms60()Z
    .locals 3

    .prologue
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_FrameworkVersion"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "version":Ljava/lang/String;
    const-string v1, "6.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v0

    return-object v0
.end method

.method public getE911CallCount()I
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getE911CallCount()I

    move-result v0

    return v0
.end method

.method public getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v0

    return-object v0
.end method

.method public getIpmeStatus()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getIpmeStatus()Z

    move-result v0

    return v0
.end method

.method public getNonE911CallCount()I
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getNonE911CallCount()I

    move-result v0

    return v0
.end method

.method public getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v0

    return-object v0
.end method

.method public getVoWifiSessionConnected()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v0

    return v0
.end method

.method public onEpdgSettingChanged(Lcom/sec/epdg/EpdgSettings;)V
    .locals 1
    .param p1, "settings"    # Lcom/sec/epdg/EpdgSettings;

    .prologue
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsListener;->onEpdgSettingChanged(Lcom/sec/epdg/EpdgSettings;)V

    return-void
.end method

.method public registerListener()V
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->registerListener()V

    return-void
.end method

.method public setEcbmChanged(Z)V
    .locals 1
    .param p1, "modeStart"    # Z

    .prologue
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsListener;->setEcbmChanged(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener()V
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->unregisterListener()V

    return-void
.end method
