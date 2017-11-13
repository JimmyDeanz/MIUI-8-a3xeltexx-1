.class public final Lcom/android/internal/telephony/cdma/CdmaCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "CdmaCallTracker.java"


# static fields
.field private static final DBG_POLL:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "CdmaCallTracker"

.field static final MAX_CONNECTIONS:I

.field static final MAX_CONNECTIONS_PER_CALL:I

.field private static final REPEAT_POLLING:Z = false

.field static final SC_GLOBALDEV_CF_CON:Ljava/lang/String; = "*71"

.field static final SC_GLOBALDEV_CF_DEAC:Ljava/lang/String; = "*73"

.field static final SC_GLOBALDEV_CF_UNCON:Ljava/lang/String; = "*72"


# instance fields
.field connWaitActive:[Ljava/lang/Boolean;

.field private m3WayCallFlashDelay:I

.field mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field mCallWaitingRegistrants:Landroid/os/RegistrantList;

.field mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

.field mDesiredMute:Z

.field mDroppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaConnection;",
            ">;"
        }
    .end annotation
.end field

.field mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field mHangupPendingMO:Z

.field private mIsEcmTimerCanceled:Z

.field mIsInEmergencyCall:Z

.field mPendingCallClirMode:I

.field mPendingCallInEcm:Z

.field mPendingCallInEcmCount:I

.field mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

