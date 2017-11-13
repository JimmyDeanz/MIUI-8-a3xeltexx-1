.class public Lcom/android/phone/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUtils$5;,
        Lcom/android/phone/PhoneUtils$CallerInfoToken;,
        Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;,
        Lcom/android/phone/PhoneUtils$ConnectionHandler;,
        Lcom/android/phone/PhoneUtils$FgRingCalls;
    }
.end annotation


# static fields
.field private static mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

.field static sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private static sIsNoiseSuppressionEnabled:Z

.field private static sIsSpeakerEnabled:Z

.field private static sUssdDialog:Landroid/app/AlertDialog;

.field private static sUssdMsg:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 127
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    .line 1605
    new-instance v0, Lcom/android/phone/PhoneUtils$4;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$4;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    return-void
.end method

.method static synthetic access$100()Lcom/android/phone/PhoneUtils$ConnectionHandler;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private static activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 2218
    const/4 v0, 0x0

    .line 2219
    .local v0, "activated":Z
    sget v2, Lcom/android/phone/PhoneGlobals;->mDockState:I

    if-eqz v2, :cond_0

    .line 2221
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 2224
    .local v1, "app":Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothManager()Lcom/android/phone/BluetoothManager;

    .line 2233
    .end local v1    # "app":Lcom/android/phone/PhoneGlobals;
    :cond_0
    return v0
.end method

.method static answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "ringing"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/16 v4, 0x64

    const/4 v2, 0x1

    .line 494
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 495
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 496
    const-string v2, "PhoneUtils"

    const-string v3, "end active call failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v2, 0x0

    .line 506
    :goto_0
    return v2

    .line 500
    :cond_0
    sget-object v3, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->removeMessages(I)V

    .line 501
    sget-object v3, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 502
    .local v1, "msg":Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 503
    new-instance v3, Lcom/android/phone/PhoneUtils$FgRingCalls;

    invoke-direct {v3, v0, p1}, Lcom/android/phone/PhoneUtils$FgRingCalls;-><init>(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 504
    sget-object v3, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v3, v1}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static answerCall(Lcom/android/internal/telephony/Call;)Z
    .locals 14
    .param p0, "ringingCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 211
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "answerCall("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 213
    .local v1, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v7, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 215
    .local v7, "notifier":Lcom/android/phone/CallNotifier;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 216
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 217
    .local v9, "phoneIsCdma":Z
    :goto_0
    const/4 v0, 0x0

    .line 218
    .local v0, "answered":Z
    const/4 v3, 0x0

    .line 220
    .local v3, "btPhone":Landroid/bluetooth/IBluetoothHeadsetPhone;
    if-eqz v9, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_0

    .line 223
    invoke-virtual {v7}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 227
    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 230
    if-eqz v9, :cond_1

    .line 231
    :try_start_0
    iget-object v11, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v12, :cond_4

    .line 235
    iget-object v11, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v11, v12}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 249
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v6

    .line 252
    .local v6, "isRealIncomingCall":Z
    iget-object v11, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11, p0}, Lcom/android/internal/telephony/CallManager;->acceptCall(Lcom/android/internal/telephony/Call;)V

    .line 253
    const/4 v0, 0x1

    .line 255
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 258
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    .line 260
    .local v10, "speakerActivated":Z
    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothManager()Lcom/android/phone/BluetoothManager;

    move-result-object v2

    .line 270
    .local v2, "btManager":Lcom/android/phone/BluetoothManager;
    if-eqz v6, :cond_2

    if-nez v10, :cond_2

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v2}, Lcom/android/phone/BluetoothManager;->isBluetoothHeadsetAudioOn()Z

    move-result v11

    if-nez v11, :cond_2

    .line 273
    const-string v11, "PhoneUtils"

    const-string v12, "Forcing speaker off due to new incoming call..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v1, v11, v12}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 293
    .end local v2    # "btManager":Lcom/android/phone/BluetoothManager;
    .end local v6    # "isRealIncomingCall":Z
    .end local v10    # "speakerActivated":Z
    :cond_2
    :goto_2
    return v0

    .end local v0    # "answered":Z
    .end local v3    # "btPhone":Landroid/bluetooth/IBluetoothHeadsetPhone;
    .end local v9    # "phoneIsCdma":Z
    :cond_3
    move v9, v11

    .line 216
    goto :goto_0

    .line 240
    .restart local v0    # "answered":Z
    .restart local v3    # "btPhone":Landroid/bluetooth/IBluetoothHeadsetPhone;
    .restart local v9    # "phoneIsCdma":Z
    :cond_4
    iget-object v11, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v11, v12}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 245
    iget-object v11, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 276
    :catch_0
    move-exception v5

    .line 277
    .local v5, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v11, "PhoneUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "answerCall: caught "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    if-eqz v9, :cond_2

    .line 281
    iget-object v11, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    iget-object v12, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v12}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 283
    if-eqz v3, :cond_2

    .line 285
    const/4 v11, 0x0

    :try_start_1
    invoke-interface {v3, v11}, Landroid/bluetooth/IBluetoothHeadsetPhone;->cdmaSetSecondCallState(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 286
    :catch_1
    move-exception v4

    .line 287
    .local v4, "e":Landroid/os/RemoteException;
    const-string v11, "PhoneUtils"

    new-instance v12, Ljava/lang/Throwable;

    invoke-direct {v12}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 1128
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v3

    .line 1129
    .local v3, "pendingMmis":Ljava/util/List;, "Ljava/util/List<+Lcom/android/internal/telephony/MmiCode;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1132
    .local v1, "count":I
    const/4 v0, 0x0

    .line 1133
    .local v0, "canceled":Z
    if-lez v1, :cond_0

    .line 1138
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MmiCode;

    .line 1139
    .local v2, "mmiCode":Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v2}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1140
    invoke-interface {v2}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 1141
    const/4 v0, 0x1

    .line 1144
    .end local v2    # "mmiCode":Lcom/android/internal/telephony/MmiCode;
    :cond_0
    return v0
