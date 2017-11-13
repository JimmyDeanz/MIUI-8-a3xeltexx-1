.class public Lcom/sec/epdg/handover/EpdgImsRegStatus;
.super Ljava/lang/Object;
.source "EpdgImsRegStatus.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[EpdgImsRegStatus]"


# instance fields
.field private mImsRegStatus:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_NOT_STARTED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mImsRegStatus:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    return-void
.end method

.method private getNetworkType(Lcom/sec/ims/ImsRegistration;)I
    .locals 2
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x12

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xd

    goto :goto_0
.end method

.method private setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V
    .locals 3
    .param p1, "value"    # Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .prologue
    const-string v0, "[EpdgImsRegStatus]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRegStatus: new Reg status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mImsRegStatus:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    return-void
.end method


# virtual methods
.method protected getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;
    .locals 1

    .prologue
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsRegStatus;->mImsRegStatus:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    goto :goto_0
.end method

.method protected onDeRegistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 1
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .prologue
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    invoke-direct {p0, v0}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V

    if-eqz p2, :cond_0

    const/16 v0, 0xc8

    if-ne v0, p2, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->DEREG_SUCCEEDED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    invoke-direct {p0, v0}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V

    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->getNetworkType(Lcom/sec/ims/ImsRegistration;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener60;->informImsRegStatusChangeToHandoverModule(I)V

    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x25e

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_BLOCKED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    invoke-direct {p0, v0}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener60;->informImsRegStatusChangeToHandoverModule(I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_NOT_STARTED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    invoke-direct {p0, v0}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V

    goto :goto_0
.end method

.method protected onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 1
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .prologue
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    invoke-direct {p0, v0}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V

    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->getNetworkType(Lcom/sec/ims/ImsRegistration;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/epdg/handover/EpdgImsListener60;->informImsRegStatusChangeToHandoverModule(I)V

    return-void
.end method
