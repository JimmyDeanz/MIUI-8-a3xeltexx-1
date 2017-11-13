.class abstract Lcom/android/services/telephony/TelephonyConnection;
.super Landroid/telecom/Connection;
.source "TelephonyConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/TelephonyConnection$5;,
        Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHasHighDefAudio:Z

.field private mIsMultiParty:Z

.field private mIsVideoPauseSupported:Z

.field private mIsWifi:Z

.field private mLocalVideoCapable:Z

.field private mOriginalConnection:Lcom/android/internal/telephony/Connection;

.field private final mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

.field private mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

.field private final mPostDialListener:Lcom/android/internal/telephony/Connection$PostDialListener;

.field private mRemoteVideoCapable:Z

.field private final mTelephonyListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImsConnection:Z


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p1, "originalConnection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 318
    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    .line 67
    new-instance v0, Lcom/android/services/telephony/TelephonyConnection$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConnection$1;-><init>(Lcom/android/services/telephony/TelephonyConnection;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/android/services/telephony/TelephonyConnection$2;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConnection$2;-><init>(Lcom/android/services/telephony/TelephonyConnection;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mPostDialListener:Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 171
    new-instance v0, Lcom/android/services/telephony/TelephonyConnection$3;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConnection$3;-><init>(Lcom/android/services/telephony/TelephonyConnection;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    .line 264
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    .line 315
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mTelephonyListeners:Ljava/util/Set;

    .line 319
    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnection(Lcom/android/internal/telephony/Connection;)V

    .line 322
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/TelephonyConnection;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/services/telephony/TelephonyConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/TelephonyConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mWasImsConnection:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/TelephonyConnection;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->getForegroundConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/services/telephony/TelephonyConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/TelephonyConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/TelephonyConnection;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->notifyConferenceStarted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/TelephonyConnection;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->notifyConferenceMergeFailed()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/services/telephony/TelephonyConnection;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/TelephonyConnection;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;->handleSuppServiceNotifyMessage(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/TelephonyConnection;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;->updateConferenceParticipants(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/services/telephony/TelephonyConnection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/TelephonyConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;->handleMultipartyStateChange(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/TelephonyConnection;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->handleConferenceMergeFailed()V

    return-void
.end method

.method private applyConferenceTerminationCapabilities(I)I
    .locals 2
    .param p1, "capabilities"    # I

    .prologue
    .line 873
    move v0, p1

    .line 877
    .local v0, "currentCapabilities":I
    iget-boolean v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mWasImsConnection:Z

    if-nez v1, :cond_0

    .line 878
    or-int/lit16 v0, v0, 0x2000

    .line 879
    or-int/lit16 v0, v0, 0x1000

    .line 882
    :cond_0
    return v0
.end method

.method private changeCapability(IIZ)I
    .locals 1
    .param p1, "capabilities"    # I
    .param p2, "capability"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 1015
    if-eqz p3, :cond_0

    .line 1016
    or-int v0, p1, p2

    .line 1018
    :goto_0
    return v0

    :cond_0
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p1

    goto :goto_0
.end method

.method private close()V
    .locals 2

    .prologue
    .line 860
    const-string v0, "close"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 861
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->clearOriginalConnection()V

    .line 862
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->destroy()V

    .line 863
    return-void
.end method

.method private final fireOnOriginalConnectionConfigured()V
    .locals 3

    .prologue
    .line 1074
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mTelephonyListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    .line 1075
    .local v1, "l":Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;
    invoke-virtual {v1, p0}, Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;->onOriginalConnectionConfigured(Lcom/android/services/telephony/TelephonyConnection;)V

    goto :goto_0

    .line 1077
    .end local v1    # "l":Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;
    :cond_0
    return-void
.end method

.method private static getAddressFromNumber(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1000
    if-nez p0, :cond_0

    .line 1001
    const-string p0, ""

    .line 1003
    :cond_0
    const-string v0, "tel"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getForegroundConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 703
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleConferenceMergeFailed()V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 814
    return-void
.end method

.method private handleMultipartyStateChange(Z)V
    .locals 4
    .param p1, "isMultiParty"    # Z

    .prologue
    .line 830
    const-string v1, "Update multiparty state to %s"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v0, "Y"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 831
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 832
    return-void

    .line 830
    :cond_0
    const-string v0, "N"

    goto :goto_0
.end method

.method private handleSuppServiceNotifyMessage(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "asyncResult"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1120
    const/4 v0, 0x0

    .line 1121
    .local v0, "ssNotification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1122
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "ssNotification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    check-cast v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 1125
    .restart local v0    # "ssNotification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :cond_0
    if-nez v0, :cond_2

    .line 1126
    const-string v1, "handleSuppServiceNotifyMessage: mSsNotification is null, return"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1158
    :cond_1
    :goto_0
    return-void

    .line 1130
    :cond_2
    iget v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-ne v1, v4, :cond_3

    .line 1131
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1132
    const-string v1, "handleSuppServiceNotifyMessage: MT, but call state is not Ringing, return"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1137
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSuppServiceNotifyMessage: do not support notificationType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1142
    :cond_4
    iget v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1144
    :cond_5
    new-instance v1, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;

    new-instance v2, Lcom/android/services/telephony/TelephonyConnection$4;

    invoke-direct {v2, p0}, Lcom/android/services/telephony/TelephonyConnection$4;-><init>(Lcom/android/services/telephony/TelephonyConnection;)V

    invoke-direct {v1, v2}, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;-><init>(Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor$ExtraContainer;)V

    const-string v2, "telephony.IS_FORWARDED_CALL"

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;->putBoolean(Ljava/lang/String;Z)Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/common/PhoneConstants$MiuiCallExtraAccessor;->commit()V

    goto :goto_0
.end method

.method private hasMultipleTopLevelCalls()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, "numCalls":I
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 685
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_2

    .line 686
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_0

    .line 687
    add-int/lit8 v0, v0, 0x1

    .line 689
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 690
    add-int/lit8 v0, v0, 0x1

    .line 692
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    .line 693
    add-int/lit8 v0, v0, 0x1

    .line 696
    :cond_2
    if-le v0, v2, :cond_3

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isValidRingingCall()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 724
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-nez v2, :cond_0

    .line 725
    const-string v2, "isValidRingingCall, phone is null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 741
    :goto_0
    return v1

    .line 729
    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 730
    .local v0, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-nez v2, :cond_1

    .line 731
    const-string v2, "isValidRingingCall, ringing call is not in ringing state"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 735
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eq v2, v3, :cond_2

    .line 736
    const-string v2, "isValidRingingCall, ringing call connection does not match"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 740
    :cond_2
    const-string v2, "isValidRingingCall, returning true"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 741
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setActiveInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 835
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 836
    const-string v3, "Should not be called if this is already ACTIVE"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 857
    :goto_0
    return-void

    .line 846
    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionService()Landroid/telecom/ConnectionService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 847
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionService()Landroid/telecom/ConnectionService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/ConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 848
    .local v0, "current":Landroid/telecom/Connection;
    if-eq v0, p0, :cond_1

    instance-of v3, v0, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 849
    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    .line 850
    .local v2, "other":Lcom/android/services/telephony/TelephonyConnection;
    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 851
    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    goto :goto_1

    .line 856
    .end local v0    # "current":Landroid/telecom/Connection;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "other":Lcom/android/services/telephony/TelephonyConnection;
    :cond_2
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setActive()V

    goto :goto_0
.end method

.method private updateMultiparty()V
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v0, :cond_1

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    iget-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    .line 801
    iget-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->notifyConferenceStarted()V

    goto :goto_0
.end method

.method private updateStatusHints()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1023
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isValidRingingCall()Z

    move-result v1

    .line 1024
    .local v1, "isIncoming":Z
    iget-boolean v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsWifi:Z

    if-eqz v3, :cond_2

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1025
    :cond_0
    if-eqz v1, :cond_1

    const v2, 0x7f080282

    .line 1029
    .local v2, "labelId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1030
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Landroid/telecom/StatusHints;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020029

    invoke-static {v5, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-direct {v3, v4, v5, v7}, Landroid/telecom/StatusHints;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/android/services/telephony/TelephonyConnection;->setStatusHints(Landroid/telecom/StatusHints;)V

    .line 1039
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "labelId":I
    :goto_1
    return-void

    .line 1025
    :cond_1
    const v2, 0x7f080283

    goto :goto_0

    .line 1037
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/services/telephony/TelephonyConnection;->setStatusHints(Landroid/telecom/StatusHints;)V

    goto :goto_1
.end method


# virtual methods
.method public final addTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 1
    .param p1, "l"    # Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mTelephonyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1050
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    .line 1051
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->fireOnOriginalConnectionConfigured()V

    .line 1053
    :cond_0
    return-object p0
.end method

.method protected buildConnectionCapabilities()I
    .locals 4

    .prologue
    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, "callCapabilities":I
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->isImsConnection()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 517
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    .line 520
    :cond_0
    or-int/lit8 v0, v0, 0x2

    .line 521
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 522
    :cond_1
    or-int/lit8 v0, v0, 0x1

    .line 528
    :cond_2
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 529
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 530
    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    .line 532
    :cond_3
    return v0
.end method

.method clearOriginalConnection()V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 623
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 624
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForHandoverStateChanged(Landroid/os/Handler;)V

    .line 625
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 627
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 628
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mPostDialListener:Lcom/android/internal/telephony/Connection$PostDialListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->removePostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V

    .line 632
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->removeListener(Lcom/android/internal/telephony/Connection$Listener;)V

    .line 633
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    .line 635
    :cond_1
    return-void
.end method

.method public abstract cloneConnection()Lcom/android/services/telephony/TelephonyConnection;
.end method

.method protected getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 671
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v0, :cond_0

    .line 712
    const-string v0, "Null mOriginalConnection, cannot get conf participants."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 713
    const/4 v0, 0x0

    .line 715
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getConferenceParticipants()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method getOriginalConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method getPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 676
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 679
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hangup(I)V
    .locals 5
    .param p1, "telephonyDisconnectCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 638
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v2, :cond_0

    .line 643
    :try_start_0
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isValidRingingCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 644
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 645
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 661
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_0
    return-void

    .line 648
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    const-string v2, "Attempting to hangup a connection without backing call."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 657
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :catch_0
    move-exception v1

    .line 658
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "Call to Connection.hangup failed with exception"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 655
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected isImsConnection()Z
    .locals 1

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return v0
.end method

.method isWifi()Z
    .locals 1

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsWifi:Z

    return v0
.end method

.method public onAbort()V
    .locals 2

    .prologue
    .line 382
    const-string v0, "onAbort"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->hangup(I)V

    .line 384
    return-void
.end method

.method public onAnswer(I)V
    .locals 4
    .param p1, "videoState"    # I

    .prologue
    const/4 v3, 0x0

    .line 398
    const-string v1, "onAnswer"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isValidRingingCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 401
    :try_start_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "Failed to accept call."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 1
    .param p1, "audioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled()V

    .line 337
    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .prologue
    .line 347
    const-string v0, "onDisconnect"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->hangup(I)V

    .line 349
    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 3
    .param p1, "endpoint"    # Landroid/net/Uri;

    .prologue
    .line 359
    const-string v0, "onDisconnectConferenceParticipant %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Connection;->onDisconnectConferenceParticipant(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onHold()V
    .locals 0

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->performHold()V

    .line 389
    return-void
.end method

.method public onPostDialContinue(Z)V
    .locals 2
    .param p1, "proceed"    # Z

    .prologue
    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostDialContinue, proceed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    .line 421
    if-eqz p1, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->proceedAfterWaitChar()V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_0
.end method

.method public onReject()V
    .locals 2

    .prologue
    .line 410
    const-string v0, "onReject"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isValidRingingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->hangup(I)V

    .line 414
    :cond_0
    invoke-super {p0}, Landroid/telecom/Connection;->onReject()V

    .line 415
    return-void
.end method

.method public onSeparate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 370
    const-string v1, "onSeparate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_0

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "Call to Connection.separate failed with exception"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChanged, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateStatusHints()V

    .line 343
    return-void
.end method

.method public onUnhold()V
    .locals 0

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->performUnhold()V

    .line 394
    return-void
.end method

.method public performConference(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 4
    .param p1, "otherConnection"    # Lcom/android/services/telephony/TelephonyConnection;

    .prologue
    const/4 v3, 0x0

    .line 495
    const-string v1, "performConference - %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 503
    :try_start_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "Failed to conference call."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public performHold()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 430
    const-string v3, "performHold"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    .line 434
    const-string v3, "Holding active call"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    :try_start_0
    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 437
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 449
    .local v2, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 450
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "ringingCall":Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v3, "Exception occurred while trying to put call on hold."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v3, v4}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 458
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_1
    const-string v3, "Cannot put a call that is not currently active on hold."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public performUnhold()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 463
    const-string v1, "performUnhold"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 481
    :try_start_0
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->hasMultipleTopLevelCalls()Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 492
    :goto_0
    return-void

    .line 484
    :cond_0
    const-string v1, "Skipping unhold command for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "Exception occurred while trying to release call from hold."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 490
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_1
    const-string v1, "Cannot release a call that is not already on hold from hold."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final removeTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 1
    .param p1, "l"    # Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    .prologue
    .line 1063
    if-eqz p1, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mTelephonyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1066
    :cond_0
    return-object p0
.end method

.method resetStateForConference()V
    .locals 2

    .prologue
    .line 955
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 956
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 957
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setActive()V

    .line 960
    :cond_0
    return-void
.end method

.method public setAudioQuality(I)V
    .locals 1
    .param p1, "audioQuality"    # I

    .prologue
    .line 949
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mHasHighDefAudio:Z

    .line 951
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionCapabilities()V

    .line 952
    return-void

    .line 949
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setHoldingForConference()Z
    .locals 2

    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 964
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setOnHold()V

    .line 965
    const/4 v0, 0x1

    .line 967
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLocalVideoCapable(Z)V
    .locals 0
    .param p1, "capable"    # Z

    .prologue
    .line 910
    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mLocalVideoCapable:Z

    .line 911
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionCapabilities()V

    .line 912
    return-void
.end method

.method setOriginalConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 5
    .param p1, "originalConnection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new TelephonyConnection, originalConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->clearOriginalConnection()V

    .line 584
    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    .line 585
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v4, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 587
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 589
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 590
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 592
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 593
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 595
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mPostDialListener:Lcom/android/internal/telephony/Connection$PostDialListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->addPostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V

    .line 596
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->addListener(Lcom/android/internal/telephony/Connection$Listener;)V

    .line 599
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setVideoState(I)V

    .line 600
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    .line 601
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isLocalVideoCapable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setLocalVideoCapable(Z)V

    .line 602
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRemoteVideoCapable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setRemoteVideoCapable(Z)V

    .line 603
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isWifi()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setWifi(Z)V

    .line 604
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    .line 605
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAudioQuality()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setAudioQuality(I)V

    .line 607
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->isImsConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iput-boolean v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mWasImsConnection:Z

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    .line 612
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->fireOnOriginalConnectionConfigured()V

    .line 613
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateAddress()V

    .line 614
    return-void
.end method

.method public setRemoteVideoCapable(Z)V
    .locals 0
    .param p1, "capable"    # Z

    .prologue
    .line 921
    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mRemoteVideoCapable:Z

    .line 922
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionCapabilities()V

    .line 923
    return-void
.end method

.method public setVideoPauseSupported(Z)V
    .locals 0
    .param p1, "isVideoPauseSupported"    # Z

    .prologue
    .line 977
    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsVideoPauseSupported:Z

    .line 978
    return-void
.end method

.method public setWifi(Z)V
    .locals 0
    .param p1, "isWifi"    # Z

    .prologue
    .line 930
    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsWifi:Z

    .line 931
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionCapabilities()V

    .line 932
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateStatusHints()V

    .line 933
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1088
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[TelephonyConnection objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1090
    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->isImsConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1092
    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    :cond_0
    :goto_0
    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    const-string v1, " capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionCapabilities()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/TelephonyConnection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    const-string v1, " address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    const-string v1, " originalConnection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1106
    const-string v1, " partOfConf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConference()Landroid/telecom/Conference;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1108
    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    :goto_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1093
    :cond_1
    instance-of v1, p0, Lcom/android/services/telephony/GsmConnection;

    if-eqz v1, :cond_2

    .line 1094
    const-string v1, "gsm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1095
    :cond_2
    instance-of v1, p0, Lcom/android/services/telephony/CdmaConnection;

    if-eqz v1, :cond_0

    .line 1096
    const-string v1, "cdma"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1110
    :cond_3
    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected final updateAddress()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 556
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionCapabilities()V

    .line 557
    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_3

    .line 558
    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/services/telephony/TelephonyConnection;->getAddressFromNumber(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 559
    .local v0, "address":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    .line 560
    .local v3, "presentation":I
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddressPresentation()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 562
    :cond_0
    const-string v4, "updateAddress, address changed"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    invoke-virtual {p0, v0, v3}, Lcom/android/services/telephony/TelephonyConnection;->setAddress(Landroid/net/Uri;I)V

    .line 566
    :cond_1
    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    .line 568
    .local v2, "namePresentation":I
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallerDisplayNamePresentation()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 570
    :cond_2
    const-string v4, "updateAddress, caller display name changed"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    invoke-virtual {p0, v1, v2}, Lcom/android/services/telephony/TelephonyConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 574
    .end local v0    # "address":Landroid/net/Uri;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "namePresentation":I
    .end local v3    # "presentation":I
    :cond_3
    return-void
.end method

.method protected final updateConnectionCapabilities()V
    .locals 3

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->buildConnectionCapabilities()I

    move-result v0

    .line 538
    .local v0, "newCapabilities":I
    const/16 v1, 0xc00

    iget-boolean v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mRemoteVideoCapable:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/services/telephony/TelephonyConnection;->changeCapability(IIZ)I

    move-result v0

    .line 540
    const/16 v1, 0x300

    iget-boolean v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mLocalVideoCapable:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/services/telephony/TelephonyConnection;->changeCapability(IIZ)I

    move-result v0

    .line 542
    const v1, 0x8000

    iget-boolean v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mHasHighDefAudio:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/services/telephony/TelephonyConnection;->changeCapability(IIZ)I

    move-result v0

    .line 544
    const/high16 v1, 0x10000

    iget-boolean v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsWifi:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/services/telephony/TelephonyConnection;->changeCapability(IIZ)I

    move-result v0

    .line 545
    const/high16 v2, 0x100000

    iget-boolean v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsVideoPauseSupported:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mRemoteVideoCapable:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mLocalVideoCapable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v0, v2, v1}, Lcom/android/services/telephony/TelephonyConnection;->changeCapability(IIZ)I

    move-result v0

    .line 548
    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->applyConferenceTerminationCapabilities(I)I

    move-result v0

    .line 550
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionCapabilities()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 551
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setConnectionCapabilities(I)V

    .line 553
    :cond_0
    return-void

    .line 545
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method updateState()V
    .locals 1

    .prologue
    .line 745
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->updateState(Z)V

    .line 746
    return-void
.end method

.method updateState(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    .line 749
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v1, :cond_0

    .line 788
    :goto_0
    return-void

    .line 753
    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 754
    .local v0, "newState":Lcom/android/internal/telephony/Call$State;
    const-string v1, "Update state from %s to %s for %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 755
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v0, :cond_1

    if-eqz p1, :cond_2

    .line 756
    :cond_1
    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    .line 757
    sget-object v1, Lcom/android/services/telephony/TelephonyConnection$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 784
    :cond_2
    :goto_1
    :pswitch_0
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateStatusHints()V

    .line 785
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionCapabilities()V

    .line 786
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateAddress()V

    .line 787
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateMultiparty()V

    goto :goto_0

    .line 761
    :pswitch_1
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->setActiveInternal()V

    goto :goto_1

    .line 764
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setOnHold()V

    goto :goto_1

    .line 768
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setDialing()V

    goto :goto_1

    .line 772
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setRinging()V

    goto :goto_1

    .line 775
    :pswitch_5
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getVendorDisconnectCause()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/TelephonyConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 778
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->close()V

    goto :goto_1

    .line 757
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public wasImsConnection()Z
    .locals 1

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mWasImsConnection:Z

    return v0
.end method