.end method

.method private static checkCnapSpecialCases(Ljava/lang/String;)I
    .locals 1
    .param p0, "n"    # Ljava/lang/String;

    .prologue
    .line 2102
    const-string v0, "PRIVATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "P"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2106
    :cond_0
    const/4 v0, 0x2

    .line 2115
    :goto_0
    return v0

    .line 2107
    :cond_1
    const-string v0, "UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UNA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2112
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 2115
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
    .locals 18
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mmiCode"    # Lcom/android/internal/telephony/MmiCode;
    .param p3, "dismissCallbackMessage"    # Landroid/os/Message;
    .param p4, "previousAlert"    # Landroid/app/AlertDialog;

    .prologue
    .line 893
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    .line 895
    .local v2, "app":Lcom/android/phone/PhoneGlobals;
    const/4 v13, 0x0

    .line 896
    .local v13, "title":I
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v11

    .line 900
    .local v11, "state":Lcom/android/internal/telephony/MmiCode$State;
    sget-object v14, Lcom/android/phone/PhoneUtils$5;->$SwitchMap$com$android$internal$telephony$MmiCode$State:[I

    invoke-virtual {v11}, Lcom/android/internal/telephony/MmiCode$State;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 926
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected MmiCode state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 903
    :pswitch_0
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v12

    .line 929
    .local v12, "text":Ljava/lang/CharSequence;
    :goto_0
    if-eqz p4, :cond_0

    .line 930
    invoke-virtual/range {p4 .. p4}, Landroid/app/AlertDialog;->dismiss()V

    .line 935
    :cond_0
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v14

    if-eqz v14, :cond_3

    sget-object v14, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v11, v14, :cond_3

    .line 942
    new-instance v10, Landroid/app/ProgressDialog;

    sget v14, Lmiui/R$style;->Theme_Light_Dialog:I

    invoke-direct {v10, v2, v14}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 943
    .local v10, "pd":Landroid/app/ProgressDialog;
    invoke-virtual {v10, v13}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 944
    invoke-virtual {v10, v12}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 945
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 946
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 947
    invoke-virtual {v10}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x7d8

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    .line 948
    invoke-virtual {v10}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    .line 951
    invoke-virtual {v10}, Landroid/app/ProgressDialog;->show()V

    .line 955
    invoke-virtual {v2, v10}, Lcom/android/phone/PhoneGlobals;->setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V

    .line 1117
    .end local v10    # "pd":Landroid/app/ProgressDialog;
    :cond_1
    :goto_1
    return-void

    .line 907
    .end local v12    # "text":Ljava/lang/CharSequence;
    :pswitch_1
    const/4 v12, 0x0

    .line 908
    .restart local v12    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 910
    .end local v12    # "text":Ljava/lang/CharSequence;
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 913
    sget v13, Lcom/android/internal/R$string;->PinMmi:I

    .line 914
    const v14, 0x7f0800d1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 915
    .restart local v12    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 922
    .end local v12    # "text":Ljava/lang/CharSequence;
    :cond_2
    :pswitch_3
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v12

    .line 924
    .restart local v12    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 960
    :cond_3
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 961
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/android/phone/PhoneGlobals;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 966
    :cond_4
    sget-object v14, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v11, v14, :cond_7

    .line 970
    if-eqz v12, :cond_1

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-eqz v14, :cond_1

    .line 977
    sget-object v14, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    if-nez v14, :cond_5

    .line 980
    new-instance v14, Landroid/app/AlertDialog$Builder;

    sget v15, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v15, 0x7f0800c3

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    new-instance v15, Lcom/android/phone/PhoneUtils$1;

    invoke-direct {v15}, Lcom/android/phone/PhoneUtils$1;-><init>()V

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    sput-object v14, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    .line 991
    sget-object v14, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x7d9

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    .line 993
    sget-object v14, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    .line 996
    :cond_5
    sget-object v14, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-eqz v14, :cond_6

    .line 997
    sget-object v14, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    const-string v16, "\n"

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f08015a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    const-string v16, "\n"

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    :cond_6
    sget-object v14, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1003
    sget-object v14, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1004
    sget-object v14, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 1031
    :cond_7
    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v14, 0x7f0c0021

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v14}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1033
    .local v3, "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    const-string v14, "layout_inflater"

    invoke-virtual {v3, v14}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 1035
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x7f04000b

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1038
    .local v4, "dialogView":Landroid/view/View;
    const v14, 0x7f0e0021

    invoke-virtual {v4, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 1041
    .local v6, "inputText":Landroid/widget/EditText;
    new-instance v8, Lcom/android/phone/PhoneUtils$2;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v8, v6, v2, v0, v1}, Lcom/android/phone/PhoneUtils$2;-><init>(Landroid/widget/EditText;Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/MmiCode;Lcom/android/internal/telephony/Phone;)V

    .line 1074
    .local v8, "mUSSDDialogListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v14, Landroid/app/AlertDialog$Builder;

    sget v15, Lmiui/R$style;->Theme_Light_Dialog:I

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v14, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x7f0800ca

    invoke-virtual {v14, v15, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x7f0800c0

    invoke-virtual {v14, v15, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 1084
    .local v9, "newDialog":Landroid/app/AlertDialog;
    new-instance v7, Lcom/android/phone/PhoneUtils$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v6, v9}, Lcom/android/phone/PhoneUtils$3;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    .line 1099
    .local v7, "mUSSDDialogInputListener":Landroid/view/View$OnKeyListener;
    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1100
    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 1103
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x7d8

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    .line 1105
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    .line 1109
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 1111
    const/4 v14, -0x1

    invoke-virtual {v9, v14}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/high16 v16, 0x7f0a0000

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 1113
    const/4 v14, -0x2

    invoke-virtual {v9, v14}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/high16 v16, 0x7f0a0000

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .line 900
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mmiCode"    # Lcom/android/internal/telephony/MmiCode;
    .param p2, "buttonCallbackMessage"    # Landroid/os/Message;
    .param p3, "previousAlert"    # Landroid/app/Dialog;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 822
    if-eqz p3, :cond_0

    .line 823
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 855
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 857
    .local v0, "isCancelable":Z
    :goto_0
    if-nez v0, :cond_2

    .line 859
    const v3, 0x7f0800bd

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 860
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 862
    const/4 v1, 0x0

    .line 877
    .end local v2    # "text":Ljava/lang/CharSequence;
    :goto_1
    return-object v1

    .end local v0    # "isCancelable":Z
    :cond_1
    move v0, v4

    .line 855
    goto :goto_0

    .line 869
    .restart local v0    # "isCancelable":Z
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    sget v5, Lmiui/R$style;->Theme_Light_Dialog:I

    invoke-direct {v1, p0, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 870
    .local v1, "pd":Landroid/app/ProgressDialog;
    const v5, 0x7f0800be

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 871
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 872
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 873
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 875
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1
.end method

.method static getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1270
    const/4 v0, 0x0

    .line 1272
    .local v0, "info":Lcom/android/internal/telephony/CallerInfo;
    if-eqz p1, :cond_0

    .line 1276
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 1277
    .local v2, "userDataObject":Ljava/lang/Object;
    instance-of v3, v2, Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 1278
    check-cast v2, Landroid/net/Uri;

    .end local v2    # "userDataObject":Ljava/lang/Object;
    invoke-static {p0, v2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 1279
    if-eqz v0, :cond_0

    .line 1280
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1306
    :cond_0
    :goto_0
    return-object v0

    .line 1283
    .restart local v2    # "userDataObject":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_2

    .line 1285
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2    # "userDataObject":Ljava/lang/Object;
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1290
    :goto_1
    if-nez v0, :cond_0

    .line 1293
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1297
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1298
    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 1299
    if-eqz v0, :cond_0

    .line 1300
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "number":Ljava/lang/String;
    .restart local v2    # "userDataObject":Ljava/lang/Object;
    :cond_2
    move-object v0, v2

    .line 1288
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1
.end method

.method public static getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 1184
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1185
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1186
    const/4 v1, 0x0

    .line 1202
    :goto_0
    return-object v1

    .line 1192
    :cond_0
    const-string v2, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1193
    const-string v2, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, "actualNumberToDial":Ljava/lang/String;
    goto :goto_0

    .line 1202
    .end local v1    # "actualNumberToDial":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 1230
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1231
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1235
    .local v1, "scheme":Ljava/lang/String;
    const-string v3, "sip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1236
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1250
    :cond_0
    return-object v0

    .line 1242
    :cond_1
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1246
    .local v0, "number":Ljava/lang/String;
    const-string v3, "voicemail"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1248
    :cond_2
    new-instance v3, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;

    invoke-direct {v3}, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;-><init>()V

    throw v3
.end method

.method private static getPhoneFromIccId(Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .locals 6
    .param p0, "iccId"    # Ljava/lang/String;

    .prologue
    .line 2528
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2529
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 2530
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v4

    .line 2531
    .local v4, "phoneIccId":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2536
    .end local v0    # "arr$":[Lcom/android/internal/telephony/Phone;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "phoneIccId":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 2529
    .restart local v0    # "arr$":[Lcom/android/internal/telephony/Phone;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v4    # "phoneIccId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2536
    .end local v0    # "arr$":[Lcom/android/internal/telephony/Phone;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "phoneIccId":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getPstnConnectionServiceName()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 2524
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const-class v2, Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 2283
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 2284
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move-object v3, v1

    .line 2285
    check-cast v3, Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v2

    .line 2286
    .local v2, "sipUri":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2294
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "sipUri":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .locals 1
    .param p0, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    .prologue
    .line 2493
    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2495
    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    .line 2497
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I
    .locals 3
    .param p0, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 2501
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getPstnConnectionServiceName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2502
    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getPhoneFromIccId(Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2503
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 2504
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 2507
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method static hangup(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 424
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 426
    .local v0, "cm":Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    const-string v2, "- hangup(Call): hangupForegroundResumeBackground..."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V

    .line 434
    :goto_0
    const/4 v2, 0x1

    .line 439
    .end local v0    # "cm":Lcom/android/internal/telephony/CallManager;
    :goto_1
    return v2

    .line 431
    .restart local v0    # "cm":Lcom/android/internal/telephony/CallManager;
    :cond_0
    const-string v2, "- hangup(Call): regular hangup()..."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    .end local v0    # "cm":Lcom/android/internal/telephony/CallManager;
    :catch_0
    move-exception v1

    .line 436
    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call hangup: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static hangup(Lcom/android/internal/telephony/CallManager;)Z
    .locals 5
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 331
    const/4 v2, 0x0

    .line 332
    .local v2, "hungup":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 333
    .local v3, "ringing":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 334
    .local v1, "fg":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 336
    .local v0, "bg":Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 337
    const-string v4, "hangup(): hanging up ringing call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 338
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 355
    :goto_0
    return v2

    .line 339
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    .line 340
    const-string v4, "hangup(): hanging up foreground call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 341
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    .line 343
    const-string v4, "hangup(): hanging up background call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 344
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_0

    .line 351
    :cond_2
    const-string v4, "hangup(): no active call to hang up"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static hangupActiveCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .param p0, "foreground"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 380
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 394
    const/4 v2, 0x0

    .line 395
    .local v2, "hungUpRingingCall":Z
    const/4 v1, 0x0

    .line 396
    .local v1, "hungUpFgCall":Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 397
    .local v3, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 400
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 401
    const-string v4, "hangupRingingAndActive: Hang up Ringing Call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 402
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 406
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    .line 407
    const-string v4, "hangupRingingAndActive: Hang up Foreground Call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 408
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    .line 411
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 4
    .param p0, "ringing"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 361
    .local v0, "phoneType":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 363
    .local v1, "state":Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 365
    const-string v2, "hangupRingingCall(): regular incoming call: hangup()"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 366
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 374
    :goto_0
    return v2

    .line 373
    :cond_0
    const-string v2, "PhoneUtils"

    const-string v3, "hangupRingingCall: no INCOMING or WAITING call"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 188
    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>(Lcom/android/phone/PhoneUtils$1;)V

    sput-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    .line 193
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 195
    return-void
.end method

.method public static isPhoneAccountActive(Landroid/telephony/SubscriptionManager;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1
    .param p0, "sm"    # Landroid/telephony/SubscriptionManager;
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 2520
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForIccIndex(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 2241
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2247
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2249
    .local v0, "ecmMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2250
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2253
    .end local v0    # "ecmMode":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z
    .locals 1
    .param p0, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 2302
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isRoutableViaGateway(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2197
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2205
    :cond_0
    :goto_0
    return v0

    .line 2200
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2201
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2204
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2205
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static isSpeakerOn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1833
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1834
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2389
    const-string v0, "PhoneUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    return-void
.end method

.method public static makePstnPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 2470
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public static makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 2474
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandleWithPrefix(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public static makePstnPhoneAccountHandle(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 2466
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandleWithPrefix(Ljava/lang/String;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public static makePstnPhoneAccountHandleWithPrefix(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "isEmergency"    # Z

    .prologue
    .line 2481
    if-eqz p2, :cond_0

    const-string v0, "E"

    .line 2483
    .local v0, "id":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p1, p2}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandleWithPrefix(Ljava/lang/String;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    return-object v1

    .line 2481
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static makePstnPhoneAccountHandleWithPrefix(Ljava/lang/String;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "isEmergency"    # Z

    .prologue
    .line 2488
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getPstnConnectionServiceName()Landroid/content/ComponentName;

    move-result-object v0

    .line 2489
    .local v0, "pstnConnectionServiceName":Landroid/content/ComponentName;
    new-instance v1, Landroid/telecom/PhoneAccountHandle;

    invoke-direct {v1, v0, p0}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object v1
.end method

.method static modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    const v7, 0x7f0800b9

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 2132
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, p2

    .line 2178
    .end local p2    # "number":Ljava/lang/String;
    .local v2, "number":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2143
    .end local v2    # "number":Ljava/lang/String;
    .restart local p2    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2145
    .local v0, "absentNumberValues":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne p3, v5, :cond_2

    .line 2147
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2148
    iput v6, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2156
    :cond_2
    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-eq v3, v5, :cond_3

    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-eq v3, p3, :cond_5

    if-ne p3, v5, :cond_5

    .line 2159
    :cond_3
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v1

    .line 2160
    .local v1, "cnapSpecialCase":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 2162
    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 2163
    const v3, 0x7f0800ba

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2171
    :cond_4
    :goto_1
    iput v1, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .end local v1    # "cnapSpecialCase":I
    :cond_5
    move-object v2, p2

    .line 2178
    .end local p2    # "number":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    goto :goto_0

    .line 2164
    .end local v2    # "number":Ljava/lang/String;
    .restart local v1    # "cnapSpecialCase":I
    .restart local p2    # "number":Ljava/lang/String;
    :cond_6
    if-ne v1, v6, :cond_4

    .line 2165
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public static pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "primarySipUri"    # Ljava/lang/String;
    .param p4, "thirdPartyCallComponent"    # Landroid/content/ComponentName;

    .prologue
    .line 2274
    if-eqz p3, :cond_0

    .line 2275
    invoke-static {p0, p3}, Lcom/android/phone/PhoneUtils;->getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2276
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 2279
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method public static placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Z)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "contactRef"    # Landroid/net/Uri;
    .param p4, "isEmergencyCall"    # Z

    .prologue
    .line 542
    sget-object v5, Lcom/android/phone/CallGatewayManager;->EMPTY_INFO:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/phone/CallGatewayManager$RawGatewayInfo;Lcom/android/phone/CallGatewayManager;)I

    move-result v0

    return v0
.end method

.method public static placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/phone/CallGatewayManager$RawGatewayInfo;Lcom/android/phone/CallGatewayManager;)I
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "contactRef"    # Landroid/net/Uri;
    .param p4, "isEmergencyCall"    # Z
    .param p5, "gatewayInfo"    # Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    .param p6, "callGateway"    # Lcom/android/phone/CallGatewayManager;

    .prologue
    .line 570
    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->gatewayUri:Landroid/net/Uri;

    .line 578
    .local v9, "gatewayUri":Landroid/net/Uri;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "placeCall()... number: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", GW: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    if-eqz v9, :cond_2

    const-string v17, "non-null"

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", emergency? "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 582
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    .line 584
    .local v4, "app":Lcom/android/phone/PhoneGlobals;
    const/4 v15, 0x0

    .line 585
    .local v15, "useGateway":Z
    if-eqz v9, :cond_0

    if-nez p4, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isRoutableViaGateway(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 588
    const/4 v15, 0x1

    .line 591
    :cond_0
    const/4 v14, 0x0

    .line 594
    .local v14, "status":I
    if-eqz v15, :cond_5

    .line 597
    if-eqz v9, :cond_1

    const-string v17, "tel"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 598
    :cond_1
    const-string v17, "PhoneUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unsupported URL:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/16 v17, 0x2

    .line 689
    :goto_1
    return v17

    .line 578
    .end local v4    # "app":Lcom/android/phone/PhoneGlobals;
    .end local v14    # "status":I
    .end local v15    # "useGateway":Z
    :cond_2
    const-string v17, "null"

    goto :goto_0

    .line 607
    .restart local v4    # "app":Lcom/android/phone/PhoneGlobals;
    .restart local v14    # "status":I
    .restart local v15    # "useGateway":Z
    :cond_3
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    .line 614
    .local v11, "numberToDial":Ljava/lang/String;
    :goto_2
    iget-object v0, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/4 v10, 0x1

    .line 617
    .local v10, "initiallyIdle":Z
    :goto_3
    :try_start_0
    iget-object v0, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 630
    .local v6, "connection":Lcom/android/internal/telephony/Connection;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    .line 633
    .local v12, "phoneType":I
    if-nez v6, :cond_7

    .line 634
    const/4 v14, 0x2

    :cond_4
    :goto_4
    move/from16 v17, v14

    .line 689
    goto :goto_1

    .line 609
    .end local v6    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v10    # "initiallyIdle":Z
    .end local v11    # "numberToDial":Ljava/lang/String;
    .end local v12    # "phoneType":I
    :cond_5
    move-object/from16 v11, p2

    .restart local v11    # "numberToDial":Ljava/lang/String;
    goto :goto_2

    .line 614
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 618
    .restart local v10    # "initiallyIdle":Z
    :catch_0
    move-exception v8

    .line 622
    .local v8, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v17, "PhoneUtils"

    const-string v18, "Exception from app.mCM.dial()"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    const/16 v17, 0x2

    goto :goto_1

    .line 637
    .end local v8    # "ex":Lcom/android/internal/telephony/CallStateException;
    .restart local v6    # "connection":Lcom/android/internal/telephony/Connection;
    .restart local v12    # "phoneType":I
    :cond_7
    if-eqz p6, :cond_8

    .line 638
    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v0, v6, v1}, Lcom/android/phone/CallGatewayManager;->setGatewayInfoForConnection(Lcom/android/internal/telephony/Connection;Lcom/android/phone/CallGatewayManager$RawGatewayInfo;)V

    .line 641
    :cond_8
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v12, v0, :cond_9

    .line 642
    invoke-static {v4, v6}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Connection;)V

    .line 645
    :cond_9
    if-nez v9, :cond_a

    .line 651
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v7, "content"

    .line 652
    .local v7, "content":Ljava/lang/String;
    if-eqz p3, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 653
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v16

    .line 654
    .local v16, "userDataObject":Ljava/lang/Object;
    if-nez v16, :cond_b

    .line 655
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 670
    .end local v7    # "content":Ljava/lang/String;
    .end local v16    # "userDataObject":Ljava/lang/Object;
    :cond_a
    :goto_5
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p5

    invoke-static {v0, v6, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Lcom/android/phone/CallGatewayManager$RawGatewayInfo;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .line 672
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 676
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)Z

    move-result v13

    .line 678
    .local v13, "speakerActivated":Z
    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getBluetoothManager()Lcom/android/phone/BluetoothManager;

    move-result-object v5

    .line 681
    .local v5, "btManager":Lcom/android/phone/BluetoothManager;
    if-eqz v10, :cond_4

    if-nez v13, :cond_4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v5}, Lcom/android/phone/BluetoothManager;->isBluetoothHeadsetAudioOn()Z

    move-result v17

    if-nez v17, :cond_4

    .line 684
    const-string v17, "PhoneUtils"

    const-string v18, "Forcing speaker off when initiating a new outgoing call..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_4

    .line 660
    .end local v5    # "btManager":Lcom/android/phone/BluetoothManager;
    .end local v13    # "speakerActivated":Z
    .restart local v7    # "content":Ljava/lang/String;
    .restart local v16    # "userDataObject":Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 661
    check-cast v16, Lcom/android/internal/telephony/CallerInfo;

    .end local v16    # "userDataObject":Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_5

    .line 663
    .restart local v16    # "userDataObject":Ljava/lang/Object;
    :cond_c
    check-cast v16, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v16    # "userDataObject":Ljava/lang/Object;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_5
.end method

.method static final registerIccStatus(Landroid/os/Handler;I)V
    .locals 5
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "event"    # I

    .prologue
    .line 2543
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 2544
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    .line 2545
    .local v4, "sim":Lcom/android/internal/telephony/IccCard;
    if-eqz v4, :cond_0

    .line 2547
    invoke-interface {v4, p0, p1, v3}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2543
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2550
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "sim":Lcom/android/internal/telephony/IccCard;
    :cond_1
    return-void
.end method

.method static sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 723
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 724
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 725
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 728
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 731
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_0
    return-void
.end method

.method static setAudioMode()V
    .locals 0

    .prologue
    .line 1912
    return-void
.end method

.method static setAudioMode(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .param p0, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 1918
    return-void
.end method

.method static final setRadioPower(Z)V
    .locals 4
    .param p0, "enabled"    # Z

    .prologue
    .line 2558
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2559
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3, p0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 2558
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2561
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    return-void
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Lcom/android/phone/CallGatewayManager$RawGatewayInfo;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;
    .param p2, "listener"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p3, "cookie"    # Ljava/lang/Object;
    .param p4, "info"    # Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 1357
    if-nez p1, :cond_0

    .line 1359
    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1360
    .local v0, "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iput-object v6, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-object v1, v0

    .line 1597
    .end local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .local v1, "cit":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1364
    .end local v1    # "cit":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v4

    .line 1400
    .local v4, "userDataObject":Ljava/lang/Object;
    instance-of v5, v4, Landroid/net/Uri;

    if-eqz v5, :cond_1

    .line 1404
    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1405
    .restart local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    new-instance v5, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1406
    check-cast v4, Landroid/net/Uri;

    .end local v4    # "userDataObject":Ljava/lang/Object;
    sget-object v5, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v7, p0, v4, v5, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1408
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v5, v7, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1409
    iput-boolean v9, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1411
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    :goto_1
    move-object v1, v0

    .line 1597
    .restart local v1    # "cit":Ljava/lang/Object;
    goto :goto_0

    .line 1415
    .end local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v1    # "cit":Ljava/lang/Object;
    .restart local v4    # "userDataObject":Ljava/lang/Object;
    :cond_1
    if-nez v4, :cond_5

    .line 1418
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1420
    .local v2, "number":Ljava/lang/String;
    if-eqz p4, :cond_2

    sget-object v5, Lcom/android/phone/CallGatewayManager;->EMPTY_INFO:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    if-eq p4, v5, :cond_2

    .line 1423
    iget-object v2, p4, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->trueNumber:Ljava/lang/String;

    .line 1446
    :cond_2
    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1447
    .restart local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    new-instance v5, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1451
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1452
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1454
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1455
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1465
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1468
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v6, v6, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v5, v2, v6}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1471
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v2, v5, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1475
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v5, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-eq v5, v8, :cond_3

    .line 1476
    iput-boolean v8, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1494
    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_1

    .line 1479
    :cond_3
    sget-object v5, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v7, p0, v2, v5, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1481
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v5, v7, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1482
    iput-boolean v9, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_2

    .line 1491
    :cond_4
    iput-boolean v8, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_2

    .line 1500
    .end local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v2    # "number":Ljava/lang/String;
    :cond_5
    instance-of v5, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v5, :cond_b

    move-object v0, v4

    .line 1504
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .line 1507
    .restart local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    if-eqz v5, :cond_6

    .line 1508
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v5, v7, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    goto :goto_1

    .line 1514
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1516
    .local v3, "updatedNumber":Ljava/lang/String;
    if-eqz p4, :cond_7

    .line 1519
    iget-object v3, p4, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->trueNumber:Ljava/lang/String;

    .line 1526
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1528
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1530
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1531
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1532
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1534
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v6, v6, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v5, v3, v6}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1537
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v3, v5, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1552
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v5, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-eq v5, v8, :cond_8

    .line 1553
    iput-boolean v8, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_1

    .line 1555
    :cond_8
    sget-object v5, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v7, p0, v3, v5, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1557
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v5, v7, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1558
    iput-boolean v9, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_1

    .line 1562
    :cond_9
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v5, :cond_a

    .line 1563
    new-instance v5, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1566
    :cond_a
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1568
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1569
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1570
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1579
    iput-boolean v8, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_1

    .line 1589
    .end local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3    # "updatedNumber":Ljava/lang/String;
    :cond_b
    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1590
    .restart local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    check-cast v4, Lcom/android/internal/telephony/CallerInfo;

    .end local v4    # "userDataObject":Ljava/lang/Object;
    iput-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1591
    iput-object v6, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1592
    iput-boolean v8, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_1
.end method

.method static switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .param p0, "heldCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 750
    const-string v2, "switchHoldingAndActive()..."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 752
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 753
    .local v0, "cm":Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 755
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 760
    :goto_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 764
    .end local v0    # "cm":Lcom/android/internal/telephony/CallManager;
    :goto_1
    return-void

    .line 758
    .restart local v0    # "cm":Lcom/android/internal/telephony/CallManager;
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 761
    .end local v0    # "cm":Lcom/android/internal/telephony/CallManager;
    :catch_0
    move-exception v1

    .line 762
    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchHoldingAndActive: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 694
    if-nez p0, :cond_0

    .line 695
    const-string v3, ""

    .line 714
    :goto_0
    return-object v3

    .line 705
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 706
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 707
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 708
    .local v1, "c":C
    const/16 v3, 0x2d

    if-eq v1, v3, :cond_1

    const/16 v3, 0x40

    if-eq v1, v3, :cond_1

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_2

    .line 709
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 706
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 711
    :cond_2
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 714
    .end local v1    # "c":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static turnOnSpeaker(Landroid/content/Context;ZZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z
    .param p2, "store"    # Z

    .prologue
    .line 1800
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 1802
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1803
    .local v1, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 1806
    if-eqz p2, :cond_0

    .line 1807
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 1814
    :cond_0
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 1816
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->setEchoSuppressionEnabled()V

    .line 1817
    return-void
.end method

.method private static updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p0, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 535
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    goto :goto_0
.end method
