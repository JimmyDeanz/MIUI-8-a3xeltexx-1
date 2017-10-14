.class public Lcom/android/internal/telephony/SlteRIL;
.super Lcom/android/internal/telephony/RIL;
.source "SlteRIL.java"


# static fields
.field static final RILJ_LOGD:Z = true

.field static final RILJ_LOGV:Z = true

.field private static final RIL_REQUEST_DIAL_EMERGENCY_CALL:I = 0x2711

.field private static final RIL_UNSOL_AM:I = 0x2b02

.field private static final RIL_UNSOL_CLOCK_CTRL:I = 0x2b0e

.field private static final RIL_UNSOL_DEVICE_READY_NOTI:I = 0x2b00

.field private static final RIL_UNSOL_DUN_PIN_CONTROL_SIGNAL:I = 0x2b03

.field private static final RIL_UNSOL_SIM_PB_READY:I = 0x2b0d

.field private static final RIL_UNSOL_SIM_SWAP_STATE_CHANGED:I = 0x2b31

.field private static final RIL_UNSOL_STK_CALL_CONTROL_RESULT:I = 0x2afb

.field private static final RIL_UNSOL_STK_SEND_SMS_RESULT:I = 0x2afa

.field private static final RIL_UNSOL_WB_AMR_STATE:I = 0x2b09

.field private static final SAMSUNG_UNSOL_RESPONSE_BASE:I = 0x2af8


# instance fields
.field protected mQANElements:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/SlteRIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 68
    const-string/jumbo v0, "ro.ril.telephony.mqanelements"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SlteRIL;->mQANElements:I

    .line 75
    return-void
.end method