.field mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    sput v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->MAX_CONNECTIONS:I

    const/4 v0, 0x5

    sput v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->MAX_CONNECTIONS_PER_CALL:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sput v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->MAX_CONNECTIONS:I

    sput v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->MAX_CONNECTIONS_PER_CALL:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    sput v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->MAX_CONNECTIONS:I

    sput v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->MAX_CONNECTIONS_PER_CALL:I

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    sget v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->MAX_CONNECTIONS:I

    new-array v1, v1, [Lcom/android/internal/telephony/cdma/CdmaConnection;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    sget v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->MAX_CONNECTIONS:I

    new-array v1, v1, [Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    new-instance v1, Ljava/util/ArrayList;

    sget v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->MAX_CONNECTIONS:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcm:Z

    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcmCount:I

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDesiredMute:Z

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->m3WayCallFlashDelay:I

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xf

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x66

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x68

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCsFallback(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xcf

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForHysteresisDCN(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->MAX_CONNECTIONS:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkAndEnableDataCallAfterEmergencyCallDropped()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    if-eqz v1, :cond_0

    const-string v1, "ril.cdma.ine911"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    const-string v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "inEcm":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndEnableDataCallAfterEmergencyCallDropped,inEcm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInternalDataEnabled(Z)Z

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyEmergencyCallRegistrants(Z)V

    .end local v0    # "inEcm":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p2, "i"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "newRinging":Lcom/android/internal/telephony/Connection;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v0, v1, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify new ring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "CdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phantom call appeared "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onStartedHolding()V

    goto :goto_0
.end method

.method private dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getCdmaCwActiveConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, "actConn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v0, :cond_0

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwActive:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwHolding:Z

    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    const-string v2, "radiotech"

    const-string v3, "cdma"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/CallDetails;->setExtraValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->m3WayCallFlashDelay:I

    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->m3WayCallFlashDelay:I

    const-string v1, "dialThreeWay"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connectionDump(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->m3WayCallFlashDelay:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v2, ""

    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local v0    # "actConn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :goto_1
    return-object v1

    .restart local v0    # "actConn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .end local v0    # "actConn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private disableDataCallInEmergencyCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mSkipDisableDataConnection:Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "disableDataCallInEmergencyCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setIsInEmergencyCall()V

    :cond_0
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .local v1, "connCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->fakeHoldBeforeDial()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    return-void
.end method

.method private flashAndSetGenericTrue()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    return-void
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .param p1, "what"    # I

    .prologue
    sparse-switch p1, :sswitch_data_0

    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x69 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3
    .param p1, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    return-void
.end method

.method private handleEcmTimer(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleTimerInEmergencyCallbackMode(I)V

    packed-switch p1, :pswitch_data_0

    const-string v0, "CdmaCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEcmTimer, unsupported action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleModifyCallRequest(Lcom/android/internal/telephony/CallModify;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "cm"    # Lcom/android/internal/telephony/CallModify;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const-string v2, "CdmaCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCallModifyRequest("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget v2, p1, Lcom/android/internal/telephony/CallModify;->call_index:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getConnectionByIndex(I)Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-result-object v0

    .local v0, "c":Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onReceivedModifyCall(Lcom/android/internal/telephony/CallModify;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2, v0, p2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyModifyCallRequest(Lcom/android/internal/telephony/Connection;Ljava/lang/Throwable;)V

    .end local v0    # "c":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "c":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->rejectConnectionTypeChange()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "CdmaCallTracker"

    const-string v3, "Exception while rejecting ConnectionTypeChange"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    const-string v2, "CdmaCallTracker"

    const-string v3, "Null Call Modify request "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    return-void
.end method

.method private notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3
    .param p1, "obj"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingOperations:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNeedsPoll:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "obtainCompleteMessage: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNeedsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private operationComplete()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingOperations:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operationComplete: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNeedsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingOperations:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNeedsPoll:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingOperations:I

    if-gez v0, :cond_0

    const-string v0, "CdmaCallTracker"

    const-string v1, "CdmaCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingOperations:I

    goto :goto_0
.end method

.method private updatePhoneState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .local v1, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update phone state, old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPhoneStateChanged()V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->callEndCleanupHandOverCallIfAny()V

    :cond_5
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method


# virtual methods
.method acceptCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getCallType(Lcom/android/internal/telephony/Call;)I

    move-result v1

    .local v1, "ringingCallType":I
    const/4 v0, 0x0

    .local v0, "acceptCallType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const-string v2, "CdmaCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No videoState value. ringingCallType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", acceptCallType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->acceptCall(I)V

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method acceptCall(I)V
    .locals 9
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/android/internal/telephony/CallDetails;->videoStateToCallType(I)I

    move-result v2

    .local v2, "callType":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_1

    const-string v5, "phone"

    const-string v6, "acceptCall: incoming..."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(ILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaCall;->isImsCall()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mAcceptingWaitingCall:Z

    if-eqz v5, :cond_2

    const-string v5, "CdmaCallTracker"

    const-string v6, "Do NOT accept a waiting call"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getCallType(Lcom/android/internal/telephony/Call;)I

    move-result v5

    if-eq v5, v2, :cond_3

    const-string v5, "CdmaCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "acceptCall(): ringing call "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getCallType(Lcom/android/internal/telephony/Call;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " accept as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v4, v5

    check-cast v4, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v4, "ringingConn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    new-instance v0, Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-direct {v0, v2, v5, v8}, Lcom/android/internal/telephony/CallDetails;-><init>(II[Ljava/lang/String;)V

    .local v0, "callDetails":Lcom/android/internal/telephony/CallDetails;
    new-instance v1, Lcom/android/internal/telephony/CallModify;

    iget v5, v4, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v1, v0, v5}, Lcom/android/internal/telephony/CallModify;-><init>(Lcom/android/internal/telephony/CallDetails;I)V

    .local v1, "callModify":Lcom/android/internal/telephony/CallModify;
    invoke-virtual {p0, v8, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->modifyCallInitiate(Landroid/os/Message;Lcom/android/internal/telephony/CallModify;)V

    .end local v0    # "callDetails":Lcom/android/internal/telephony/CallDetails;
    .end local v1    # "callModify":Lcom/android/internal/telephony/CallModify;
    .end local v4    # "ringingConn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mAcceptingWaitingCall:Z

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v3, v5

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v3, "cwConn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    goto/16 :goto_0

    .end local v3    # "cwConn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_5
    new-instance v5, Lcom/android/internal/telephony/CallStateException;

    const-string v6, "phone not ringing"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method canConference()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canDial()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .local v2, "serviceState":I
    const-string v3, "ro.telephony.disable-call"

    const-string v6, "false"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "disableCall":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isWfcRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne v2, v9, :cond_0

    const-string v3, "canDial - Use DataRegState for ePDG"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    :cond_0
    if-eq v2, v9, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    move v1, v4

    .local v1, "ret":Z
    :goto_0
    if-nez v1, :cond_2

    const-string v6, "canDial is false\n((serviceState=%d) != ServiceState.STATE_POWER_OFF)::=%s\n&& pendingMO == null::=%s\n&& !ringingCall.isRinging()::=%s\n&& !disableCall.equals(\"true\")::=%s\n&& (!foregroundCall.getState().isAlive()::=%s\n   || foregroundCall.getState() == CdmaCall.State.ACTIVE::=%s\n   ||!backgroundCall.getState().isAlive())::=%s)"

    const/16 v3, 0x8

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v5

    if-eq v2, v9, :cond_5

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v4

    const/4 v8, 0x2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v3, :cond_6

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v9

    const/4 v8, 0x4

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v4

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v8, 0x5

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v4

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v8, 0x6

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v9, :cond_a

    move v3, v4

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v8, 0x7

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v4

    :goto_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_TODDLER_MODE"

    invoke-virtual {v3, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v6, "CdmaCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toddler mode : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "toddler_mode_switch"

    invoke-static {v3, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_c

    move v3, v4

    :goto_8
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "toddler_mode_switch"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    const/4 v1, 0x0

    :cond_3
    return v1

    .end local v1    # "ret":Z
    :cond_4
    move v1, v5

    goto/16 :goto_0

    .restart local v1    # "ret":Z
    :cond_5
    move v3, v5

    goto/16 :goto_1

    :cond_6
    move v3, v5

    goto/16 :goto_2

    :cond_7
    move v3, v5

    goto/16 :goto_3

    :cond_8
    move v3, v5

    goto/16 :goto_4

    :cond_9
    move v3, v5

    goto/16 :goto_5

    :cond_a
    move v3, v5

    goto :goto_6

    :cond_b
    move v3, v5

    goto :goto_7

    :cond_c
    move v3, v5

    goto :goto_8
.end method

.method canTransfer()Z
    .locals 2

    .prologue
    const-string v0, "CdmaCallTracker"

    const-string v1, "canTransfer: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method clearDisconnected()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->internalClearDisconnected()V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    return-void
.end method

.method conference()V
    .locals 3

    .prologue
    const-string v1, "CdmaCallTracker"

    const-string v2, "Conference"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isImsCall()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->conference(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, "holdConn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwActive:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwHolding:Z

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->flashAndSetGenericTrue()V

    goto :goto_0
.end method

.method public connectionDump(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionDump: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- Ringing Call("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->connectionDump()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- Foreground Call("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->connectionDump()V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- Background Call("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->connectionDump()V

    :cond_3
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/CallDetails;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;ILcom/android/internal/telephony/CallDetails;)Lcom/android/internal/telephony/Connection;
    .locals 17
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lcom/android/internal/telephony/CallDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    if-nez p3, :cond_0

    new-instance p3, Lcom/android/internal/telephony/CallDetails;

    .end local p3    # "callDetails":Lcom/android/internal/telephony/CallDetails;
    invoke-direct/range {p3 .. p3}, Lcom/android/internal/telephony/CallDetails;-><init>()V

    .restart local p3    # "callDetails":Lcom/android/internal/telephony/CallDetails;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->canDial()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .local v16, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v14, p1

    .local v14, "origNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "operatorIsoContry":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v15

    .local v15, "simIsoContry":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v10, 0x1

    .local v10, "internationalRoaming":Z
    :goto_0
    if-eqz v10, :cond_2

    const-string v2, "us"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v10, :cond_8

    const-string v2, "vi"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v10, 0x1

    :cond_2
    :goto_1
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    const-string v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "inEcm":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .local v12, "isPhoneInEcmMode":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    .local v11, "isEmergencyCall":Z
    if-eqz v12, :cond_4

    if-eqz v11, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->isImsCall()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->fakeHoldForegroundBeforeDial()V

    :cond_5
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "*71"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "*72"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "*73"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_6
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v9    # "inEcm":Ljava/lang/String;
    .end local v10    # "internationalRoaming":Z
    .end local v11    # "isEmergencyCall":Z
    .end local v12    # "isPhoneInEcmMode":Z
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0

    .restart local v10    # "internationalRoaming":Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_9
    const-string v2, "vi"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v10, :cond_a

    const-string v2, "us"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v10, 0x1

    :goto_2
    goto/16 :goto_1

    :cond_a
    const/4 v10, 0x0

    goto :goto_2

    .restart local v9    # "inEcm":Ljava/lang/String;
    .restart local v11    # "isEmergencyCall":Z
    .restart local v12    # "isPhoneInEcmMode":Z
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    :goto_3
    return-object v2

    :cond_c
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v5, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/CallDetails;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHangupPendingMO:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_f

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    const/4 v3, 0x7

    iput v3, v2, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNumberConverted:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setConverted(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNumberConverted:Z

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto :goto_3

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    if-eqz v12, :cond_10

    if-eqz v12, :cond_18

    if-eqz v11, :cond_18

    :cond_10
    const/4 v8, 0x0

    .local v8, "emergencyCat":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategory(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_5
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasVolteCall:Z

    :cond_11
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_12

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasVideoCall:Z

    :cond_12
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LGT"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    move/from16 v0, p2

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_14
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConvertPlusPrefixNumberToMnoCode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->processHideCallerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    move/from16 v0, p2

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_4

    :cond_15
    if-eqz v8, :cond_17

    const-string v2, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getVoltePolicy()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sprvowifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    move/from16 v0, p2

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v7

    move/from16 v4, p2

    move-object/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Lcom/android/internal/telephony/CallDetails;Landroid/os/Message;)V

    goto/16 :goto_4

    .end local v8    # "emergencyCat":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->exitEmergencyCallbackMode()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v3, 0xe

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallClirMode:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcm:Z

    goto/16 :goto_4
.end method

.method public dispose()V
    .locals 6

    .prologue
    const-string v4, "CdmaCallTracker"

    const-string v5, "CdmaCallTracker dispose"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallWaitingInfo(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForModifyCall(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCsFallback(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForHysteresisDCN(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, "arr$":[Lcom/android/internal/telephony/cdma/CdmaConnection;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .local v1, "cdmaConnection":Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->dispose()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "cdmaConnection":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "CdmaCallTracker extends:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "droppedDuringPoll: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const-string v1, " mConnections[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v3, v3, v0

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mVoiceCallEndedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mVoiceCallStartedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCallWaitingRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "droppedDuringPoll: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const-string v1, " mDroppedDuringPoll[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRingingCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mForegroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mBackgroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mHangupPendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHangupPendingMO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPendingCallInEcm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIsInEmergencyCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPhone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDesiredMute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDesiredMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPendingCallClirMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallClirMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIsEcmTimerCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method explicitCallTransfer()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const-string v0, "CdmaCallTracker"

    const-string v1, "CdmaCallTracker finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getConnectionByIndex(I)Lcom/android/internal/telephony/cdma/CdmaConnection;
    .locals 8
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, "arr$":[Lcom/android/internal/telephony/cdma/CdmaConnection;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .local v1, "c":Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, p1, :cond_0

    .end local v1    # "c":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :goto_1
    return-object v1

    .restart local v1    # "c":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :catch_0
    move-exception v2

    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v5, "CdmaCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " absent connection for index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "c":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getConnectionByIndex(Lcom/android/internal/telephony/cdma/CdmaCall;I)Lcom/android/internal/telephony/cdma/CdmaConnection;
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/cdma/CdmaCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .end local v0    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :goto_1
    return-object v0

    .restart local v0    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getMute()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDesiredMute:Z

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v3, :cond_0

    const-string v3, "CdmaCallTracker"

    const-string v4, "Ignoring events received on inactive CdmaPhone"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    const-string v3, "CdmaCallTracker"

    const-string v4, "Do NOT ignore LAST_CALL_FAIL_CAUSE request"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "unexpected event not handled"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_0
    const-string v3, "CdmaCallTracker"

    const-string v4, "Event EVENT_POLL_CALLS_RESULT Received"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .local v2, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1

    const-string v3, "handle EVENT_POLL_CALL_RESULT: set needsPoll=F"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNeedsPoll:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    .end local v2    # "ar":Landroid/os/AsyncResult;
    :cond_1
    :goto_0
    return-void

    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    goto :goto_0

    :sswitch_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mAcceptingWaitingCall:Z

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .end local v2    # "ar":Landroid/os/AsyncResult;
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mAcceptingWaitingCall:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    goto :goto_0

    :sswitch_4
    const/16 v21, 0x0

    .local v21, "vendorCause":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2    # "ar":Landroid/os/AsyncResult;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    const/16 v17, 0x0

    .local v17, "isDroppedCall":Z
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    const/16 v12, 0x10

    .local v12, "causeCode":I
    const-string v3, "CdmaCallTracker"

    const-string v4, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CdmaCallTracker"

    const-string v4, "EVENT_GET_LAST_CALL_FAIL_CAUSE - SUCCESS"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "success"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    :goto_1
    const/16 v16, 0x0

    .local v16, "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    .local v19, "s":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v13, "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDisconnectCause()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    const/16 v3, 0x44d

    if-eq v12, v3, :cond_6

    const-string v3, "CdmaCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GET_LAST_CALL_FAIL_CAUSE - MISSED_CALL - causeCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "missed"

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCreateTime()J

    move-result-wide v6

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDurationMillis()J

    move-result-wide v8

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v10

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    :cond_3
    :goto_3
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDisconnectCause()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/16 v3, 0x44d

    if-eq v12, v3, :cond_4

    const-string v3, "Convert call fail cause to INCOMING_MISSED for incoming missed call"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    const/16 v12, 0x44e

    :cond_4
    move-object/from16 v0, v21

    invoke-virtual {v13, v12, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onRemoteDisconnect(ILjava/lang/String;)V

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .end local v12    # "causeCode":I
    .end local v13    # "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v16    # "i":I
    .end local v19    # "s":I
    :cond_5
    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/LastCallFailCause;

    .local v14, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v12, v14, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .restart local v12    # "causeCode":I
    iget-object v0, v14, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v17, 0x1

    goto/16 :goto_1

    .end local v14    # "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    .restart local v13    # "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    .restart local v16    # "i":I
    .restart local v19    # "s":I
    :cond_6
    if-eqz v17, :cond_7

    const-string v3, "CdmaCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GET_LAST_CALL_FAIL_CAUSE - CALL_DROP - causeCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "dropped"

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCreateTime()J

    move-result-wide v6

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDurationMillis()J

    move-result-wide v8

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v10

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    goto :goto_3

    :cond_7
    const-string v3, "CdmaCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GET_LAST_CALL_FAIL_CAUSE - SUCCESS - causeCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getConnectTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getOrigDialString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v4, "success"

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCreateTime()J

    move-result-wide v6

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDurationMillis()J

    move-result-wide v8

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v10

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    const-string v3, "CdmaCallTracker"

    const-string v4, "isEmergencyCall false 02!!!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_8
    const-string v3, "CdmaCallTracker"

    const-string v4, "conn.getConnectTime() != 0 -> isEmergencyCall true 02!!!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v13    # "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "causeCode":I
    .end local v16    # "i":I
    .end local v17    # "isDroppedCall":Z
    .end local v19    # "s":I
    .end local v21    # "vendorCause":Ljava/lang/String;
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleRadioAvailable()V

    goto/16 :goto_0

    :sswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "CdmaCallTracker"

    const-string v4, "Event EVENT_EXIT_ECM_RESPONSE_CDMA Received"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcm:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallClirMode:I

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcm:Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    const-string v3, "CdmaCallTracker"

    const-string v4, "Event EVENT_CALL_WAITING_INFO_CDMA Received"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v15, v3

    check-cast v15, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v15, "holdConn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v15, :cond_c

    const/4 v3, 0x1

    iput-boolean v3, v15, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwActive:Z

    const/4 v3, 0x0

    iput-boolean v3, v15, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwHolding:Z

    :cond_c
    const-string v3, "EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connectionDump(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "holdConn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_d

    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->m3WayCallFlashDelay:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    const-string v3, "CdmaCallTracker"

    const-string v4, "exception happened on Blank Flash for 3-way call"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/CallModify;

    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleModifyCallRequest(Lcom/android/internal/telephony/CallModify;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCsFallback:I

    const-string v3, "CdmaCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCsFallback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCsFallback:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsInEmergencyCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSkipDisableDataConnection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mSkipDisableDataConnection:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mSkipDisableDataConnection:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInternalDataEnabled(Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyEmergencyCallRegistrants(Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mSkipDisableDataConnection:Z

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v4, "csFallback"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    const-string v3, "CdmaCallTracker"

    const-string v4, "Event EVENT_HYSTERESIS_DCN Received"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    .local v11, "canSend":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v20

    .local v20, "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    if-eqz v20, :cond_1

    const-string v3, "CdmaCallTracker"

    const-string v4, "Send DAN in CdmaCallTracker - Start"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/LegacyIms;->dcnAvailability()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/LegacyIms;->isHybridVolte()Z

    move-result v18

    .local v18, "isHybrid":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/LegacyIms;->clearVolteRegistered()V

    const-string v3, "CdmaCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try to send domain change notification (canSend: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isHybrid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendDomainChangeSms(B)V

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/LegacyIms;->requestInitialImsRegistration()V

    goto/16 :goto_0

    .end local v18    # "isHybrid":Z
    :cond_f
    const-string v3, "CdmaCallTracker"

    const-string v4, "imsphone is not exist"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "canSend":Z
    .end local v20    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :sswitch_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SsFailNotify"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .end local v2    # "ar":Landroid/os/AsyncResult;
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_1
        0x5 -> :sswitch_4
        0x8 -> :sswitch_2
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_3
        0xc -> :sswitch_f
        0xd -> :sswitch_f
        0xe -> :sswitch_8
        0xf -> :sswitch_9
        0x10 -> :sswitch_a
        0x14 -> :sswitch_b
        0x66 -> :sswitch_c
        0x68 -> :sswitch_d
        0x69 -> :sswitch_3
        0xcf -> :sswitch_e
    .end sparse-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 49
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/util/List;

    .local v45, "polledCalls":Ljava/util/List;
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getOnEcbModeExitResponse()Landroid/os/Registrant;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcm:Z

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcmCount:I

    const/4 v6, 0x5

    if-ge v5, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getOnEcbModeExitResponse()Landroid/os/Registrant;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getOnEcbModeExitResponse()Landroid/os/Registrant;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v5

    iget v5, v5, Landroid/os/Message;->what:I

    const/16 v6, 0xe

    if-ne v5, v6, :cond_3

    const-string v5, "Do NOT update call list there is pending call in ECM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsAfterDelay(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcmCount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcmCount:I

    .end local v45    # "polledCalls":Ljava/util/List;
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .restart local v45    # "polledCalls":Ljava/util/List;
    goto :goto_0

    .end local v45    # "polledCalls":Ljava/util/List;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsAfterDelay()V

    goto :goto_1

    .restart local v45    # "polledCalls":Ljava/util/List;
    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcmCount:I

    :cond_4
    const/16 v42, 0x0

    .local v42, "newRinging":Lcom/android/internal/telephony/Connection;
    const/16 v43, 0x0

    .local v43, "newUnknown":Lcom/android/internal/telephony/Connection;
    const/16 v30, 0x0

    .local v30, "hasNonHangupStateChanged":Z
    const/16 v28, 0x0

    .local v28, "hasAnyCallDisconnected":Z
    const/16 v40, 0x0

    .local v40, "needsPollDelay":Z
    const/16 v47, 0x0

    .local v47, "unknownConnectionAppeared":Z
    const/16 v44, 0x1

    .local v44, "noConnectionExists":Z
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCsFallback:I

    const/16 v32, 0x0

    .local v32, "hasVolteCall":Z
    const/16 v31, 0x0

    .local v31, "hasVideoCall":Z
    const/16 v27, 0x0

    .local v27, "hasActiveVideoCall":Z
    const/16 v29, 0x0

    .local v29, "hasEpdgCall":Z
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mAcceptingWaitingCall:Z

    const/16 v34, 0x0

    .local v34, "i":I
    const/16 v22, 0x0

    .local v22, "curDC":I
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v24

    .local v24, "dcSize":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    array-length v5, v5

    move/from16 v0, v34

    if-ge v0, v5, :cond_2b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v20, v5, v34

    .local v20, "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    const/16 v23, 0x0

    .local v23, "dc":Lcom/android/internal/telephony/DriverCall;
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    move-object/from16 v0, v45

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "dc":Lcom/android/internal/telephony/DriverCall;
    check-cast v23, Lcom/android/internal/telephony/DriverCall;

    .restart local v23    # "dc":Lcom/android/internal/telephony/DriverCall;
    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v6, v34, 0x1

    if-ne v5, v6, :cond_9

    add-int/lit8 v22, v22, 0x1

    :cond_5
    :goto_3
    if-nez v20, :cond_6

    if-eqz v23, :cond_7

    :cond_6
    const/16 v44, 0x0

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "poll: conn[i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    if-nez v20, :cond_13

    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "poll: pendingMO="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    aput-object v6, v5, v34

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move/from16 v0, v34

    iput v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHangupPendingMO:Z

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHangupPendingMO:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    :cond_8
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "poll: hangupPendingMO, hangup conn "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v5, v5, v34

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v25

    .local v25, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v5, "CdmaCallTracker"

    const-string v6, "unexpected error on hangup"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v25    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_3

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pendingMo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v34

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/cdma/CdmaCallTracker;I)V

    aput-object v6, v5, v34

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;

    move-result-object v33

    .local v33, "hoConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v33, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v5, v5, v34

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_b

    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v5, v5, v34

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v6, v6, v34

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    .end local v33    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_c
    :goto_4
    const/16 v30, 0x1

    :cond_d
    :goto_5
    if-eqz v23, :cond_10

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v5, :cond_10

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v5, v5, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e

    const/16 v32, 0x1

    :cond_e
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v5, v5, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_f

    const/16 v31, 0x1

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v6, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v5, v6, :cond_f

    const/16 v27, 0x1

    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v5, v5, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_10

    const-string v5, "epdg"

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    const-string v7, "radiotech"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/16 v29, 0x1

    :cond_10
    if-eqz v20, :cond_11

    if-eqz v23, :cond_11

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v5, :cond_11

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    const-string v6, "audio_codec"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getAudioQualityFromExtraValue(Ljava/lang/String;)I

    move-result v41

    .local v41, "newAudioQuality":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentAudioQuality : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAudioQuality()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newAudioQuality : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAudioQuality()I

    move-result v5

    move/from16 v0, v41

    if-eq v5, v0, :cond_11

    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setAudioQuality(I)V

    .end local v41    # "newAudioQuality":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v5, v5, v34

    if-nez v5, :cond_25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v34

    :goto_6
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_2

    .restart local v33    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v42

    if-nez v42, :cond_c

    const/16 v47, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v43, v5, v34

    goto/16 :goto_4

    .end local v33    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_13
    if-eqz v20, :cond_18

    if-nez v23, :cond_18

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaCall;->isImsCall()Z

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    if-eqz v5, :cond_14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    const/4 v6, 0x0

    aput-object v6, v5, v34

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    .local v21, "count":I
    const/16 v39, 0x0

    .local v39, "n":I
    :goto_8
    move/from16 v0, v39

    move/from16 v1, v21

    if-ge v0, v1, :cond_16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adding fgCall cn "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to droppedDuringPoll"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v19, "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v39, v39, 0x1

    goto :goto_8

    .end local v19    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v39, 0x0

    :goto_9
    move/from16 v0, v39

    move/from16 v1, v21

    if-ge v0, v1, :cond_17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adding rgCall cn "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to droppedDuringPoll"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .restart local v19    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v39, v39, 0x1

    goto :goto_9

    .end local v19    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    goto/16 :goto_7

    .end local v21    # "count":I
    .end local v39    # "n":I
    :cond_18
    if-eqz v20, :cond_d

    if-eqz v23, :cond_d

    const/4 v15, 0x0

    .local v15, "callCollisionCase":I
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v5

    move-object/from16 v0, v23

    iget-boolean v6, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-eq v5, v6, :cond_1c

    move-object/from16 v0, v23

    iget-boolean v5, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1b

    const/4 v15, 0x1

    :cond_19
    :goto_a
    if-lez v15, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call collision case: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v5, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v5

    if-eqz v5, :cond_20

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pendingMO: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    aput-object v6, v5, v34

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move/from16 v0, v34

    iput v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHangupPendingMO:Z

    if-eqz v5, :cond_1a

    const-string v5, "mHangupPendingMO is true in call collision case"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHangupPendingMO:Z

    :cond_1a
    :goto_b
    const/16 v30, 0x1

    goto/16 :goto_5

    :cond_1b
    const-string v5, "CdmaCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in RIL, Phantom call appeared "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCallCollisionCase(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v15, 0x2

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCallCollisionCase(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v15, 0x3

    goto/16 :goto_a

    :cond_1d
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v18

    .local v18, "changed":Z
    if-nez v30, :cond_1e

    if-eqz v18, :cond_1f

    :cond_1e
    const/16 v30, 0x1

    :goto_c
    goto/16 :goto_a

    :cond_1f
    const/16 v30, 0x0

    goto :goto_c

    .end local v18    # "changed":Z
    :cond_20
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v6, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v5, v6, :cond_21

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v6, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v5, v6, :cond_22

    :cond_21
    const-string v5, "Clean up disconnected connection"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v34

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/cdma/CdmaCallTracker;I)V

    aput-object v6, v5, v34

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;

    move-result-object v33

    .restart local v33    # "hoConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v33, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v5, v5, v34

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_23

    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v5, v5, v34

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v6, v6, v34

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_b

    :cond_24
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v42

    if-nez v42, :cond_1a

    const/16 v47, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v43, v5, v34

    goto/16 :goto_b

    .end local v15    # "callCollisionCase":I
    .end local v33    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v5, v5, v34

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v46

    .local v46, "state":Lcom/android/internal/telephony/Call$State;
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v46

    if-eq v0, v5, :cond_26

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v46

    if-eq v0, v5, :cond_26

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v46

    if-eq v0, v5, :cond_26

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v46

    if-ne v0, v5, :cond_28

    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v5, v5, v34

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getOrigDialString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    const-string v5, "Emergency call"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v34

    goto/16 :goto_6

    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v34

    goto/16 :goto_6

    :cond_28
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v46

    if-ne v0, v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    aget-object v5, v5, v34

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADD CALL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v5, v5, v34

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v5

    if-eqz v5, :cond_29

    const-string v5, "INCOMING"

    :goto_d
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v5, v5, v34

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->addNumberOfCalls(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v34

    goto/16 :goto_6

    :cond_29
    const-string v5, "OUTGOING"

    goto :goto_d

    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v34

    goto/16 :goto_6

    .end local v20    # "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v23    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v46    # "state":Lcom/android/internal/telephony/Call$State;
    :cond_2b
    if-eqz v44, :cond_2c

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasVolteCall:Z

    move/from16 v0, v32

    if-ne v5, v0, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasVideoCall:Z

    move/from16 v0, v31

    if-ne v5, v0, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasActiveVideoCall:Z

    move/from16 v0, v27

    if-ne v5, v0, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasEpdgCall:Z

    move/from16 v0, v29

    if-eq v5, v0, :cond_2e

    :cond_2d
    const-string v5, "CdmaCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VolteCall:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasVolteCall:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", VideoCall: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasVideoCall:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ActiveVideoCall: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasActiveVideoCall:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", EpdgCall: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasEpdgCall:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasVolteCall:Z

    move/from16 v0, v32

    if-eq v5, v0, :cond_2f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasVolteCall:Z

    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasVideoCall:Z

    move/from16 v0, v31

    if-eq v5, v0, :cond_30

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasVideoCall:Z

    :cond_30
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasActiveVideoCall:Z

    move/from16 v0, v27

    if-eq v5, v0, :cond_31

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasActiveVideoCall:Z

    :cond_31
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasEpdgCall:Z

    move/from16 v0, v29

    if-eq v5, v0, :cond_32

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHasEpdgCall:Z

    :cond_32
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v5, :cond_35

    const-string v5, "CdmaCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pending MO dropped before poll fg state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_CdmalteTelephonyCommon"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHangupPendingMO:Z

    if-eqz v5, :cond_33

    const-string v5, "CdmaCallTracker"

    const-string v6, "User has already asked to hangup pendingMO call"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    if-eqz v5, :cond_33

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    :cond_33
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHangupPendingMO:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcm:Z

    if-eqz v5, :cond_34

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcm:Z

    :cond_34
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    :cond_35
    if-eqz v42, :cond_36

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    :cond_36
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v34, v5, -0x1

    :goto_e
    if-ltz v34, :cond_43

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .restart local v20    # "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    const/16 v48, 0x0

    .local v48, "wasDisconnected":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_CallAnsweringMessage"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsInAnsweringMessage:Z

    move/from16 v36, v0

    .local v36, "isSetIncomingMissed":Z
    :goto_f
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getConnectTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_3e

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3c

    const/16 v17, 0x10

    .local v17, "cause":I
    const-string v6, "success"

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCreateTime()J

    move-result-wide v8

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDurationMillis()J

    move-result-wide v10

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v12

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    :cond_37
    :goto_10
    if-eqz v36, :cond_38

    const/16 v17, 0x1

    const-string v6, "missed"

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCreateTime()J

    move-result-wide v8

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDurationMillis()J

    move-result-wide v10

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v12

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    :cond_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missed/rejected call, conn.cause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting cause to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    const-string v5, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_3d

    const-string v5, "Send LAST_CALL_FAIL_CAUSE for incoming missed call"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setDisconnectCause(I)V

    .end local v17    # "cause":I
    :cond_39
    :goto_11
    if-eqz v48, :cond_3a

    if-eqz v47, :cond_3a

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_3a

    const/16 v47, 0x0

    const/16 v43, 0x0

    :cond_3a
    add-int/lit8 v34, v34, -0x1

    goto/16 :goto_e

    .end local v36    # "isSetIncomingMissed":Z
    :cond_3b
    const/16 v36, 0x0

    goto/16 :goto_f

    .restart local v36    # "isSetIncomingMissed":Z
    :cond_3c
    const/16 v17, 0x1

    .restart local v17    # "cause":I
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    const-string v6, "missed"

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCreateTime()J

    move-result-wide v8

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDurationMillis()J

    move-result-wide v10

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v12

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    goto/16 :goto_10

    :cond_3d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(I)Z

    move-result v5

    or-int v28, v28, v5

    const/16 v48, 0x1

    goto :goto_11

    .end local v17    # "cause":I
    :cond_3e
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3f

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_39

    :cond_3f
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_40

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getConnectTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_40

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getOrigDialString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    :cond_40
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_42

    :cond_41
    const-string v6, "success"

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCreateTime()J

    move-result-wide v8

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDurationMillis()J

    move-result-wide v10

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v12

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    :cond_42
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(I)Z

    move-result v5

    or-int v28, v28, v5

    const/16 v48, 0x1

    goto/16 :goto_11

    .end local v20    # "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v36    # "isSetIncomingMissed":Z
    .end local v48    # "wasDisconnected":Z
    :cond_43
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .local v37, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :goto_12
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/telephony/Connection;

    .restart local v33    # "hoConnection":Lcom/android/internal/telephony/Connection;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePollCalls - disconnect hoConn= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    check-cast v33, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .end local v33    # "hoConnection":Lcom/android/internal/telephony/Connection;
    const/4 v5, -0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    :cond_44
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_45

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    :cond_45
    if-eqz v40, :cond_46

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsAfterDelay()V

    :cond_46
    if-nez v42, :cond_47

    if-nez v30, :cond_47

    if-eqz v28, :cond_48

    :cond_47
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->internalClearDisconnected()V

    :cond_48
    const-string v5, "handlePollCalls"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connectionDump(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    if-eqz v47, :cond_49

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    :cond_49
    if-nez v30, :cond_4a

    if-nez v42, :cond_4a

    if-eqz v28, :cond_4b

    :cond_4a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    :cond_4b
    const/4 v5, 0x3

    new-array v4, v5, [Lcom/android/internal/telephony/Call;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    aput-object v6, v4, v5

    .local v4, "allCalls":[Lcom/android/internal/telephony/Call;
    const/16 v26, 0x0

    .local v26, "finalRadioTech":Ljava/lang/String;
    move-object v13, v4

    .local v13, "arr$":[Lcom/android/internal/telephony/Call;
    array-length v0, v13

    move/from16 v38, v0

    .local v38, "len$":I
    const/16 v35, 0x0

    .local v35, "i$":I
    :goto_13
    move/from16 v0, v35

    move/from16 v1, v38

    if-ge v0, v1, :cond_4e

    aget-object v14, v13, v35

    .local v14, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_4d

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getCallRadioTech()Ljava/lang/String;

    move-result-object v16

    .local v16, "callRadioTech":Ljava/lang/String;
    if-eqz v16, :cond_4d

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4d

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    if-eqz v26, :cond_4c

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallRadioTech collision (Before: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", After: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    :cond_4c
    move-object/from16 v26, v16

    .end local v16    # "callRadioTech":Ljava/lang/String;
    :cond_4d
    add-int/lit8 v35, v35, 0x1

    goto :goto_13

    .end local v14    # "call":Lcom/android/internal/telephony/Call;
    :cond_4e
    if-eqz v26, :cond_0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ril.cdma.lastcallrat"

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method hangup(Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 3
    .param p1, "call"    # Lcom/android/internal/telephony/cdma/CdmaCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_1

    const-string v0, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->onHangupLocal()V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "hangup all conns in background call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/cdma/CdmaCall;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupWaitingOrBackground()V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to CdmaCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/cdma/CdmaConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-eq v1, p0, :cond_0

    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to CdmaCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-ne p1, v1, :cond_2

    const-string v1, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHangupPendingMO:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_CdmalteTelephonyCommon"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Hangup pendingMO"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xc

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onLocalDisconnect()V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "CdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method hangupAllConnections(Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 7
    .param p1, "call"    # Lcom/android/internal/telephony/cdma/CdmaCall;

    .prologue
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v1    # "count":I
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "CdmaCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupConnectionByIndex caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method hangupConnectionByIndex(Lcom/android/internal/telephony/cdma/CdmaCall;I)V
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/cdma/CdmaCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "no gsm index found"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method hangupForegroundResumeBackground()V
    .locals 2

    .prologue
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    return-void
.end method

.method hangupWaitingOrBackground()V
    .locals 2

    .prologue
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    return-void
.end method

.method public hasCallOnLTE()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCsFallback:I

    if-nez v7, :cond_0

    const/4 v7, 0x3

    new-array v0, v7, [Lcom/android/internal/telephony/Call;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    aput-object v7, v0, v5

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    aput-object v7, v0, v6

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    aput-object v8, v0, v7

    .local v0, "allCalls":[Lcom/android/internal/telephony/Call;
    move-object v1, v0

    .local v1, "arr$":[Lcom/android/internal/telephony/Call;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .local v2, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VoLTE call: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    move v5, v6

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public hasPsAutomaticCallOnly()Z
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v9, v10, :cond_0

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCsFallback:I

    if-ne v9, v11, :cond_3

    :cond_0
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCsFallback:I

    if-ne v9, v11, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCsFallback: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCsFallback:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    :cond_1
    move v7, v8

    :cond_2
    :goto_0
    return v7

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    .local v7, "ret":Z
    if-eqz v7, :cond_2

    new-array v0, v13, [Lcom/android/internal/telephony/Call;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    aput-object v9, v0, v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    aput-object v9, v0, v11

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    aput-object v9, v0, v12

    .local v0, "allCalls":[Lcom/android/internal/telephony/Call;
    move-object v1, v0

    .local v1, "arr$":[Lcom/android/internal/telephony/Call;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v2, v1, v4

    .local v2, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v3

    .local v3, "details":Lcom/android/internal/telephony/CallDetails;
    const/4 v5, 0x0

    .local v5, "isPsAutomaticCall":Z
    if-eqz v3, :cond_5

    iget v9, v3, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-eq v9, v12, :cond_4

    iget v9, v3, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v9, v13, :cond_5

    :cond_4
    const/4 v5, 0x1

    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_6

    if-nez v5, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Non VoLTE call is active: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    move v7, v8

    goto :goto_0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method isInEmergencyCall()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "CdmaCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaCallTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method separate(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/cdma/CdmaConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-eq v1, p0, :cond_0

    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to CdmaCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "CdmaCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setIsInEmergencyCall()V
    .locals 6

    .prologue
    const/16 v5, 0x12

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "ril.cdma.ine911"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "LGT"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getVoltePolicy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "READY"

    const-string v1, "gsm.sim.state"

    const-string v2, "UNKNOWN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SIM is not ready"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mSkipDisableDataConnection:Z

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mSkipDisableDataConnection:Z

    if-eqz v0, :cond_5

    const-string v0, "Do not disable mobile data connection for VoLTE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    const-string v0, "PS RAT is LTE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mSkipDisableDataConnection:Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "PS is not registered"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mSkipDisableDataConnection:Z

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getVoltePolicy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vzwvowifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    if-ne v0, v5, :cond_1

    const-string v0, "PS RAT is IWLAN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mSkipDisableDataConnection:Z

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getVoltePolicy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getVoltePolicy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sprvowifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    if-ne v0, v5, :cond_6

    const-string v0, "PS RAT is IWLAN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mSkipDisableDataConnection:Z

    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mSkipDisableDataConnection:Z

    if-eqz v0, :cond_7

    const-string v0, "Do not disable mobile data connection for ePDG"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInternalDataEnabled(Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyEmergencyCallRegistrants(Z)V

    goto/16 :goto_0
.end method

.method setMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDesiredMute:Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDesiredMute:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    return-void
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v6, :cond_0

    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "cannot be in the incoming state"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isImsCall()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isImsCall()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isImsCall()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x69

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getCdmaCwActiveConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, "actConn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v2, v3

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v2, "holdConn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwActive:Z

    iput-boolean v5, v2, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwHolding:Z

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwActive:Z

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwHolding:Z

    :cond_3
    const-string v3, "switchWaitingOrHoldingAndActive - switch"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connectionDump(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->flashAndSetGenericTrue()V

    goto :goto_0

    .end local v0    # "actConn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v2    # "holdConn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v1, "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v1, :cond_5

    iget-boolean v3, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwActive:Z

    if-nez v3, :cond_6

    move v3, v4

    :goto_1
    iput-boolean v3, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwActive:Z

    iget-boolean v3, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwHolding:Z

    if-nez v3, :cond_7

    :goto_2
    iput-boolean v4, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwHolding:Z

    :cond_5
    const-string v3, "switchWaitingOrHoldingAndActive - hold"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connectionDump(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v4, ""

    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_6
    move v3, v5

    goto :goto_1

    :cond_7
    move v4, v5

    goto :goto_2
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
