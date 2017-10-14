.class public Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
.super Ljava/lang/Object;
.source "SmsSessionEventBuilder.java"


# instance fields
.field mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setType(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    return-object v0
.end method

.method public setDataCalls([Lcom/android/internal/telephony/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "dataCalls"    # [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    return-object p0
.end method

.method public setDelay(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "delay"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setDelay(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    return-object p0
.end method

.method public setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "code"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setErrorCode(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    return-object p0
.end method

.method public setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "format"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setFormat(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    return-object p0
.end method

.method public setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "capabilities"    # Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    return-object p0
.end method

.method public setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    return-object p0
.end method

.method public setRilErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "errno"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setError(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    return-object p0
.end method

.method public setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setRilRequestId(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    return-object p0
.end method

.method public setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    return-object p0
.end method

.method public setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "settings"    # Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    return-object p0
.end method

.method public setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "tech"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setTech(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    return-object p0
.end method
