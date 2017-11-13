.class public Lcom/android/services/telephony/TelephonyConnectionService;
.super Landroid/telecom/ConnectionService;
.source "TelephonyConnectionService.java"


# static fields
.field private static final CDMA_ACTIVATION_CODE_REGEX_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mCdmaConferenceController:Lcom/android/services/telephony/CdmaConferenceController;

.field private mEmergencyCallHelper:Lcom/android/services/telephony/EmergencyCallHelper;

.field private mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

.field private mExpectedComponentName:Landroid/content/ComponentName;

.field private final mImsConferenceController:Lcom/android/services/telephony/ImsConferenceController;

.field private final mTelephonyConferenceController:Lcom/android/services/telephony/TelephonyConferenceController;

.field private final mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "\\*228[0-9]{0,2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/TelephonyConnectionService;->CDMA_ACTIVATION_CODE_REGEX_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/telecom/ConnectionService;-><init>()V

    .line 66
    new-instance v0, Lcom/android/services/telephony/TelephonyConferenceController;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConferenceController;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mTelephonyConferenceController:Lcom/android/services/telephony/TelephonyConferenceController;

    .line 68
    new-instance v0, Lcom/android/services/telephony/CdmaConferenceController;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/CdmaConferenceController;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mCdmaConferenceController:Lcom/android/services/telephony/CdmaConferenceController;

    .line 70
    new-instance v0, Lcom/android/services/telephony/ImsConferenceController;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/ImsConferenceController;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mImsConferenceController:Lcom/android/services/telephony/ImsConferenceController;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mExpectedComponentName:Landroid/content/ComponentName;

    .line 80
    new-instance v0, Lcom/android/services/telephony/TelephonyConnectionService$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConnectionService$1;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/TelephonyConnectionService;
    .param p1, "x1"    # Lcom/android/services/telephony/TelephonyConnection;
    .param p2, "x2"    # Lcom/android/internal/telephony/Phone;
    .param p3, "x3"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/services/telephony/TelephonyConnectionService;->placeOutgoingConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V

    return-void
.end method

