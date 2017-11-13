.class public Lcom/android/internal/telephony/gsm/GsmConnection;
.super Lcom/android/internal/telephony/Connection;
.source "GsmConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmConnection$1;,
        Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final EVENT_DTMF_DELAY_DONE:I = 0x5

.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_SATCALL_SETUP:I = 0x6

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final HD_VOICE_ALARM_EVENT_ABORT_SESSION_BY_PCRF:I = 0xf1b95

.field static final HD_VOICE_ALARM_EVENT_HANDOVER_FAIL_BY_PCRF:I = 0xf1b96

.field static final HD_VOICE_ALARM_EVENT_NO_RTP_A:I = 0xf1b97

.field static final HD_VOICE_ALARM_EVENT_NO_RTP_B:I = 0xf1b98

.field static final HD_VOICE_ALARM_EVENT_NO_UDP:I = 0xf1b99

.field static final HD_VOICE_ALARM_EVENT_NO_UDP_RESP:I = 0xf1b9a

.field static final IMS_ABORT_SESSION_BY_PCRF:I = 0x83f

.field static final IMS_HANDOVER_FAIL_BY_PCRF:I = 0x840

.field static final IMS_NO_RTP_A:I = 0x579

.field static final IMS_NO_RTP_B:I = 0x841

.field static final IMS_NO_UDP:I = 0x842

.field static final IMS_NO_UDP_RESP:I = 0x843

.field private static final LOG_TAG:Ljava/lang/String; = "GsmConnection"

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field callFailCause:I

.field mCause:I

.field mDisconnectTime:J

.field mDisconnected:Z

.field private mDtmfToneDelay:I

.field mHandler:Landroid/os/Handler;

.field mIndex:I

.field mIsInAnsweringMessage:Z

.field mNextPostDialChar:I

.field mOrigConnection:Lcom/android/internal/telephony/Connection;

.field mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field mParent:Lcom/android/internal/telephony/gsm/GsmCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field mPostDialString:Ljava/lang/String;

.field mPreciseCause:I

.field mUusInfo:Lcom/android/internal/telephony/UUSInfo;

.field mVendorCause:Ljava/lang/String;

.field private needUpdateCallTime:Z

.field rawCause:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .param p4, "index"    # I

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsInAnsweringMessage:Z

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDtmfToneDelay:I

    const/16 v2, 0x10

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callFailCause:I

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->rawCause:I

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->needUpdateCallTime:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->createWakeLock(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    new-instance v2, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    iget-boolean v2, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCreateTime:J

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportCNAP"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    iget v2, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    :goto_0
    iget v2, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberPresentation:I

    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    iput p4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    iget v2, p2, Lcom/android/internal/telephony/DriverCall;->id:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->setId(I)V

    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->setCallDetails(Lcom/android/internal/telephony/CallDetails;)Z

    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2, p0, p2}, Lcom/android/internal/telephony/gsm/GsmCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getVideoState()I

    move-result v1

    .local v1, "oldVideoState":I
    const/4 v0, 0x2

    .local v0, "newVideoState":I
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v2, v2, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-static {v2}, Lcom/android/internal/telephony/CallDetails;->callTypeToVideoState(I)I

    move-result v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldVideoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newVideoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    if-eq v1, v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setVideoState(I)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New Connection (DriverCall): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .end local v0    # "newVideoState":I
    .end local v1    # "oldVideoState":I
    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportCnapDuringVolteCall"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v2, v2, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    iget v2, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/CallDetails;)V

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/CallDetails;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p5, "callDetails"    # Lcom/android/internal/telephony/CallDetails;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsInAnsweringMessage:Z

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDtmfToneDelay:I

    const/16 v2, 0x10

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callFailCause:I

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->rawCause:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->needUpdateCallTime:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->createWakeLock(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    new-instance v2, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDialString:Ljava/lang/String;

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    if-eqz p5, :cond_0

    const-string v2, "unknown"

    const-string v3, "participants"

    invoke-virtual {p5, v3}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->setId(I)V

    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gsm/GsmConnection;->setCallDetails(Lcom/android/internal/telephony/CallDetails;)Z

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberPresentation:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCreateTime:J

    iput-object p4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v2}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getVideoState()I

    move-result v1

    .local v1, "oldVideoState":I
    const/4 v0, 0x2

    .local v0, "newVideoState":I
    if-eqz p5, :cond_1

    iget v2, p5, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-static {v2}, Lcom/android/internal/telephony/CallDetails;->callTypeToVideoState(I)I

    move-result v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldVideoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newVideoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setVideoState(I)V

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New Connection (DialString): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .end local v0    # "newVideoState":I
    .end local v1    # "oldVideoState":I
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDtmfToneDelay:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    const-string v0, "acquireWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "GsmConnection"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private fetchDtmfToneDelay(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "carrier_config"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    const-string v2, "gsm_dtmf_tone_delay_int"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDtmfToneDelay:I

    :cond_0
    return-void
.end method

