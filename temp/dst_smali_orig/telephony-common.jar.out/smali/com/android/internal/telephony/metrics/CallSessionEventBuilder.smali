.class public Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
.super Ljava/lang/Object;
.source "CallSessionEventBuilder.java"


# instance fields
.field private final mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object v0
.end method

.method public setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "callIndex"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setCallIndex(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object p0
.end method

.method public setCallState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "state"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setCallState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object p0
.end method

.method public setDataCalls([Lcom/android/internal/telephony/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "dataCalls"    # [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    return-object p0
.end method

.method public setDelay(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "delay"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setDelay(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object p0
.end method

.method public setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "capabilities"    # Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    return-object p0
.end method

.method public setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "imsCommand"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setImsCommand(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object p0
.end method

.method public setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    return-object p0
.end method

.method public setImsReasonInfo(Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "reasonInfo"    # Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    return-object p0
.end method

.method public setNITZ(J)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setNitzTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object p0
.end method

.method public setPhoneState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "phoneState"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setPhoneState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object p0
.end method

.method public setRilCalls([Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "rilCalls"    # [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    return-object p0
.end method

.method public setRilError(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "rilError"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setError(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object p0
.end method

.method public setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "rilRequestType"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setRilRequest(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object p0
.end method

.method public setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "rilRequestId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setRilRequestId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object p0
.end method

.method public setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    return-object p0
.end method

.method public setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "settings"    # Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    return-object p0
.end method

.method public setSrcAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "tech"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setSrcAccessTech(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object p0
.end method

.method public setSrvccState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "srvccState"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setSrvccState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object p0
.end method

.method public setTargetAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "tech"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setTargetAccessTech(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object p0
.end method