.method private allowMute(Lcom/android/internal/telephony/Phone;)Z
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 545
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object v1, p1

    .line 546
    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .line 547
    .local v1, "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 548
    .local v0, "cdmaPhone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isInEcm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    const/4 v2, 0x0

    .line 555
    .end local v0    # "cdmaPhone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    .end local v1    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private createConnectionFor(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;ZLandroid/telecom/PhoneAccountHandle;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "originalConnection"    # Lcom/android/internal/telephony/Connection;
    .param p3, "isOutgoing"    # Z
    .param p4, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 451
    const/4 v2, 0x0

    .line 452
    .local v2, "returnConnection":Lcom/android/services/telephony/TelephonyConnection;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 453
    .local v1, "phoneType":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 454
    new-instance v2, Lcom/android/services/telephony/GsmConnection;

    .end local v2    # "returnConnection":Lcom/android/services/telephony/TelephonyConnection;
    invoke-direct {v2, p2}, Lcom/android/services/telephony/GsmConnection;-><init>(Lcom/android/internal/telephony/Connection;)V

    .line 460
    .restart local v2    # "returnConnection":Lcom/android/services/telephony/TelephonyConnection;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 462
    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/TelephonyConnection;->addTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;

    .line 463
    invoke-static {p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->getInstance(Landroid/content/Context;)Lcom/android/services/telephony/TelecomAccountRegistry;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/android/services/telephony/TelecomAccountRegistry;->isVideoPauseSupported(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/TelephonyConnection;->setVideoPauseSupported(Z)V

    .line 467
    :cond_1
    return-object v2

    .line 455
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 456
    invoke-direct {p0, p1}, Lcom/android/services/telephony/TelephonyConnectionService;->allowMute(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    .line 457
    .local v0, "allowMute":Z
    new-instance v2, Lcom/android/services/telephony/CdmaConnection;

    .end local v2    # "returnConnection":Lcom/android/services/telephony/TelephonyConnection;
    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    invoke-direct {v2, p2, v3, v0, p3}, Lcom/android/services/telephony/CdmaConnection;-><init>(Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/EmergencyTonePlayer;ZZ)V

    .restart local v2    # "returnConnection":Lcom/android/services/telephony/TelephonyConnection;
    goto :goto_0
.end method

.method private getFirstPhoneForEmergencyCall()Lcom/android/internal/telephony/Phone;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 500
    const/4 v3, 0x0

    .line 501
    .local v3, "selectPhone":Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 502
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingSlotId(I)[I

    move-result-object v4

    .line 503
    .local v4, "subIds":[I
    array-length v5, v4

    if-nez v5, :cond_1

    .line 501
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 506
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    aget v6, v4, v7

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 507
    .local v2, "phoneId":I
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 508
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 511
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_2

    .line 513
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pickBestPhoneForEmergencyCall, radio on & in service, slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "phoneId":I
    .end local v4    # "subIds":[I
    :goto_2
    return-object v1

    .line 515
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v2    # "phoneId":I
    .restart local v4    # "subIds":[I
    :cond_2
    const/4 v5, 0x3

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 517
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 518
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pickBestPhoneForEmergencyCall,radio on and SIM card inserted, slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    move-object v3, v1

    goto :goto_1

    .line 521
    :cond_3
    if-nez v3, :cond_0

    .line 522
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pickBestPhoneForEmergencyCall, radio on, slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    move-object v3, v1

    goto :goto_1

    .line 528
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "phoneId":I
    .end local v4    # "subIds":[I
    :cond_4
    if-nez v3, :cond_5

    .line 529
    const-string v5, "pickBestPhoneForEmergencyCall, return default phone"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    :cond_5
    move-object v1, v3

    .line 533
    goto :goto_2
.end method

.method private getPhoneForAccount(Landroid/telecom/PhoneAccountHandle;Z)Lcom/android/internal/telephony/Phone;
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "isEmergency"    # Z

    .prologue
    .line 484
    if-eqz p2, :cond_0

    .line 486
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnectionService;->getFirstPhoneForEmergencyCall()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 496
    :goto_0
    return-object v2

    .line 490
    :cond_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v1

    .line 491
    .local v1, "subId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 492
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 493
    .local v0, "phoneId":I
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto :goto_0

    .line 496
    .end local v0    # "phoneId":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isOriginalConnectionKnown(Lcom/android/internal/telephony/Connection;)Z
    .locals 4
    .param p1, "originalConnection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 473
    .local v0, "connection":Landroid/telecom/Connection;
    instance-of v3, v0, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 474
    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    .line 475
    .local v2, "telephonyConnection":Lcom/android/services/telephony/TelephonyConnection;
    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 476
    const/4 v3, 0x1

    .line 480
    .end local v0    # "connection":Landroid/telecom/Connection;
    .end local v2    # "telephonyConnection":Lcom/android/services/telephony/TelephonyConnection;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private placeOutgoingConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V
    .locals 11
    .param p1, "connection"    # Lcom/android/services/telephony/TelephonyConnection;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 406
    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, "number":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v7

    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-interface {p2, v3, v6, v7, v8}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 423
    .local v4, "originalConnection":Lcom/android/internal/telephony/Connection;
    if-nez v4, :cond_2

    .line 424
    const/16 v5, 0x2b

    .line 426
    .local v5, "telephonyDisconnectCause":I
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 427
    const-string v6, "dialed MMI code"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    const/16 v5, 0x27

    .line 431
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/android/phone/MiuiMMIDialogActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 432
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10800000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 436
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v6}, Lcom/android/services/telephony/TelephonyConnectionService;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 438
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v6, "placeOutgoingConnection, phone.dial returned null"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    const-string v6, "Connection is null"

    invoke-static {v5, v6}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/services/telephony/TelephonyConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 444
    .end local v4    # "originalConnection":Lcom/android/internal/telephony/Connection;
    .end local v5    # "telephonyDisconnectCause":I
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v1

    .line 413
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placeOutgoingConnection, phone.dial exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v1, v6, v7}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    const/16 v0, 0x2b

    .line 415
    .local v0, "cause":I
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getError()I

    move-result v6

    if-ne v6, v10, :cond_1

    .line 416
    const/16 v0, 0x12

    .line 418
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/services/telephony/TelephonyConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 442
    .end local v0    # "cause":I
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    .restart local v4    # "originalConnection":Lcom/android/internal/telephony/Connection;
    :cond_2
    invoke-virtual {p1, v4}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnection(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0
.end method


# virtual methods
.method public addConnectionToConferenceController(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 4
    .param p1, "connection"    # Lcom/android/services/telephony/TelephonyConnection;

    .prologue
    const/4 v3, 0x0

    .line 578
    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->isImsConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding IMS connection to conference controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mImsConferenceController:Lcom/android/services/telephony/ImsConferenceController;

    invoke-virtual {v1, p1}, Lcom/android/services/telephony/ImsConferenceController;->add(Lcom/android/services/telephony/TelephonyConnection;)V

    .line 594
    :goto_0
    return-void

    .line 582
    :cond_0
    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 583
    .local v0, "phoneType":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding GSM connection to conference controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mTelephonyConferenceController:Lcom/android/services/telephony/TelephonyConferenceController;

    invoke-virtual {v1, p1}, Lcom/android/services/telephony/TelephonyConferenceController;->add(Lcom/android/services/telephony/TelephonyConnection;)V

    .line 591
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing connection from IMS conference controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mImsConferenceController:Lcom/android/services/telephony/ImsConferenceController;

    invoke-virtual {v1, p1}, Lcom/android/services/telephony/ImsConferenceController;->remove(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 586
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    instance-of v1, p1, Lcom/android/services/telephony/CdmaConnection;

    if-eqz v1, :cond_1

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding CDMA connection to conference controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mCdmaConferenceController:Lcom/android/services/telephony/CdmaConferenceController;

    move-object v1, p1

    check-cast v1, Lcom/android/services/telephony/CdmaConnection;

    invoke-virtual {v2, v1}, Lcom/android/services/telephony/CdmaConferenceController;->add(Lcom/android/services/telephony/CdmaConnection;)V

    goto :goto_1
.end method

.method public onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "connection1"    # Landroid/telecom/Connection;
    .param p2, "connection2"    # Landroid/telecom/Connection;

    .prologue
    .line 396
    instance-of v0, p1, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    .line 398
    check-cast p1, Lcom/android/services/telephony/TelephonyConnection;

    .end local p1    # "connection1":Landroid/telecom/Connection;
    check-cast p2, Lcom/android/services/telephony/TelephonyConnection;

    .end local p2    # "connection2":Landroid/telecom/Connection;
    invoke-virtual {p1, p2}, Lcom/android/services/telephony/TelephonyConnection;->performConference(Lcom/android/services/telephony/TelephonyConnection;)V

    .line 402
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/telecom/ConnectionService;->onCreate()V

    .line 91
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mExpectedComponentName:Landroid/content/ComponentName;

    .line 92
    new-instance v0, Lcom/android/services/telephony/EmergencyTonePlayer;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/EmergencyTonePlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    .line 93
    invoke-static {p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->getInstance(Landroid/content/Context;)Lcom/android/services/telephony/TelecomAccountRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->setTelephonyConnectionService(Lcom/android/services/telephony/TelephonyConnectionService;)V

    .line 94
    return-void
.end method

.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 9
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    const/4 v8, 0x0

    .line 286
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateIncomingConnection, request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 290
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    const/4 v3, 0x0

    .line 291
    .local v3, "isEmergency":Z
    if-eqz v0, :cond_0

    const-string v6, "E"

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 293
    const-string v6, "Emergency PhoneAccountHandle is being used for incoming call... Treat as an Emergency Call."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    const/4 v3, 0x1

    .line 297
    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/android/services/telephony/TelephonyConnectionService;->getPhoneForAccount(Landroid/telecom/PhoneAccountHandle;Z)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 298
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v5, :cond_2

    .line 299
    const/16 v6, 0x24

    const-string v7, "Phone is null"

    invoke-static {v6, v7}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v6

    invoke-static {v6}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    .line 328
    :cond_1
    :goto_0
    return-object v2

    .line 305
    :cond_2
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 306
    .local v1, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v6

    if-nez v6, :cond_3

    .line 307
    const-string v6, "onCreateIncomingConnection, no ringing call"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    const/4 v6, 0x1

    const-string v7, "Found no ringing call"

    invoke-static {v6, v7}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v6

    invoke-static {v6}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    goto :goto_0

    .line 314
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 317
    .local v4, "originalConnection":Lcom/android/internal/telephony/Connection;
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/services/telephony/TelephonyConnectionService;->isOriginalConnectionKnown(Lcom/android/internal/telephony/Connection;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 318
    const-string v6, "onCreateIncomingConnection, original connection already registered"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    invoke-static {}, Landroid/telecom/Connection;->createCanceledConnection()Landroid/telecom/Connection;

    move-result-object v2

    goto :goto_0

    .line 314
    .end local v4    # "originalConnection":Lcom/android/internal/telephony/Connection;
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    goto :goto_1

    .line 322
    .restart local v4    # "originalConnection":Lcom/android/internal/telephony/Connection;
    :cond_5
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    invoke-direct {p0, v5, v4, v8, v6}, Lcom/android/services/telephony/TelephonyConnectionService;->createConnectionFor(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;ZLandroid/telecom/PhoneAccountHandle;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v2

    .line 325
    .local v2, "connection":Landroid/telecom/Connection;
    if-nez v2, :cond_1

    .line 326
    invoke-static {}, Landroid/telecom/Connection;->createCanceledConnection()Landroid/telecom/Connection;

    move-result-object v2

    goto :goto_0
.end method

.method public onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 15
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 100
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreateOutgoingConnection, request: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v4

    .line 103
    .local v4, "handle":Landroid/net/Uri;
    if-nez v4, :cond_0

    .line 104
    const-string v11, "onCreateOutgoingConnection, handle is null"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    const/16 v11, 0x26

    const-string v12, "No phone number supplied"

    invoke-static {v11, v12}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-static {v11}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    .line 279
    :goto_0
    return-object v2

    .line 111
    :cond_0
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, "scheme":Ljava/lang/String;
    const-string v11, "voicemail"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/services/telephony/TelephonyConnectionService;->getPhoneForAccount(Landroid/telecom/PhoneAccountHandle;Z)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 117
    .local v7, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v7, :cond_1

    .line 118
    const-string v11, "onCreateOutgoingConnection, phone is null"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    const/16 v11, 0x12

    const-string v12, "Phone is null"

    invoke-static {v11, v12}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-static {v11}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    goto :goto_0

    .line 124
    :cond_1
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "number":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 126
    const-string v11, "onCreateOutgoingConnection, no voicemail number set."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    const/16 v11, 0x28

    const-string v12, "Voicemail scheme provided but no voicemail number set."

    invoke-static {v11, v12}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-static {v11}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    goto :goto_0

    .line 134
    :cond_2
    const-string v11, "tel"

    const/4 v12, 0x0

    invoke-static {v11, v6, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 176
    :cond_3
    invoke-static {p0, v6}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 179
    .local v5, "isEmergencyNumber":Z
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v11

    invoke-direct {p0, v11, v5}, Lcom/android/services/telephony/TelephonyConnectionService;->getPhoneForAccount(Landroid/telecom/PhoneAccountHandle;Z)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 180
    if-nez v7, :cond_8

    .line 181
    const-string v11, "onCreateOutgoingConnection, phone is null"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    const/16 v11, 0x12

    const-string v12, "Phone is null"

    invoke-static {v11, v12}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-static {v11}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    goto :goto_0

    .line 136
    .end local v5    # "isEmergencyNumber":Z
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_4
    const-string v11, "tel"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 137
    const-string v11, "onCreateOutgoingConnection, Handle %s is not type tel"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    const/4 v11, 0x7

    const-string v12, "Handle scheme is not type tel"

    invoke-static {v11, v12}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-static {v11}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    goto/16 :goto_0

    .line 144
    :cond_5
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 145
    .restart local v6    # "number":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 146
    const-string v11, "onCreateOutgoingConnection, unable to parse number"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    const/4 v11, 0x7

    const-string v12, "Unable to parse number"

    invoke-static {v11, v12}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-static {v11}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    goto/16 :goto_0

    .line 153
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/services/telephony/TelephonyConnectionService;->getPhoneForAccount(Landroid/telecom/PhoneAccountHandle;Z)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 154
    .restart local v7    # "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v7, :cond_3

    sget-object v11, Lcom/android/services/telephony/TelephonyConnectionService;->CDMA_ACTIVATION_CODE_REGEX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 158
    const/4 v3, 0x0

    .line 159
    .local v3, "disableActivation":Z
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "carrier_config"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 161
    .local v1, "cfgManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_7

    .line 162
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v11

    const-string v12, "disable_cdma_activation_code_bool"

    invoke-virtual {v11, v12}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 166
    :cond_7
    if-eqz v3, :cond_3

    .line 167
    const/16 v11, 0x31

    const-string v12, "Tried to dial *228"

    invoke-static {v11, v12}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-static {v11}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    goto/16 :goto_0

    .line 189
    .end local v1    # "cfgManager":Landroid/telephony/CarrierConfigManager;
    .end local v3    # "disableActivation":Z
    .restart local v5    # "isEmergencyNumber":Z
    :cond_8
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    .line 190
    .local v9, "state":I
    const/4 v11, 0x1

    if-ne v9, v11, :cond_9

    .line 191
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_9

    .line 192
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v9

    .line 195
    :cond_9
    const/4 v10, 0x0

    .line 197
    .local v10, "useEmergencyCallHelper":Z
    if-eqz v5, :cond_b

    .line 198
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result v11

    if-nez v11, :cond_a

    .line 199
    const/4 v10, 0x1

    .line 232
    :cond_a
    :pswitch_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v13

    invoke-direct {p0, v7, v11, v12, v13}, Lcom/android/services/telephony/TelephonyConnectionService;->createConnectionFor(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;ZLandroid/telecom/PhoneAccountHandle;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v2

    .line 234
    .local v2, "connection":Lcom/android/services/telephony/TelephonyConnection;
    if-nez v2, :cond_d

    .line 235
    const/16 v11, 0x2b

    const-string v12, "Invalid phone type"

    invoke-static {v11, v12}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-static {v11}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    goto/16 :goto_0

    .line 203
    .end local v2    # "connection":Lcom/android/services/telephony/TelephonyConnection;
    :cond_b
    invoke-static {v7, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCodeInjector;->isBlockedMmi(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    invoke-static {v11}, Lcom/android/phone/MiuiPhoneUtils;->shouldShowOpenMobileDataDialog(I)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 205
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->showOpenMobileDataDialog()V

    .line 206
    new-instance v11, Landroid/telecom/DisconnectCause;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-static {v11}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    goto/16 :goto_0

    .line 209
    :cond_c
    packed-switch v9, :pswitch_data_0

    .line 224
    const-string v11, "onCreateOutgoingConnection, unknown service state: %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    const/16 v11, 0x2b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown service state "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-static {v11}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    goto/16 :goto_0

    .line 214
    :pswitch_1
    const/16 v11, 0x12

    const-string v12, "ServiceState.STATE_OUT_OF_SERVICE"

    invoke-static {v11, v12}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-static {v11}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    goto/16 :goto_0

    .line 219
    :pswitch_2
    const/16 v11, 0x11

    const-string v12, "ServiceState.STATE_POWER_OFF"

    invoke-static {v11, v12}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-static {v11}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    goto/16 :goto_0

    .line 241
    .restart local v2    # "connection":Lcom/android/services/telephony/TelephonyConnection;
    :cond_d
    if-nez v5, :cond_e

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-static {v4, v7, v6, v11}, Lcom/android/phone/settings/AutoIpSetting;->handleIpCall(Landroid/net/Uri;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v4

    .line 245
    :cond_e
    const/4 v11, 0x1

    invoke-virtual {v2, v4, v11}, Lcom/android/services/telephony/TelephonyConnection;->setAddress(Landroid/net/Uri;I)V

    .line 246
    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->setInitializing()V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/android/services/telephony/TelephonyConnection;->setVideoState(I)V

    .line 249
    if-eqz v10, :cond_10

    .line 250
    iget-object v11, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mEmergencyCallHelper:Lcom/android/services/telephony/EmergencyCallHelper;

    if-nez v11, :cond_f

    .line 251
    new-instance v11, Lcom/android/services/telephony/EmergencyCallHelper;

    invoke-direct {v11, p0}, Lcom/android/services/telephony/EmergencyCallHelper;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mEmergencyCallHelper:Lcom/android/services/telephony/EmergencyCallHelper;

    .line 253
    :cond_f
    iget-object v11, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mEmergencyCallHelper:Lcom/android/services/telephony/EmergencyCallHelper;

    new-instance v12, Lcom/android/services/telephony/TelephonyConnectionService$2;

    move-object/from16 v0, p2

    invoke-direct {v12, p0, v2, v7, v0}, Lcom/android/services/telephony/TelephonyConnectionService$2;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V

    invoke-virtual {v11, v7, v12}, Lcom/android/services/telephony/EmergencyCallHelper;->startTurnOnRadioSequence(Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V

    goto/16 :goto_0

    .line 275
    :cond_10
    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->setInitialized()V

    .line 276
    move-object/from16 v0, p2

    invoke-direct {p0, v2, v7, v0}, Lcom/android/services/telephony/TelephonyConnectionService;->placeOutgoingConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V

    goto/16 :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 13
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 335
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreateUnknownConnection, request: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 339
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    const/4 v6, 0x0

    .line 340
    .local v6, "isEmergency":Z
    if-eqz v0, :cond_0

    const-string v11, "E"

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 342
    const-string v11, "Emergency PhoneAccountHandle is being used for unknown call... Treat as an Emergency Call."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    const/4 v6, 0x1

    .line 346
    :cond_0
    invoke-direct {p0, v0, v6}, Lcom/android/services/telephony/TelephonyConnectionService;->getPhoneForAccount(Landroid/telecom/PhoneAccountHandle;Z)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 347
    .local v7, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v7, :cond_1

    .line 348
    const/16 v11, 0x24

    const-string v12, "Phone is null"

    invoke-static {v11, v12}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-static {v11}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v3

    .line 390
    :goto_0
    return-object v3

    .line 354
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v1, "allConnections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 356
    .local v8, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 357
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 359
    :cond_2
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 360
    .local v4, "foregroundCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 361
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 363
    :cond_3
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 364
    .local v2, "backgroundCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 365
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 368
    :cond_4
    const/4 v10, 0x0

    .line 369
    .local v10, "unknownConnection":Lcom/android/internal/telephony/Connection;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Connection;

    .line 370
    .local v9, "telephonyConnection":Lcom/android/internal/telephony/Connection;
    invoke-direct {p0, v9}, Lcom/android/services/telephony/TelephonyConnectionService;->isOriginalConnectionKnown(Lcom/android/internal/telephony/Connection;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 371
    move-object v10, v9

    .line 376
    .end local v9    # "telephonyConnection":Lcom/android/internal/telephony/Connection;
    :cond_6
    if-nez v10, :cond_7

    .line 377
    const-string v11, "onCreateUnknownConnection, did not find previously unknown connection."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    invoke-static {}, Landroid/telecom/Connection;->createCanceledConnection()Landroid/telecom/Connection;

    move-result-object v3

    goto :goto_0

    .line 381
    :cond_7
    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v12

    invoke-direct {p0, v7, v10, v11, v12}, Lcom/android/services/telephony/TelephonyConnectionService;->createConnectionFor(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;ZLandroid/telecom/PhoneAccountHandle;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v3

    .line 386
    .local v3, "connection":Lcom/android/services/telephony/TelephonyConnection;
    if-nez v3, :cond_9

    .line 387
    invoke-static {}, Landroid/telecom/Connection;->createCanceledConnection()Landroid/telecom/Connection;

    move-result-object v3

    goto :goto_0

    .line 381
    .end local v3    # "connection":Lcom/android/services/telephony/TelephonyConnection;
    :cond_8
    const/4 v11, 0x0

    goto :goto_1

    .line 389
    .restart local v3    # "connection":Lcom/android/services/telephony/TelephonyConnection;
    :cond_9
    invoke-virtual {v3}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    goto :goto_0
.end method

.method public removeConnection(Landroid/telecom/Connection;)V
    .locals 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 560
    invoke-super {p0, p1}, Landroid/telecom/ConnectionService;->removeConnection(Landroid/telecom/Connection;)V

    .line 561
    instance-of v1, p1, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 562
    check-cast v0, Lcom/android/services/telephony/TelephonyConnection;

    .line 563
    .local v0, "telephonyConnection":Lcom/android/services/telephony/TelephonyConnection;
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->removeTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;

    .line 565
    .end local v0    # "telephonyConnection":Lcom/android/services/telephony/TelephonyConnection;
    :cond_0
    return-void
.end method