.method private isConnectingInOrOut()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "GsmConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GSMConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/DriverCall$State;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processNextPostDialChar()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    .local v1, "c":C
    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "KTT"

    aput-object v7, v6, v9

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_1

    const-string v6, "GSM"

    const-string v7, "processNextPostDialChar: KT Ringing return!!!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    if-gt v6, v7, :cond_5

    :cond_2
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->notifyPostDialListenersNextChar(C)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .local v4, "postDialHandler":Landroid/os/Registrant;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .local v5, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iput v1, v3, Landroid/os/Message;->arg1:I

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v5    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_4
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "SKT"

    aput-object v7, v6, v9

    const-string v7, "KTT"

    aput-object v7, v6, v10

    const/4 v7, 0x2

    const-string v8, "LGT"

    aput-object v8, v6, v7

    const-string v7, "SBM"

    aput-object v7, v6, v11

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_0

    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    goto :goto_0

    .end local v4    # "postDialHandler":Landroid/os/Registrant;
    :cond_5
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->processPostDialChar(C)Z

    move-result v2

    .local v2, "isValid":Z
    if-nez v2, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private processPostDialChar(C)Z
    .locals 6
    .param p1, "c"    # C

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    :goto_0
    move v0, v1

    :cond_0
    return v0

    :cond_1
    const/16 v2, 0x2c

    if-ne p1, v2, :cond_3

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SKT"

    aput-object v3, v2, v0

    const-string v0, "KTT"

    aput-object v0, v2, v1

    const-string v0, "LGT"

    aput-object v0, v2, v4

    const/4 v0, 0x3

    const-string v3, "KOO"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "SBM"

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    const/16 v2, 0x3b

    if-ne p1, v2, :cond_4

    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    :cond_4
    const/16 v2, 0x4e

    if-ne p1, v2, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0
.end method

.method private releaseAllWakeLocks()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "releaseWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    .prologue
    const/4 v3, 0x4

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->notifyPostDialListeners()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    goto :goto_0
.end method

