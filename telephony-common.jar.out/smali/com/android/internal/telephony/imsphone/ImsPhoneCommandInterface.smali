.class Lcom/android/internal/telephony/imsphone/ImsPhoneCommandInterface;
.super Lcom/android/internal/telephony/BaseCommands;
.source "ImsPhoneCommandInterface.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field mPausedResponseCount:I

.field mPausedResponses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCommandInterface;->mPausedResponses:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method private unimplemented(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 744
    if-eqz p1, :cond_0

    .line 745
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unimplemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 748
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCommandInterface;->mPausedResponseCount:I

    if-lez v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCommandInterface;->mPausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public acceptCall(ILandroid/os/Message;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 178
    return-void
.end method

.method public acceptCall(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 173
    return-void
.end method

.method public accessPhoneBookEntry(IIILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "index"    # I
    .param p4, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 710
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 322
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 317
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 312
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 418
    return-void
.end method

.method public cancelTransferCall(ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 824
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 90
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "newPwdAgain"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 759
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCommandInterface;->unimplemented(Landroid/os/Message;)V

    .line 760
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 81
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 85
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 581
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 576
    return-void
.end method

.method public changeIccSimPerso(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPass"    # Ljava/lang/String;
    .param p2, "newPass"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 768
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 157
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 0
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 299
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 281
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 277
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 110
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 115
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Lcom/android/internal/telephony/CallDetails;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "callDetails"    # Lcom/android/internal/telephony/CallDetails;
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 120
    return-void
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 686
    return-void
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILcom/android/internal/telephony/CallDetails;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lcom/android/internal/telephony/CallDetails;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 690
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 556
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 187
    return-void
.end method

.method public explicitCallTransfer(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 192
    return-void
.end method

.method public getAcbInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 844
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 365
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 390
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 512
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 335
    return-void
.end method

.method public getCbConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 726
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 544
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 491
    return-void
.end method

.method public getCellInfoList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 597
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 98
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 106
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 226
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 508
    return-void
.end method

.method public getDisable2g(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 829
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 495
    return-void
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 639
    return-void
.end method

.method public getICBarring(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 812
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 133
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 137
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 125
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 129
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 61
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 273
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 197
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 206
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    return-void
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 667
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 214
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 467
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 361
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 230
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    return-void
.end method

.method public getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "index"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 706
    return-void
.end method

.method public getPhoneBookStorageInfo(ILandroid/os/Message;)V
    .locals 0
    .param p1, "fileid"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 702
    return-void
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 730
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 463
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 165
    return-void
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 651
    return-void
.end method

.method public getSIMLockInfo(IILandroid/os/Message;)V
    .locals 0
    .param p1, "num_lock_type"    # I
    .param p2, "lock_type"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 714
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 218
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 475
    return-void
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 698
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 593
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 222
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 455
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 0
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 141
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 149
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 145
    return-void
.end method

.method public holdCall(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 789
    return-void
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 616
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "result"    # Landroid/os/Message;

    .prologue
    .line 327
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "aid"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    .prologue
    .line 331
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 613
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 624
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 621
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 426
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 430
    return-void
.end method

.method public modifyCallConfirm(Lcom/android/internal/telephony/CallModify;Landroid/os/Message;)V
    .locals 0
    .param p1, "callModify"    # Lcom/android/internal/telephony/CallModify;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 676
    return-void
.end method

.method public modifyCallInitiate(Lcom/android/internal/telephony/CallModify;Landroid/os/Message;)V
    .locals 0
    .param p1, "callModify"    # Lcom/android/internal/telephony/CallModify;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 672
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 0
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 627
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 0
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 636
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 0
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 633
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 630
    return-void
.end method

.method public pullLceData(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 663
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 438
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 386
    return-void
.end method

.method public queryCNAP(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 682
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 382
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 0
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 343
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 520
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 395
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 400
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 532
    return-void
.end method

.method public refreshNitzTime(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 838
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 183
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 483
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 487
    return-void
.end method

.method public requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "authContext"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 589
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 585
    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 643
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 422
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 247
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 540
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 259
    return-void
.end method

.method public sendCdmaSmsMore([BLandroid/os/Message;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 783
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 0
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 234
    return-void
.end method

.method public sendEncodedUSSD([BIILandroid/os/Message;)V
    .locals 0
    .param p1, "ussdString"    # [B
    .param p2, "length"    # I
    .param p3, "dcsCode"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 739
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 446
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 450
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 269
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 264
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 251
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 255
    return-void
.end method

.method public sendSMSmore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 779
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 442
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 414
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 0
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 169
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 434
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 0
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 339
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 370
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "startTime"    # Ljava/lang/String;
    .param p7, "endTime"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 376
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 348
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 552
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 548
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 524
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaSubscription"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 528
    return-void
.end method

.method public setCellInfoListRate(ILandroid/os/Message;)V
    .locals 0
    .param p1, "rateInMillis"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 601
    return-void
.end method

.method public setDataProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;Landroid/os/Message;)V
    .locals 0
    .param p1, "dps"    # [Lcom/android/internal/telephony/dataconnection/DataProfile;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 610
    return-void
.end method

.method public setDisable2g(ILandroid/os/Message;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 832
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 405
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 410
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 503
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 499
    return-void
.end method

.method public setICBarring(Ljava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "barringState"    # I
    .param p3, "iCBNumber"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 815
    return-void
.end method

.method public setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "authType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 606
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 471
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enableMute"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 210
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 352
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 357
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 57
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .param p1, "phoneType"    # I

    .prologue
    .line 516
    return-void
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "operator"    # Ljava/lang/String;
    .param p3, "plmn"    # Ljava/lang/String;
    .param p4, "gsmAct"    # I
    .param p5, "gsmCompactAct"    # I
    .param p6, "utranAct"    # I
    .param p7, "mode"    # I
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 735
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 459
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 161
    return-void
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 0
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 647
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 303
    return-void
.end method

.method public setSimInitEvent(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 718
    return-void
.end method

.method public setSimPower(ILandroid/os/Message;)V
    .locals 0
    .param p1, "on"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 773
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 479
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 307
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 536
    return-void
.end method

.method public setTransmitPower(ILandroid/os/Message;)V
    .locals 0
    .param p1, "powerLevel"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 722
    return-void
.end method

.method public setVoiceDomainPref(ILandroid/os/Message;)V
    .locals 0
    .param p1, "pref"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 795
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    .prologue
    .line 295
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 0
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 238
    return-void
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .locals 0
    .param p1, "reportIntervalMs"    # I
    .param p2, "pullMode"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 655
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 242
    return-void
.end method

.method public stopLceService(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 659
    return-void
.end method

.method public supplyIccPerso(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "passwd"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 765
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 65
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 73
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 568
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 560
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 69
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 77
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 572
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 564
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "lockState"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 694
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 94
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 153
    return-void
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 821
    return-void
.end method

.method public uiccGbaAuthenticateBootstrap(Ljava/lang/String;[B[BLandroid/os/Message;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "rand"    # [B
    .param p3, "autn"    # [B
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 802
    return-void
.end method

.method public uiccGbaAuthenticateNaf(Ljava/lang/String;[B[BLandroid/os/Message;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "nafId"    # [B
    .param p3, "impi"    # [B
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 806
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 289
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 285
    return-void
.end method
