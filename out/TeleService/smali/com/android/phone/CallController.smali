.class public Lcom/android/phone/CallController;
.super Landroid/os/Handler;
.source "CallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallController$1;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static sInstance:Lcom/android/phone/CallController;


# instance fields
.field private final mApp:Lcom/android/phone/PhoneGlobals;

.field private final mCM:Lcom/android/internal/telephony/CallManager;

.field private final mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

.field private final mCallLogger:Lcom/android/phone/CallLogger;

.field private mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;Lcom/android/phone/CallGatewayManager;)V
    .locals 2
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "callLogger"    # Lcom/android/phone/CallLogger;
    .param p3, "callGatewayManager"    # Lcom/android/phone/CallGatewayManager;

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 123
    sget-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallController constructor: app = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 125
    iget-object v0, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 126
    iput-object p2, p0, Lcom/android/phone/CallController;->mCallLogger:Lcom/android/phone/CallLogger;

    .line 127
    iput-object p3, p0, Lcom/android/phone/CallController;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    .line 128
    return-void
.end method

.method private checkForOtaspCall(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 689
    invoke-static {p1}, Lcom/android/phone/OtaUtils;->isOtaspCallIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    const-string v0, "CallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForOtaspCall: handling OTASP intent! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-static {p1}, Lcom/android/phone/OtaUtils;->setupOtaspCall(Landroid/content/Intent;)V

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    sget-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "checkForOtaspCall: not an OTASP call."

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 555
    packed-switch p1, :pswitch_data_0

    .line 580
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :pswitch_0
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    .line 577
    :goto_0
    return-object v0

    .line 562
    :pswitch_1
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 573
    :pswitch_2
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 577
    :pswitch_3
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 555
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V
    .locals 7
    .param p1, "status"    # Lcom/android/phone/Constants$CallStatusCode;

    .prologue
    const/high16 v6, 0x10800000

    .line 596
    sget-boolean v3, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleOutgoingCallError(): status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 597
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    const-class v4, Lcom/android/phone/ErrorDialogActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 598
    .local v1, "intent":Landroid/content/Intent;
    const/4 v0, -0x1

    .line 599
    .local v0, "errorMessageId":I
    sget-object v3, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 671
    :pswitch_0
    const-string v3, "CallController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleOutgoingCallError: unexpected status code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const v0, 0x7f080225

    .line 676
    :goto_0
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 677
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 678
    const-string v3, "error_message_id"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3, v1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    .line 681
    :goto_1
    return-void

    .line 603
    :pswitch_1
    const-string v3, "CallController"

    const-string v4, "handleOutgoingCallError: SUCCESS isn\'t an error"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 611
    :pswitch_2
    const v0, 0x7f080225

    .line 612
    goto :goto_0

    .line 622
    :pswitch_3
    const v0, 0x7f08021f

    .line 623
    goto :goto_0

    .line 628
    :pswitch_4
    const v0, 0x7f080221

    .line 629
    goto :goto_0

    .line 632
    :pswitch_5
    const v0, 0x7f080222

    .line 633
    goto :goto_0

    .line 638
    :pswitch_6
    const v0, 0x7f080224

    .line 639
    goto :goto_0

    .line 649
    :pswitch_7
    const-string v3, "show_missing_voicemail"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 665
    :pswitch_8
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    const-class v4, Lcom/android/phone/MMIDialogActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 666
    .local v2, "mmiIntent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 668
    iget-object v3, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3, v2}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static init(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;Lcom/android/phone/CallGatewayManager;)Lcom/android/phone/CallController;
    .locals 4
    .param p0, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "callLogger"    # Lcom/android/phone/CallLogger;
    .param p2, "callGatewayManager"    # Lcom/android/phone/CallGatewayManager;

    .prologue
    .line 107
    const-class v1, Lcom/android/phone/CallController;

    monitor-enter v1

    .line 108
    :try_start_0
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/android/phone/CallController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/phone/CallController;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;Lcom/android/phone/CallGatewayManager;)V

    sput-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    .line 113
    :goto_0
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    monitor-exit v1

    return-object v0

    .line 111
    :cond_0
    const-string v0, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 710
    const-string v0, "CallController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void
.end method