.method private updateTotalCallTime()V
    .locals 26

    .prologue
    const-wide/16 v14, 0x0

    .local v14, "mTotalCallTime":J
    const/4 v6, 0x0

    .local v6, "file":Ljava/io/File;
    const/4 v13, 0x0

    .local v13, "oldFile":Ljava/io/File;
    const/4 v11, 0x0

    .local v11, "in":Ljava/io/InputStream;
    const/16 v17, 0x0

    .local v17, "out":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .local v9, "fos":Ljava/io/FileOutputStream;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v4, v0, [B

    .local v4, "buffer":[B
    const/4 v8, 0x0

    .local v8, "fileWasRead":Z
    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string v20, "/efs/imei/total_call_time"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "file":Ljava/io/File;
    .local v7, "file":Ljava/io/File;
    if-nez v7, :cond_2

    :try_start_1
    const-string v20, "GsmConnection"

    const-string v21, "NullPointer"

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v11, :cond_0

    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    :cond_0
    :goto_0
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .end local v6    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    :cond_2
    :try_start_3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    const-string v21, "chmod 664 /efs/imei/total_call_time"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v19

    .local v19, "process":Ljava/lang/Process;
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Process;->waitFor()I

    :cond_3
    new-instance v16, Ljava/io/File;

    const-string v20, "/efs/total_call_time"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_13
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .end local v13    # "oldFile":Ljava/io/File;
    .local v16, "oldFile":Ljava/io/File;
    if-eqz v16, :cond_4

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->canRead()Z

    move-result v20

    if-eqz v20, :cond_4

    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_14
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .end local v11    # "in":Ljava/io/InputStream;
    .local v12, "in":Ljava/io/InputStream;
    const/16 v20, 0x0

    const/16 v21, 0x4

    :try_start_5
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_19
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_15
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    const/4 v8, 0x1

    move-object v11, v12

    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v11    # "in":Ljava/io/InputStream;
    :cond_4
    move-object/from16 v13, v16

    .end local v16    # "oldFile":Ljava/io/File;
    .end local v19    # "process":Ljava/lang/Process;
    .restart local v13    # "oldFile":Ljava/io/File;
    :goto_2
    if-eqz v8, :cond_5

    const/16 v20, 0x0

    :try_start_6
    aget-byte v20, v4, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v14, v14, v20

    const/16 v20, 0x1

    aget-byte v20, v4, v20

    shl-int/lit8 v20, v20, 0x8

    const v21, 0xff00

    and-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v14, v14, v20

    const/16 v20, 0x2

    aget-byte v20, v4, v20

    shl-int/lit8 v20, v20, 0x10

    const/high16 v21, 0xff0000

    and-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v14, v14, v20

    const/16 v20, 0x3

    aget-byte v20, v4, v20

    shl-int/lit8 v20, v20, 0x18

    const/high16 v21, -0x1000000

    and-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v14, v14, v20

    const-string v20, "GsmConnection"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateTotalCallTime: file opened currentCallTime="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_17
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_13
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_5
    if-eqz v11, :cond_6

    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    :cond_6
    :goto_3
    const-wide/16 v20, 0x1c20

    cmp-long v20, v14, v20

    if-ltz v20, :cond_9

    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_1

    .end local v6    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    :cond_7
    :try_start_8
    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_17
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_13
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v12    # "in":Ljava/io/InputStream;
    const/16 v20, 0x0

    const/16 v21, 0x4

    :try_start_9
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1a
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_16
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    const/4 v8, 0x1

    move-object v11, v12

    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v11    # "in":Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_a
    const-string v20, "GsmConnection"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateTotalCallTime: [Read] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v11, :cond_1

    :try_start_b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v20

    goto/16 :goto_1

    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    :goto_5
    :try_start_c
    const-string v20, "GsmConnection"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateTotalCallTime: [Read] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v11, :cond_1

    :try_start_d
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v20

    goto/16 :goto_1

    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .local v5, "e":Ljava/lang/InterruptedException;
    :goto_6
    :try_start_e
    const-string v20, "GsmConnection"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateTotalCallTime: [Create] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v11, :cond_1

    :try_start_f
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v20

    goto/16 :goto_1

    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v20

    :goto_7
    if-eqz v11, :cond_8

    :try_start_10
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    :cond_8
    :goto_8
    throw v20

    .end local v6    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDuration:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDuration:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    add-long v14, v14, v20

    :cond_a
    const-wide/16 v20, 0x1c20

    cmp-long v20, v14, v20

    if-ltz v20, :cond_b

    const-wide/16 v14, 0x1c20

    :cond_b
    :try_start_11
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    :try_start_12
    new-instance v18, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_11
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .end local v17    # "out":Ljava/io/OutputStream;
    .local v18, "out":Ljava/io/OutputStream;
    const/16 v20, 0x0

    const-wide/16 v22, 0xff

    and-long v22, v22, v14

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    :try_start_13
    aput-byte v21, v4, v20

    const/16 v20, 0x1

    const/16 v21, 0x8

    shr-long v22, v14, v21

    const-wide/16 v24, 0xff

    and-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v4, v20

    const/16 v20, 0x2

    const/16 v21, 0x10

    shr-long v22, v14, v21

    const-wide/16 v24, 0xff

    and-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v4, v20

    const/16 v20, 0x3

    const/16 v21, 0x18

    shr-long v22, v14, v21

    const-wide/16 v24, 0xff

    and-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v4, v20

    const/16 v20, 0x0

    const/16 v21, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/FileDescriptor;->sync()V

    const-string v20, "GsmConnection"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateTotalCallTime: file closed newCallTime="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_12
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v18, :cond_e

    :try_start_14
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/io/OutputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    :cond_c
    :goto_9
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_1

    .end local v6    # "file":Ljava/io/File;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "out":Ljava/io/OutputStream;
    :catch_6
    move-exception v20

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/io/OutputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    goto :goto_9

    :catch_7
    move-exception v5

    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_a
    :try_start_15
    const-string v20, "GsmConnection"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateTotalCallTime: [Write] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    if-eqz v17, :cond_c

    :try_start_16
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8

    goto :goto_9

    :catch_8
    move-exception v20

    goto :goto_9

    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    :goto_b
    :try_start_17
    const-string v20, "GsmConnection"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateTotalCallTime: [Write] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    if-eqz v17, :cond_c

    :try_start_18
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a

    goto :goto_9

    :catch_a
    move-exception v20

    goto :goto_9

    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v20

    :goto_c
    if-eqz v17, :cond_d

    :try_start_19
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e

    :cond_d
    :goto_d
    throw v20

    :catch_b
    move-exception v20

    goto/16 :goto_0

    :catch_c
    move-exception v20

    goto/16 :goto_3

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catch_d
    move-exception v21

    goto/16 :goto_8

    .end local v6    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    :catch_e
    move-exception v21

    goto :goto_d

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v20

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_c

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "out":Ljava/io/OutputStream;
    :catchall_3
    move-exception v20

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/io/OutputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    goto :goto_c

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_f
    move-exception v5

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_b

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "out":Ljava/io/OutputStream;
    :catch_10
    move-exception v5

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/io/OutputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    goto :goto_b

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_11
    move-exception v5

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_a

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "out":Ljava/io/OutputStream;
    :catch_12
    move-exception v5

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/io/OutputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    goto :goto_a

    :catchall_4
    move-exception v20

    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_7

    .end local v6    # "file":Ljava/io/File;
    .end local v13    # "oldFile":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v16    # "oldFile":Ljava/io/File;
    .restart local v19    # "process":Ljava/lang/Process;
    :catchall_5
    move-exception v20

    move-object/from16 v13, v16

    .end local v16    # "oldFile":Ljava/io/File;
    .restart local v13    # "oldFile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_7

    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v13    # "oldFile":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v16    # "oldFile":Ljava/io/File;
    :catchall_6
    move-exception v20

    move-object v11, v12

    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v11    # "in":Ljava/io/InputStream;
    move-object/from16 v13, v16

    .end local v16    # "oldFile":Ljava/io/File;
    .restart local v13    # "oldFile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_7

    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v19    # "process":Ljava/lang/Process;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v12    # "in":Ljava/io/InputStream;
    :catchall_7
    move-exception v20

    move-object v11, v12

    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v11    # "in":Ljava/io/InputStream;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_7

    .end local v6    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    :catch_13
    move-exception v5

    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_6

    .end local v6    # "file":Ljava/io/File;
    .end local v13    # "oldFile":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v16    # "oldFile":Ljava/io/File;
    .restart local v19    # "process":Ljava/lang/Process;
    :catch_14
    move-exception v5

    move-object/from16 v13, v16

    .end local v16    # "oldFile":Ljava/io/File;
    .restart local v13    # "oldFile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_6

    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v13    # "oldFile":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v16    # "oldFile":Ljava/io/File;
    :catch_15
    move-exception v5

    move-object v11, v12

    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v11    # "in":Ljava/io/InputStream;
    move-object/from16 v13, v16

    .end local v16    # "oldFile":Ljava/io/File;
    .restart local v13    # "oldFile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_6

    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v19    # "process":Ljava/lang/Process;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v12    # "in":Ljava/io/InputStream;
    :catch_16
    move-exception v5

    move-object v11, v12

    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v11    # "in":Ljava/io/InputStream;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_6

    .end local v6    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    :catch_17
    move-exception v5

    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_5

    .end local v6    # "file":Ljava/io/File;
    .end local v13    # "oldFile":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v16    # "oldFile":Ljava/io/File;
    .restart local v19    # "process":Ljava/lang/Process;
    :catch_18
    move-exception v5

    move-object/from16 v13, v16

    .end local v16    # "oldFile":Ljava/io/File;
    .restart local v13    # "oldFile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_5

    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v13    # "oldFile":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v16    # "oldFile":Ljava/io/File;
    :catch_19
    move-exception v5

    move-object v11, v12

    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v11    # "in":Ljava/io/InputStream;
    move-object/from16 v13, v16

    .end local v16    # "oldFile":Ljava/io/File;
    .restart local v13    # "oldFile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_5

    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v19    # "process":Ljava/lang/Process;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v12    # "in":Ljava/io/InputStream;
    :catch_1a
    move-exception v5

    move-object v11, v12

    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v11    # "in":Ljava/io/InputStream;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_5

    .end local v6    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    :catch_1b
    move-exception v5

    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_4

    .end local v6    # "file":Ljava/io/File;
    .end local v13    # "oldFile":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v16    # "oldFile":Ljava/io/File;
    .restart local v19    # "process":Ljava/lang/Process;
    :catch_1c
    move-exception v5

    move-object/from16 v13, v16

    .end local v16    # "oldFile":Ljava/io/File;
    .restart local v13    # "oldFile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_4

    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v13    # "oldFile":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v16    # "oldFile":Ljava/io/File;
    :catch_1d
    move-exception v5

    move-object v11, v12

    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v11    # "in":Ljava/io/InputStream;
    move-object/from16 v13, v16

    .end local v16    # "oldFile":Ljava/io/File;
    .restart local v13    # "oldFile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_4

    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v19    # "process":Ljava/lang/Process;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v12    # "in":Ljava/io/InputStream;
    :catch_1e
    move-exception v5

    move-object v11, v12

    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v11    # "in":Ljava/io/InputStream;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto/16 :goto_4

    .end local v6    # "file":Ljava/io/File;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "out":Ljava/io/OutputStream;
    :cond_e
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object/from16 v17, v18

    .end local v18    # "out":Ljava/io/OutputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    goto/16 :goto_9
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .param p1, "c"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-nez v2, :cond_0

    const-string v2, "ATT"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "FMC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TLS"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "RWC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v2, "Conference call"

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "cAddress":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method disconnectCauseFromCode(I)I
    .locals 14
    .param p1, "causeCode"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x2

    const-string v9, "GsmConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GSMConn] disconnectCauseFromCode: causeCode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v9, v6, [Ljava/lang/String;

    const-string v10, "SKT"

    aput-object v10, v9, v12

    const-string v10, "KTT"

    aput-object v10, v9, v8

    const-string v10, "LGT"

    aput-object v10, v9, v7

    const-string v10, "KOO"

    aput-object v10, v9, v13

    invoke-static {v9}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-array v9, v8, [Ljava/lang/String;

    const-string v10, "SKT"

    aput-object v10, v9, v12

    invoke-static {v9}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getDmHdvAlarmEvent()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v1, 0x0

    .local v1, "eventCode":I
    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sipError:I

    sparse-switch v9, :sswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.skt.smartagent.receive.Event_Alarm"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "i":Landroid/content/Intent;
    const/16 v9, 0x20

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v9, "ALARM_CODE"

    invoke-virtual {v2, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "CODE_DESCRIPTION"

    invoke-virtual {v2, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v1    # "eventCode":I
    .end local v2    # "i":Landroid/content/Intent;
    :cond_0
    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sipError:I

    if-lez v9, :cond_2

    const-string v6, "GsmConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GSMConn] disconnectCauseFromCode: sipError="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sipError:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x65

    :cond_1
    :goto_1
    :sswitch_0
    return v6

    .restart local v1    # "eventCode":I
    :sswitch_1
    const v1, 0xf1b95

    goto :goto_0

    :sswitch_2
    const v1, 0xf1b96

    goto :goto_0

    :sswitch_3
    const v1, 0xf1b97

    goto :goto_0

    :sswitch_4
    const v1, 0xf1b98

    goto :goto_0

    :sswitch_5
    const v1, 0xf1b99

    goto :goto_0

    :sswitch_6
    const v1, 0xf1b9a

    goto :goto_0

    .end local v1    # "eventCode":I
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_EnableDSAC"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "GsmConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GSMConn] disconnectCauseFromCode: sipError="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sipError:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sipError:I

    const/16 v10, 0x1e6

    if-eq v9, v10, :cond_1

    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sipError:I

    const/16 v10, 0xa29

    if-ne v9, v10, :cond_3

    const/16 v6, 0x23

    goto :goto_1

    :cond_3
    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sipError:I

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_4

    move v6, v7

    goto :goto_1

    :cond_4
    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sipError:I

    if-lez v9, :cond_5

    const/16 v6, 0x65

    goto :goto_1

    :cond_5
    const-string v9, "KDI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sipError:I

    const/16 v10, 0xa8b

    if-ne v9, v10, :cond_6

    const/16 v6, 0xf8

    goto :goto_1

    :cond_6
    sparse-switch p1, :sswitch_data_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v6, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .local v3, "phone":Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .local v4, "serviceState":I
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .local v0, "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    .local v5, "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :goto_2
    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sipError:I

    if-lez v6, :cond_b

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sipError:I

    const/16 v9, 0xc8

    if-eq v6, v9, :cond_b

    const/16 v6, 0x65

    goto/16 :goto_1

    .end local v0    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "phone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v4    # "serviceState":I
    .end local v5    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :sswitch_7
    const/16 v6, 0x64

    goto/16 :goto_1

    :sswitch_8
    const/4 v6, 0x5

    goto/16 :goto_1

    :sswitch_9
    new-array v6, v6, [Ljava/lang/String;

    const-string v9, "SKT"

    aput-object v9, v6, v12

    const-string v9, "KTT"

    aput-object v9, v6, v8

    const-string v9, "LGT"

    aput-object v9, v6, v7

    const-string v7, "KOO"

    aput-object v7, v6, v13

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v6, v6, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v6, v13, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v6, v6, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v6, v8, :cond_7

    const/16 v6, 0xe3

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x5

    goto/16 :goto_1

    :sswitch_a
    const/16 v6, 0xf

    goto/16 :goto_1

    :sswitch_b
    const/16 v6, 0x14

    goto/16 :goto_1

    :sswitch_c
    const/16 v6, 0x15

    goto/16 :goto_1

    :sswitch_d
    const/16 v6, 0x19

    goto/16 :goto_1

    :sswitch_e
    const/16 v6, 0x2e

    goto/16 :goto_1

    :sswitch_f
    const/16 v6, 0x2f

    goto/16 :goto_1

    :sswitch_10
    const/16 v6, 0x30

    goto/16 :goto_1

    :sswitch_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_CallUssdException"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x5

    goto/16 :goto_1

    :cond_8
    :sswitch_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_CallUssdException"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x7

    goto/16 :goto_1

    :cond_9
    :sswitch_13
    const/16 v6, 0x67

    goto/16 :goto_1

    :sswitch_14
    move v6, v8

    goto/16 :goto_1

    :sswitch_15
    const/16 v6, 0x23

    goto/16 :goto_1

    .restart local v0    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v3    # "phone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v4    # "serviceState":I
    :cond_a
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    goto/16 :goto_2

    .restart local v5    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :cond_b
    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sipError:I

    const/16 v9, 0xc8

    if-ne v6, v9, :cond_c

    move v6, v7

    goto/16 :goto_1

    :cond_c
    if-ne v4, v13, :cond_d

    const/16 v6, 0x11

    goto/16 :goto_1

    :cond_d
    if-eq v4, v8, :cond_e

    if-ne v4, v7, :cond_10

    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v8, "CscFeature_RIL_EnableDSAC"

    invoke-virtual {v6, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/16 v6, 0x10

    if-ne p1, v6, :cond_f

    move v6, v7

    goto/16 :goto_1

    :cond_f
    const/16 v6, 0x12

    goto/16 :goto_1

    :cond_10
    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v5, v6, :cond_11

    const/16 v6, 0x13

    goto/16 :goto_1

    :cond_11
    const v6, 0xffff

    if-ne p1, v6, :cond_15

    iget-object v6, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v6}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v6

    if-eqz v6, :cond_12

    const/16 v6, 0x16

    goto/16 :goto_1

    :cond_12
    iget-object v6, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v6}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v6

    if-eqz v6, :cond_13

    const/16 v6, 0x18

    goto/16 :goto_1

    :cond_13
    iget-object v6, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v6}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v6

    if-eqz v6, :cond_14

    const/16 v6, 0x17

    goto/16 :goto_1

    :cond_14
    const/16 v6, 0x24

    goto/16 :goto_1

    :cond_15
    const/16 v6, 0x10

    if-ne p1, v6, :cond_16

    move v6, v7

    goto/16 :goto_1

    :cond_16
    const/16 v6, 0x24

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x579 -> :sswitch_3
        0x83f -> :sswitch_1
        0x840 -> :sswitch_2
        0x841 -> :sswitch_4
        0x842 -> :sswitch_5
        0x843 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_12
        0x11 -> :sswitch_0
        0x12 -> :sswitch_7
        0x13 -> :sswitch_7
        0x22 -> :sswitch_8
        0x26 -> :sswitch_11
        0x29 -> :sswitch_8
        0x2a -> :sswitch_8
        0x2c -> :sswitch_8
        0x31 -> :sswitch_8
        0x3a -> :sswitch_9
        0x44 -> :sswitch_a
        0xf0 -> :sswitch_b
        0xf1 -> :sswitch_c
        0xf4 -> :sswitch_e
        0xf5 -> :sswitch_f
        0xf6 -> :sswitch_10
        0x3f1 -> :sswitch_15
        0x44c -> :sswitch_13
        0x44e -> :sswitch_14
    .end sparse-switch
.end method

.method disconnectCauseFromCode(II)I
    .locals 2
    .param p1, "causeCode"    # I
    .param p2, "callFailCause"    # I

    .prologue
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VoiceCall_EnableDetailCallEndCause"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit16 v0, p2, 0xbb8

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(I)I

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xce

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x64

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xd8

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xda

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xdb

    goto :goto_0

    :sswitch_6
    const/16 v0, 0xdd

    goto :goto_0

    :sswitch_7
    const/16 v0, 0xdf

    goto :goto_0

    :sswitch_8
    const/16 v0, 0xe3

    goto :goto_0

    :sswitch_9
    const/16 v0, 0xe6

    goto :goto_0

    :sswitch_a
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_b
    const/16 v0, 0xca

    goto :goto_0

    :sswitch_c
    const/16 v0, 0xcb

    goto :goto_0

    :sswitch_d
    const/16 v0, 0xcc

    goto :goto_0

    :sswitch_e
    const/16 v0, 0xcd

    goto :goto_0

    :sswitch_f
    const/16 v0, 0xcf

    goto :goto_0

    :sswitch_10
    const/16 v0, 0xd1

    goto :goto_0

    :sswitch_11
    const/16 v0, 0xd2

    goto :goto_0

    :sswitch_12
    const/16 v0, 0xd3

    goto :goto_0

    :sswitch_13
    const/16 v0, 0xd4

    goto :goto_0

    :sswitch_14
    const/16 v0, 0xd5

    goto :goto_0

    :sswitch_15
    const/16 v0, 0xd9

    goto :goto_0

    :sswitch_16
    const/16 v0, 0xdc

    goto :goto_0

    :sswitch_17
    const/16 v0, 0xde

    goto :goto_0

    :sswitch_18
    const/16 v0, 0xe0

    goto :goto_0

    :sswitch_19
    const/16 v0, 0xe1

    goto :goto_0

    :sswitch_1a
    const/16 v0, 0xe2

    goto :goto_0

    :sswitch_1b
    const/16 v0, 0xe4

    goto :goto_0

    :sswitch_1c
    const/16 v0, 0xe5

    goto :goto_0

    :sswitch_1d
    const/16 v0, 0xe7

    goto :goto_0

    :sswitch_1e
    const/16 v0, 0xe8

    goto :goto_0

    :sswitch_1f
    const/16 v0, 0xe9

    goto :goto_0

    :sswitch_20
    const/16 v0, 0xea

    goto :goto_0

    :sswitch_21
    const/16 v0, 0xeb

    goto :goto_0

    :sswitch_22
    const/16 v0, 0xec

    goto :goto_0

    :sswitch_23
    const/16 v0, 0xed

    goto :goto_0

    :sswitch_24
    const/16 v0, 0xee

    goto :goto_0

    :sswitch_25
    const/16 v0, 0xef

    goto :goto_0

    :sswitch_26
    const/16 v0, 0xf0

    goto :goto_0

    :sswitch_27
    const/16 v0, 0xf1

    goto :goto_0

    :sswitch_28
    const/16 v0, 0xf2

    goto :goto_0

    :sswitch_29
    const/16 v0, 0xf3

    goto :goto_0

    :sswitch_2a
    const/16 v0, 0xf4

    goto :goto_0

    :sswitch_2b
    const/16 v0, 0xf5

    goto/16 :goto_0

    :sswitch_2c
    const/16 v0, 0xf6

    goto/16 :goto_0

    :sswitch_2d
    const/16 v0, 0xf7

    goto/16 :goto_0

    :sswitch_2e
    const/16 v0, 0xd0

    goto/16 :goto_0

    :sswitch_2f
    const/16 v0, 0xd6

    goto/16 :goto_0

    :sswitch_30
    const/16 v0, 0xd7

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x24

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xbb9 -> :sswitch_b
        0xbbb -> :sswitch_c
        0xbbe -> :sswitch_d
        0xbc0 -> :sswitch_e
        0xbc8 -> :sswitch_a
        0xbc9 -> :sswitch_0
        0xbca -> :sswitch_1
        0xbcb -> :sswitch_2
        0xbcd -> :sswitch_f
        0xbce -> :sswitch_2e
        0xbd1 -> :sswitch_10
        0xbd2 -> :sswitch_11
        0xbd3 -> :sswitch_12
        0xbd4 -> :sswitch_13
        0xbd5 -> :sswitch_14
        0xbd6 -> :sswitch_2f
        0xbd7 -> :sswitch_30
        0xbda -> :sswitch_3
        0xbde -> :sswitch_15
        0xbe1 -> :sswitch_4
        0xbe2 -> :sswitch_5
        0xbe3 -> :sswitch_16
        0xbe4 -> :sswitch_6
        0xbe7 -> :sswitch_17
        0xbe9 -> :sswitch_7
        0xbea -> :sswitch_18
        0xbef -> :sswitch_19
        0xbf1 -> :sswitch_1a
        0xbf2 -> :sswitch_8
        0xbf7 -> :sswitch_1b
        0xbf9 -> :sswitch_1c
        0xbfc -> :sswitch_9
        0xbfd -> :sswitch_1d
        0xbfe -> :sswitch_1e
        0xc07 -> :sswitch_1f
        0xc09 -> :sswitch_20
        0xc0f -> :sswitch_21
        0xc10 -> :sswitch_22
        0xc13 -> :sswitch_23
        0xc17 -> :sswitch_24
        0xc18 -> :sswitch_25
        0xc19 -> :sswitch_26
        0xc1a -> :sswitch_27
        0xc1b -> :sswitch_28
        0xc1c -> :sswitch_29
        0xc1d -> :sswitch_2a
        0xc1e -> :sswitch_2b
        0xc27 -> :sswitch_2c
        0xc37 -> :sswitch_2d
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->clearPostDialListeners()V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseAllWakeLocks()V

    return-void
.end method

.method fakeHoldBeforeDial()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GsmConnection"

    const-string v1, "[GSMConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->clearPostDialListeners()V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    return-void
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getCallFailCause()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callFailCause:I

    return v0
.end method

.method public getDisconnectCause()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method getGSMIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "GSM index not yet assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method protected getIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    return v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberPresentation:I

    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDialString:Ljava/lang/String;

    return-object v0
.end method

.method protected getOwner()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    return-object v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    return v0
.end method

.method public getRawDisconnectCause()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->rawCause:I

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    if-gt v3, v4, :cond_2

    :cond_0
    const-string v1, ""

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "subStr":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "SKT"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "KTT"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "LGT"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, "wIndex":I
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, "pIndex":I
    if-lez v2, :cond_4

    if-lt v2, v0, :cond_3

    if-gtz v0, :cond_4

    :cond_3
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    if-lez v0, :cond_1

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mVendorCause:Ljava/lang/String;

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMultiparty()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUUSInfo()Lcom/android/internal/telephony/UUSInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setUserData(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method onConnectedInOrOut()V
    .locals 4

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTimeReal:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDuration:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    return-void
.end method

.method onDisconnect(I)Z
    .locals 26
    .param p1, "cause"    # I

    .prologue
    const/4 v5, 0x0

    .local v5, "changed":Z
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnectTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTimeReal:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->mDuration:J

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    const-string v19, "GsmConnection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onDisconnect: cause="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_RIL_EnableTotalCallTime"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->needUpdateCallTime:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    const-string v19, "GsmConnection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateTotalCallTime: try to update with time: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDuration:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->needUpdateCallTime:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v10

    .local v10, "imsi":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "001010123456789"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "999999999999999"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "520360110000010"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "512010123456789"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->updateTotalCallTime()V

    .end local v10    # "imsi":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Common_SupportActivationDate"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    const-string v19, "GsmConnection"

    const-string v20, "Set call time"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .local v11, "mphonestate1":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "imsi":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v6, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    const-string v19, "gsm.nitz.time"

    const-string v20, "0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .local v14, "nitzTime":J
    const-wide/16 v20, 0x0

    cmp-long v19, v14, v20

    if-eqz v19, :cond_6

    const-string v19, "gsm.nitz.time-elapsedtime"

    const-string v20, "0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .local v16, "start":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sub-long v8, v20, v16

    .local v8, "elapsedTime":J
    const-string v19, "ril.timezoneID"

    const-string v20, "GMT"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, "tzname":Ljava/lang/String;
    new-instance v12, Landroid/text/format/Time;

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local v12, "networkTime":Landroid/text/format/Time;
    add-long v20, v14, v8

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v19, 0x22

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, v12, Landroid/text/format/Time;->year:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, v12, Landroid/text/format/Time;->month:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, v12, Landroid/text/format/Time;->monthDay:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, v12, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, v12, Landroid/text/format/Time;->minute:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, v12, Landroid/text/format/Time;->second:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .end local v8    # "elapsedTime":J
    .end local v12    # "networkTime":Landroid/text/format/Time;
    .end local v16    # "start":J
    .end local v18    # "tzname":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "dos":Ljava/io/DataOutputStream;
    .end local v10    # "imsi":Ljava/lang/String;
    .end local v11    # "mphonestate1":Lcom/android/internal/telephony/Phone;
    .end local v14    # "nitzTime":J
    :cond_2
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_RIL_SupportVolteTotalCallTime"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    const-string v19, "GsmConnection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mDuration : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getDurationMillis()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mDuration : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getDurationMillis()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "imsi":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, "001010123456789"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, "999999999999999"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, "520360110000010"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, "512010123456789"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    :try_start_2
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v6    # "dos":Ljava/io/DataOutputStream;
    const/16 v13, 0xf

    .local v13, "size":I
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v6, v13}, Ljava/io/DataOutputStream;->writeShort(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getDurationMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    const-string v19, "GsmConnection"

    const-string v20, "Set call time"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "dos":Ljava/io/DataOutputStream;
    .end local v10    # "imsi":Ljava/lang/String;
    .end local v13    # "size":I
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCall;->connectionDisconnected(Lcom/android/internal/telephony/gsm/GsmConnection;)Z

    move-result v5

    :cond_4
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->clearPostDialListeners()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    return v5

    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "dos":Ljava/io/DataOutputStream;
    .restart local v10    # "imsi":Ljava/lang/String;
    .restart local v11    # "mphonestate1":Lcom/android/internal/telephony/Phone;
    .restart local v14    # "nitzTime":J
    :cond_6
    :try_start_3
    const-string v19, "GsmConnection"

    const-string v20, " didn\'t receive nitzTime!!"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v19, 0x22

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 v19, 0x7bc

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .end local v14    # "nitzTime":J
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    :try_start_4
    const-string v19, "GsmConnection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error in setting call status to 1, exception is :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_7

    :try_start_5
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    :cond_7
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v19

    goto/16 :goto_1

    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    if-eqz v6, :cond_8

    :try_start_6
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_9
    :goto_5
    throw v19

    .end local v11    # "mphonestate1":Lcom/android/internal/telephony/Phone;
    .restart local v13    # "size":I
    :cond_a
    const/16 v19, 0x0

    :try_start_7
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "dos":Ljava/io/DataOutputStream;
    .end local v13    # "size":I
    :catch_2
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    const-string v19, "GsmConnection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error in setting call status to 1, exception is :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "dos":Ljava/io/DataOutputStream;
    .restart local v13    # "size":I
    :cond_b
    const/16 v19, 0x1

    :try_start_8
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_3

    .end local v13    # "size":I
    .restart local v11    # "mphonestate1":Lcom/android/internal/telephony/Phone;
    :catch_3
    move-exception v20

    goto :goto_5

    .restart local v14    # "nitzTime":J
    :catch_4
    move-exception v19

    goto/16 :goto_1
.end method

.method onHangupLocal()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mVendorCause:Ljava/lang/String;

    return-void
.end method

.method onRemoteDisconnect(ILjava/lang/String;)V
    .locals 5
    .param p1, "causeCode"    # I
    .param p2, "vendorCause"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mVendorCause:Ljava/lang/String;

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->rawCause:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sipError:I

    if-eqz p2, :cond_0

    const-string v2, "-"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "vendorCauseArray":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->rawCause:I

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sipError:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "vendorCauseArray":[Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v2, "GsmConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRemoteDisconnect: rawCause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->rawCause:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sipError="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sipError:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_VoiceCall_EnableDetailCallEndCause"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->rawCause:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->rawCause:I

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    :goto_1
    return-void

    .restart local v1    # "vendorCauseArray":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v2, "GsmConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRemoteDisconnect: error parsing vendorCause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    const-string v2, "GsmConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown vendorCause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "vendorCauseArray":[Ljava/lang/String;
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callFailCause:I

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    goto :goto_1
.end method

.method onStartedHolding()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHoldingStartTime:J

    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    const-string v0, "GsmConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    const-string v1, "GsmConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnsweringMessageState(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsInAnsweringMessage:Z

    return-void
.end method

.method public setDisconnectCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    return-void
.end method

.method update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 14
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    .local v0, "changed":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v6

    .local v6, "wasConnectingInOrOut":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_a

    move v7, v8

    .local v7, "wasHolding":Z
    :goto_0
    iget-object v10, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    .local v2, "newParent":Lcom/android/internal/telephony/gsm/GsmCall;
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v10, :cond_b

    const-string v10, "update: mOrigConnection is not null"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v10, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v0, 0x1

    const-string v10, ""

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    :cond_1
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--dssds----"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_SupportCNAP"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    iget v10, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    :goto_3
    iget v10, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberPresentation:I

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v2, v10, :cond_11

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v10, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    :cond_2
    invoke-virtual {v2, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    const/4 v0, 0x1

    :goto_4
    iget-object v10, p1, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget-boolean v11, p1, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/CallDetails;->setIsMpty(Z)V

    iget v10, p1, Lcom/android/internal/telephony/DriverCall;->id:I

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->setId(I)V

    iget-object v10, p1, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->setCallDetails(Lcom/android/internal/telephony/CallDetails;)Z

    move-result v10

    or-int/2addr v0, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update: parent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", hasNewParent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v2, v11, :cond_3

    move v9, v8

    :cond_3
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", wasConnectingInOrOut="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", wasHolding="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isConnectingInOrOut="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", changed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_EnableTotalCallTime"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v0, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_4

    const-string v9, "GsmConnection"

    const-string v10, "updateTotalCallTime: call active"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->needUpdateCallTime:Z

    :cond_4
    if-eqz v6, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onConnectedInOrOut()V

    :cond_5
    if-eqz v0, :cond_6

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update() - callDetails: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    const/16 v8, 0xf

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getVideoState()I

    move-result v4

    .local v4, "oldVideoState":I
    const/4 v3, 0x2

    .local v3, "newVideoState":I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v8, v8, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-static {v8}, Lcom/android/internal/telephony/CallDetails;->callTypeToVideoState(I)I

    move-result v3

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "oldVideoState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newVideoState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    if-eq v4, v3, :cond_8

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->setVideoState(I)V

    const/4 v0, 0x1

    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Connection Update: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .end local v3    # "newVideoState":I
    .end local v4    # "oldVideoState":I
    :cond_9
    return v0

    .end local v2    # "newParent":Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v7    # "wasHolding":Z
    :cond_a
    move v7, v9

    goto/16 :goto_0

    .restart local v2    # "newParent":Lcom/android/internal/telephony/gsm/GsmCall;
    .restart local v7    # "wasHolding":Z
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " mNumberConverted "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberConverted:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberConverted:Z

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConvertedNumber:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_c
    const-string v10, "update: phone # changed!"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    iget-object v10, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    const-string v10, "true"

    const-string v11, "ril.sat_setup_call"

    const-string v12, "false"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "isSatSetupCall":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "satsetupcall:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_d

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_d
    new-array v10, v8, [Ljava/lang/String;

    const-string v11, "KTT"

    aput-object v11, v10, v9

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDialString:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDialString:Ljava/lang/String;

    const-string v11, "#31#"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    const-string v11, "#31#"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "#31#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_1

    .end local v1    # "isSatSetupCall":Z
    :cond_f
    iget-object v10, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v0, 0x1

    iget-object v10, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_10
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    goto/16 :goto_3

    :cond_11
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v10, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCall;->update(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v5

    .local v5, "parentStateChange":Z
    if-nez v0, :cond_12

    if-eqz v5, :cond_13

    :cond_12
    move v0, v8

    :goto_5
    goto/16 :goto_4

    :cond_13
    move v0, v9

    goto :goto_5
.end method