.method private constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "smscPDU"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method private dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 157
    const/16 v1, 0x2711

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 158
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SlteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SlteRIL;->riljLog(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SlteRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 154
    return-void
.end method


# virtual methods
.method public acceptCall(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 82
    const/16 v1, 0x28

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 85
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SlteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SlteRIL;->riljLog(Ljava/lang/String;)V

    .line 87
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SlteRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 80
    return-void
.end method

.method public acceptCall(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SlteRIL;->acceptCall(ILandroid/os/Message;)V

    .line 119
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/telephony/SlteRIL;->dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V

    .line 128
    return-void

    .line 131
    :cond_0
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 133
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    if-nez p3, :cond_1

    .line 140
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SlteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SlteRIL;->riljLog(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SlteRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 125
    return-void

    .line 142
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method

.method protected processUnsolicited(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "type"    # I

    .prologue
    const/4 v7, 0x0

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 366
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 367
    .local v2, "origResponse":I
    move v1, v2

    .line 370
    .local v1, "newResponse":I
    sparse-switch v2, :sswitch_data_0

    .line 383
    const/16 v4, 0x2af8

    if-lt v2, v4, :cond_0

    .line 384
    const-string/jumbo v4, "RILJ"

    .line 385
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "XMM7260: unknown unsolicited response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 384
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    :goto_0
    if-eq v1, v2, :cond_1

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SlteRIL: remap unsolicited response from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 393
    const-string/jumbo v5, " to "

    .line 392
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SlteRIL;->riljLog(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 395
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    :cond_1
    sparse-switch v1, :sswitch_data_1

    .line 421
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 424
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;I)V

    .line 425
    return-void

    .line 375
    :sswitch_0
    const-string/jumbo v4, "RILJ"

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "XMM7260: ignoring unsolicited response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 375
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void

    .line 380
    :sswitch_1
    const/16 v1, 0x3fb

    .line 381
    goto :goto_0

    .line 400
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SlteRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 402
    .local v3, "ret":Ljava/lang/Object;
    const-string/jumbo v5, "RILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "XMM7260: am="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_2
    :goto_1
    return-void

    .line 405
    .end local v3    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SlteRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 406
    .restart local v3    # "ret":Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/internal/telephony/SlteRIL;->mCatSendSmsResultRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_2

    .line 407
    iget-object v4, p0, Lcom/android/internal/telephony/SlteRIL;->mCatSendSmsResultRegistrant:Landroid/os/Registrant;

    .line 408
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v7, v3, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 407
    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 413
    .end local v3    # "ret":Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SlteRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 417
    .end local v3    # "ret":Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SlteRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 370
    :sswitch_data_0
    .sparse-switch
        0x2afb -> :sswitch_0
        0x2b00 -> :sswitch_0
        0x2b0d -> :sswitch_0
        0x2b0e -> :sswitch_0
        0x2b31 -> :sswitch_1
    .end sparse-switch

    .line 398
    :sswitch_data_1
    .sparse-switch
        0x2afa -> :sswitch_3
        0x2b02 -> :sswitch_2
        0x2b03 -> :sswitch_5
        0x2b09 -> :sswitch_4
    .end sparse-switch
.end method

.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 218
    .local v5, "num":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    .local v6, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "responseCallList: num="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 222
    const-string/jumbo v11, " mEmergencyCallbackModeRegistrant="

    .line 221
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 222
    iget-object v11, p0, Lcom/android/internal/telephony/SlteRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    .line 221
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 223
    const-string/jumbo v11, " mTestingEmergencyCall="

    .line 221
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 223
    iget-object v11, p0, Lcom/android/internal/telephony/SlteRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    .line 221
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SlteRIL;->riljLog(Ljava/lang/String;)V

    .line 225
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_6

    .line 226
    new-instance v3, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v3}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 228
    .local v3, "dc":Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-static {v10}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v10

    iput-object v10, v3, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v3, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v3, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, v3, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, v3, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v3, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 235
    .local v9, "voiceSettings":I
    if-nez v9, :cond_2

    const/4 v10, 0x0

    :goto_3
    iput-boolean v10, v3, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .local v1, "call_type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 239
    .local v0, "call_domain":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "csv":Ljava/lang/String;
    const-string/jumbo v10, "Samsung call details: type=%d, domain=%d, csv=%s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x2

    aput-object v2, v11, v12

    .line 241
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SlteRIL;->riljLog(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_4
    iput-boolean v10, v3, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 248
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "responseCallList dc.number="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SlteRIL;->riljLog(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-static {v10}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v10

    iput v10, v3, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 253
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "responseCallList dc.name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SlteRIL;->riljLog(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-static {v10}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v10

    iput v10, v3, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 259
    .local v8, "uusInfoPresent":I
    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    .line 260
    new-instance v10, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v10}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v10, v3, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 261
    iget-object v10, v3, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 262
    iget-object v10, v3, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 264
    .local v7, "userData":[B
    iget-object v10, v3, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v10, v7}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 265
    const-string/jumbo v10, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 266
    iget-object v12, v3, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    iget-object v12, v3, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 267
    iget-object v12, v3, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v12

    array-length v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v11, v13

    .line 265
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SlteRIL;->riljLogv(Ljava/lang/String;)V

    .line 268
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Incoming UUS : data (string)="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 269
    new-instance v11, Ljava/lang/String;

    iget-object v12, v3, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    .line 268
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SlteRIL;->riljLogv(Ljava/lang/String;)V

    .line 270
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Incoming UUS : data (hex): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 271
    iget-object v11, v3, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v11}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    .line 270
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SlteRIL;->riljLogv(Ljava/lang/String;)V

    .line 274
    iget-object v10, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v11, v3, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v10, v11}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 279
    .end local v7    # "userData":[B
    :goto_5
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-boolean v10, v3, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v10, :cond_5

    .line 282
    iget-object v10, p0, Lcom/android/internal/telephony/SlteRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 283
    const-string/jumbo v10, "InCall VoicePrivacy is enabled"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SlteRIL;->riljLog(Ljava/lang/String;)V

    .line 225
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 231
    .end local v0    # "call_domain":I
    .end local v1    # "call_type":I
    .end local v2    # "csv":Ljava/lang/String;
    .end local v8    # "uusInfoPresent":I
    .end local v9    # "voiceSettings":I
    :cond_0
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 232
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 235
    .restart local v9    # "voiceSettings":I
    :cond_2
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 245
    .restart local v0    # "call_domain":I
    .restart local v1    # "call_type":I
    .restart local v2    # "csv":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 276
    .restart local v8    # "uusInfoPresent":I
    :cond_4
    const-string/jumbo v10, "Incoming UUS : NOT present!"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SlteRIL;->riljLogv(Ljava/lang/String;)V

    goto :goto_5

    .line 285
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/SlteRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 286
    const-string/jumbo v10, "InCall VoicePrivacy is disabled"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SlteRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_6

    .line 290
    .end local v0    # "call_domain":I
    .end local v1    # "call_type":I
    .end local v2    # "csv":Ljava/lang/String;
    .end local v3    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v8    # "uusInfoPresent":I
    .end local v9    # "voiceSettings":I
    :cond_6
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 292
    if-nez v5, :cond_7

    iget-object v10, p0, Lcom/android/internal/telephony/SlteRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 293
    iget-object v10, p0, Lcom/android/internal/telephony/SlteRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v10, :cond_7

    .line 294
    iget-object v10, p0, Lcom/android/internal/telephony/SlteRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v10, :cond_7

    .line 295
    const-string/jumbo v10, "responseCallList: call ended, testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SlteRIL;->riljLog(Ljava/lang/String;)V

    .line 297
    iget-object v10, p0, Lcom/android/internal/telephony/SlteRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v10}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 301
    :cond_7
    return-object v6
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 175
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 176
    .local v1, "cardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 184
    .local v3, "numApplications":I
    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    .line 185
    const/16 v3, 0x8

    .line 187
    :cond_0
    new-array v4, v3, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 188
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 189
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 190
    .local v0, "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 204
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v0, v4, v2

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_1
    return-object v1
.end method

.method protected responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SlteRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 334
    .local v5, "strings":[Ljava/lang/String;
    array-length v6, v5

    iget v7, p0, Lcom/android/internal/telephony/SlteRIL;->mQANElements:I

    rem-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 335
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "RIL_REQUEST_QUERY_AVAILABLE_NETWORKS: invalid response. Got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 336
    array-length v8, v5

    .line 335
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 336
    const-string/jumbo v8, " strings, expected multiple of "

    .line 335
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 336
    iget v8, p0, Lcom/android/internal/telephony/SlteRIL;->mQANElements:I

    .line 335
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 339
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v6, v5

    iget v7, p0, Lcom/android/internal/telephony/SlteRIL;->mQANElements:I

    div-int/2addr v6, v7

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_1

    .line 341
    add-int/lit8 v6, v0, 0x0

    aget-object v2, v5, v6

    .line 342
    .local v2, "strOperatorLong":Ljava/lang/String;
    add-int/lit8 v6, v0, 0x2

    aget-object v3, v5, v6

    .line 343
    .local v3, "strOperatorNumeric":Ljava/lang/String;
    add-int/lit8 v6, v0, 0x3

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, "strState":Ljava/lang/String;
    const-string/jumbo v6, "RILJ"

    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "XMM7260: Add OperatorInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 347
    const-string/jumbo v8, ", "

    .line 346
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 348
    const-string/jumbo v8, ", "

    .line 346
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 349
    const-string/jumbo v8, ", "

    .line 346
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 345
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v6, Lcom/android/internal/telephony/OperatorInfo;

    invoke-direct {v6, v2, v2, v3, v4}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget v6, p0, Lcom/android/internal/telephony/SlteRIL;->mQANElements:I

    add-int/2addr v0, v6

    goto :goto_0

    .line 357
    .end local v2    # "strOperatorLong":Ljava/lang/String;
    .end local v3    # "strOperatorNumeric":Ljava/lang/String;
    .end local v4    # "strState":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 316
    const-string/jumbo v1, "RILJ"

    const-string/jumbo v2, "XMM7260: sendSMSExpectMore"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/16 v1, 0x19

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 319
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/SlteRIL;->constructGsmSendSmsRilRequest(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SlteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SlteRIL;->riljLog(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SlteRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 315
    return-void
.end method

.method public setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "authType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 97
    const/16 v1, 0x6f

    invoke-static {v1, p6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 99
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    const-string/jumbo v1, "Set RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SlteRIL;->riljLog(Ljava/lang/String;)V

    .line 101
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SlteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    const-string/jumbo v2, ", apn:"

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    const-string/jumbo v2, ", protocol:"

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    const-string/jumbo v2, ", authType:"

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    const-string/jumbo v2, ", username:"

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    const-string/jumbo v2, ", password:"

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SlteRIL;->riljLog(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SlteRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 96
    return-void
.end method