.method private placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;
    .locals 32
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 291
    sget-boolean v5, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCallInternal()...  intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 296
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v30

    .line 297
    .local v30, "uri":Landroid/net/Uri;
    if-eqz v30, :cond_1

    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v27

    .line 299
    .local v27, "scheme":Ljava/lang/String;
    :goto_0
    const/16 v26, 0x0

    .line 303
    .local v26, "phone":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v25

    .line 314
    .local v25, "okToCallStatus":Lcom/android/phone/Constants$CallStatusCode;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    .line 323
    .local v7, "number":Ljava/lang/String;
    const-string v5, "android.phone.extra.SIP_PHONE_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 325
    .local v28, "sipPhoneUri":Ljava/lang/String;
    const-string v5, "android.phone.extra.THIRD_PARTY_CALL_COMPONENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v29

    check-cast v29, Landroid/content/ComponentName;

    .line 327
    .local v29, "thirdPartyCallComponent":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v5, v0, v7, v1, v2}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/android/internal/telephony/Phone;

    move-result-object v26

    .line 332
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 348
    if-nez v7, :cond_5

    .line 349
    const-string v5, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    .line 539
    .end local v7    # "number":Ljava/lang/String;
    .end local v28    # "sipPhoneUri":Ljava/lang/String;
    .end local v29    # "thirdPartyCallComponent":Landroid/content/ComponentName;
    :goto_1
    return-object v5

    .line 297
    .end local v25    # "okToCallStatus":Lcom/android/phone/Constants$CallStatusCode;
    .end local v26    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v27    # "scheme":Ljava/lang/String;
    :cond_1
    const/16 v27, 0x0

    goto :goto_0

    .line 335
    .restart local v25    # "okToCallStatus":Lcom/android/phone/Constants$CallStatusCode;
    .restart local v26    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v27    # "scheme":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 340
    .local v20, "ex":Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v25

    if-eq v0, v5, :cond_3

    .line 341
    sget-boolean v5, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "Voicemail number not reachable in current SIM card state."

    invoke-static {v5}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v5, v25

    .line 342
    goto :goto_1

    .line 344
    :cond_3
    sget-boolean v5, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-static {v5}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 345
    :cond_4
    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 359
    .end local v20    # "ex":Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    .restart local v7    # "number":Ljava/lang/String;
    .restart local v28    # "sipPhoneUri":Ljava/lang/String;
    .restart local v29    # "thirdPartyCallComponent":Landroid/content/ComponentName;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v5, v7}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v23

    .line 360
    .local v23, "isEmergencyNumber":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v5, v7}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v24

    .line 362
    .local v24, "isPotentialEmergencyNumber":Z
    const-string v5, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 364
    .local v22, "isEmergencyIntent":Z
    if-eqz v24, :cond_6

    if-nez v22, :cond_6

    .line 365
    const-string v5, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Non-CALL_EMERGENCY Intent "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " attempted to call potential emergency number "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 369
    :cond_6
    if-nez v24, :cond_7

    if-eqz v22, :cond_7

    .line 370
    const-string v5, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received CALL_EMERGENCY Intent "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " with non-potential-emergency number "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " -- failing call."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 384
    :cond_7
    if-eqz v23, :cond_a

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v25

    if-eq v0, v5, :cond_8

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v25

    if-ne v0, v5, :cond_a

    .line 387
    :cond_8
    sget-boolean v5, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: Emergency number detected with status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 388
    :cond_9
    sget-object v25, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    .line 389
    sget-boolean v5, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> UPDATING status to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 392
    :cond_a
    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v25

    if-eq v0, v5, :cond_e

    .line 395
    if-eqz v23, :cond_c

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v25

    if-ne v0, v5, :cond_c

    .line 396
    const-string v5, "CallController"

    const-string v6, "placeCall: Trying to make emergency call while POWER_OFF!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    monitor-enter p0

    .line 400
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    if-nez v5, :cond_b

    .line 401
    new-instance v5, Lcom/android/phone/EmergencyCallHelper;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/phone/EmergencyCallHelper;-><init>(Lcom/android/phone/CallController;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    .line 403
    :cond_b
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    invoke-virtual {v5, v7}, Lcom/android/phone/EmergencyCallHelper;->startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;)V

    .line 415
    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 403
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 419
    :cond_c
    sget-boolean v5, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> placeCallInternal(): non-success status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 428
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mCallLogger:Lcom/android/phone/CallLogger;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    invoke-virtual/range {v5 .. v13}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    move-object/from16 v5, v25

    .line 431
    goto/16 :goto_1

    .line 439
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 442
    .local v8, "contactUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/android/phone/CallGatewayManager;->getRawGatewayInfo(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    move-result-object v10

    .line 446
    .local v10, "rawGatewayInfo":Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    if-nez v23, :cond_f

    if-eqz v22, :cond_10

    :cond_f
    const/4 v9, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/CallController;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    move-object/from16 v6, v26

    invoke-static/range {v5 .. v11}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/phone/CallGatewayManager$RawGatewayInfo;Lcom/android/phone/CallGatewayManager;)I

    move-result v4

    .line 454
    .local v4, "callStatus":I
    packed-switch v4, :pswitch_data_0

    .line 537
    const-string v5, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "placeCall: unknown callStatus "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\'."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 446
    .end local v4    # "callStatus":I
    :cond_10
    const/4 v9, 0x0

    goto :goto_2

    .line 468
    .restart local v4    # "callStatus":I
    :pswitch_0
    if-eqz v27, :cond_13

    const-string v5, "voicemail"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/16 v31, 0x1

    .line 475
    .local v31, "voicemailUriSpecified":Z
    :goto_3
    const/16 v21, 0x0

    .line 476
    .local v21, "exitedEcm":Z
    invoke-static/range {v26 .. v26}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_11

    if-nez v23, :cond_11

    .line 477
    const-string v5, "CallController"

    const-string v6, "About to exit ECM because of an outgoing non-emergency call"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/16 v21, 0x1

    .line 481
    :cond_11
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_12

    .line 483
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v6, :cond_12

    .line 496
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 499
    const/4 v5, 0x1

    const-wide/16 v12, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v13}, Lcom/android/phone/CallController;->sendEmptyMessageDelayed(IJ)Z

    .line 505
    :cond_12
    if-eqz v21, :cond_14

    .line 506
    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 468
    .end local v21    # "exitedEcm":Z
    .end local v31    # "voicemailUriSpecified":Z
    :cond_13
    const/16 v31, 0x0

    goto :goto_3

    .line 508
    .restart local v21    # "exitedEcm":Z
    .restart local v31    # "voicemailUriSpecified":Z
    :cond_14
    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 512
    .end local v21    # "exitedEcm":Z
    .end local v31    # "voicemailUriSpecified":Z
    :pswitch_1
    sget-boolean v5, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v5, :cond_15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: specified number was an MMI code: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 522
    :cond_15
    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 525
    :pswitch_2
    const-string v5, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\'."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/CallController;->mCallLogger:Lcom/android/phone/CallLogger;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    move-object v13, v7

    invoke-virtual/range {v11 .. v19}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    .line 534
    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 149
    const-string v0, "CallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unexpected code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 136
    :pswitch_0
    sget-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "THREEWAY_CALLERINFO_DISPLAY_DONE..."

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public placeCall(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placeCall()...  intent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 198
    if-nez p1, :cond_0

    .line 199
    const-string v6, "CallController"

    const-string v7, "placeCall: called with null intent"

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "placeCall: called with null intent"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 205
    .local v5, "uri":Landroid/net/Uri;
    if-nez v5, :cond_1

    .line 206
    const-string v6, "CallController"

    const-string v7, "placeCall: intent had no data"

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "placeCall: intent had no data"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 210
    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "scheme":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {p1, v6}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "number":Ljava/lang/String;
    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 225
    const-string v6, "CallController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placeCall: unexpected intent action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 232
    :cond_2
    iget-object v6, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 233
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 234
    invoke-direct {p0, p1}, Lcom/android/phone/CallController;->checkForOtaspCall(Landroid/content/Intent;)V

    .line 245
    :cond_3
    iget-object v6, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneGlobals;->setRestoreMuteOnInCallResume(Z)V

    .line 247
    invoke-direct {p0, p1}, Lcom/android/phone/CallController;->placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v4

    .line 249
    .local v4, "status":Lcom/android/phone/Constants$CallStatusCode;
    sget-object v6, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {v4}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==> placeCall(): failure code from placeCallInternal(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 263
    invoke-direct {p0, v4}, Lcom/android/phone/CallController;->handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 275
    :cond_4
    :goto_0
    return-void

    .line 253
    :pswitch_0
    sget-boolean v6, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==> placeCall(): success from placeCallInternal(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
