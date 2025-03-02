.class public final Lcom/movial/ipphone/IPCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "IPCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/movial/ipphone/IPCallTracker$2;,
        Lcom/movial/ipphone/IPCallTracker$pendingConnection;
    }
.end annotation


# static fields
.field private static final EVENT_KEEP_RINGING:I = 0x2a

.field private static final EVENT_REMOVE_CONNECTION:I = 0x29

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field static final TAG:Ljava/lang/String; = "IPCallTracker"

.field private static final WAKELOCK_SAFETY_TIMEOUT:I = 0x7530


# instance fields
.field private DELAYED_KEEP_RINGING:I

.field private DELAYED_REMOVE_CONNECTION:I

.field backgroundCall:Lcom/movial/ipphone/IPCall;

.field connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/movial/ipphone/IPConnection;",
            ">;"
        }
    .end annotation
.end field

.field desiredMute:Z

.field foregroundCall:Lcom/movial/ipphone/IPCall;

.field mHandler:Landroid/os/Handler;

.field mIPService:Lcom/movial/ipphone/IIPService;

.field mMsnger:Landroid/os/Messenger;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSwapCall:I

.field mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field makeCall:Z

.field pendingConf:Z

.field pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

.field pendingMOIndex:I

.field phone:Lcom/movial/ipphone/IPPhone;

.field ringingCall:Lcom/movial/ipphone/IPCall;

.field ringingIndex:I

.field state:Lcom/android/internal/telephony/PhoneConstants$State;

.field voiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field voiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPPhone;)V
    .locals 5
    .param p1, "phone"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 185
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    .line 90
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 91
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 98
    iput v3, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    .line 99
    iput-boolean v4, p0, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    .line 100
    new-instance v1, Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPCallTracker$pendingConnection;-><init>(Lcom/movial/ipphone/IPCallTracker;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    .line 102
    iput v3, p0, Lcom/movial/ipphone/IPCallTracker;->mSwapCall:I

    .line 105
    new-instance v1, Lcom/movial/ipphone/IPCall;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPCall;-><init>(Lcom/movial/ipphone/IPCallTracker;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    .line 106
    new-instance v1, Lcom/movial/ipphone/IPCall;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPCall;-><init>(Lcom/movial/ipphone/IPCallTracker;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    .line 107
    new-instance v1, Lcom/movial/ipphone/IPCall;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPCall;-><init>(Lcom/movial/ipphone/IPCallTracker;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    .line 109
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 117
    iput v3, p0, Lcom/movial/ipphone/IPCallTracker;->ringingIndex:I

    .line 118
    iput-boolean v4, p0, Lcom/movial/ipphone/IPCallTracker;->makeCall:Z

    .line 120
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/movial/ipphone/IPCallTracker;->DELAYED_REMOVE_CONNECTION:I

    .line 121
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/movial/ipphone/IPCallTracker;->DELAYED_KEEP_RINGING:I

    .line 125
    new-instance v1, Lcom/movial/ipphone/IPCallTracker$1;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPCallTracker$1;-><init>(Lcom/movial/ipphone/IPCallTracker;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mHandler:Landroid/os/Handler;

    .line 186
    iput-object p1, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    .line 187
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mMsnger:Landroid/os/Messenger;

    .line 189
    invoke-virtual {p1}, Lcom/movial/ipphone/IPPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 190
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x3

    const-string v2, "WifiCalling"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 191
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 193
    invoke-virtual {p1}, Lcom/movial/ipphone/IPPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->createWakeLock(Landroid/content/Context;)V

    .line 195
    return-void
.end method

.method private acceptAfterHoldingDisconnected(Lcom/movial/ipphone/SessionCall;)Z
    .locals 4
    .param p1, "sessioncall"    # Lcom/movial/ipphone/SessionCall;

    .prologue
    const/4 v1, 0x0

    .line 532
    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 533
    sget-object v2, Lcom/movial/ipphone/IPCallTracker$2;->$SwitchMap$com$movial$ipphone$SessionCall$State:[I

    iget-object v3, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    invoke-virtual {v3}, Lcom/movial/ipphone/SessionCall$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 547
    :cond_0
    :goto_0
    return v1

    .line 537
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v2}, Lcom/movial/ipphone/IIPService;->accept()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    const/4 v1, 0x1

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acceptCall FAILED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/movial/ipphone/IPCallTracker;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPCallTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/movial/ipphone/IPCallTracker;->removeConnection(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/movial/ipphone/IPCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPCallTracker;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V

    return-void
.end method

.method static synthetic access$200(Lcom/movial/ipphone/IPCallTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPCallTracker;

    .prologue
    .line 82
    iget v0, p0, Lcom/movial/ipphone/IPCallTracker;->DELAYED_KEEP_RINGING:I

    return v0
.end method

.method static synthetic access$300(Lcom/movial/ipphone/IPCallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPCallTracker;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->clearConnections()V

    return-void
.end method

.method static synthetic access$400(Lcom/movial/ipphone/IPCallTracker;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPCallTracker;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPCallTracker;->updateConnection(Landroid/os/Message;)V

    return-void
.end method

.method private addConnection(Lcom/movial/ipphone/IPConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/movial/ipphone/IPConnection;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updateWifiLock()V

    .line 392
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updateWakeLock()V

    .line 394
    return-void
.end method

.method private canDial()Z
    .locals 3

    .prologue
    .line 904
    const-string v1, "ro.telephony.disable-call"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "disableCall":Ljava/lang/String;
    iget v1, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->isRinging()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 936
    const/4 v0, -0x1

    iput v0, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    .line 937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    .line 938
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->clear()V

    .line 939
    return-void
.end method

.method private clearConnections()V
    .locals 5

    .prologue
    .line 396
    const-string v3, "IPCallTracker"

    const-string v4, "clearConnections"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 398
    .local v2, "size":I
    move v1, v2

    .local v1, "i":I
    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    .line 399
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    .line 400
    .local v0, "conn":Lcom/movial/ipphone/IPConnection;
    iget v3, v0, Lcom/movial/ipphone/IPConnection;->cause:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 401
    const/16 v3, 0x24

    invoke-direct {p0, v1, v3}, Lcom/movial/ipphone/IPCallTracker;->removeConnection(II)Z

    .line 398
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 403
    .end local v0    # "conn":Lcom/movial/ipphone/IPConnection;
    :cond_1
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V

    .line 404
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    .line 405
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 206
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 207
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "IPCallTracker"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 209
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private dial(Lcom/movial/ipphone/IPConnection;I)V
    .locals 6
    .param p1, "conn"    # Lcom/movial/ipphone/IPConnection;
    .param p2, "clirMode"    # I

    .prologue
    .line 474
    const/4 v1, -0x1

    .line 476
    .local v1, "result":I
    :try_start_0
    invoke-virtual {p1}, Lcom/movial/ipphone/IPConnection;->getDialString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-virtual {p1}, Lcom/movial/ipphone/IPConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/movial/ipphone/IIPService;->dialEmergencyCall(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 486
    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 487
    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    .line 488
    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x29

    iget v4, p0, Lcom/movial/ipphone/IPCallTracker;->DELAYED_REMOVE_CONNECTION:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 493
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/movial/ipphone/IPCallTracker;->makeCall:Z

    .line 495
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V

    .line 496
    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    .line 497
    return-void

    .line 480
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-virtual {p1}, Lcom/movial/ipphone/IPConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/movial/ipphone/IIPService;->dial(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 490
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iput v1, p1, Lcom/movial/ipphone/IPConnection;->index:I

    goto :goto_1
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    .prologue
    .line 913
    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    iget-object v4, v4, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 914
    .local v1, "connCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 915
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    .line 916
    .local v0, "conn":Lcom/movial/ipphone/IPConnection;
    invoke-virtual {v0}, Lcom/movial/ipphone/IPConnection;->fakeHoldBeforeDial()V

    .line 914
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 918
    .end local v0    # "conn":Lcom/movial/ipphone/IPConnection;
    :cond_0
    return-void
.end method

.method private findConnection(Lcom/movial/ipphone/SessionCall;)I
    .locals 5
    .param p1, "sessioncall"    # Lcom/movial/ipphone/SessionCall;

    .prologue
    const/4 v2, -0x1

    .line 409
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 410
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    .line 413
    .local v0, "conn":Lcom/movial/ipphone/IPConnection;
    invoke-virtual {v0}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v3

    iget v4, p1, Lcom/movial/ipphone/SessionCall;->index:I

    if-ne v3, v4, :cond_1

    .line 414
    iget-boolean v2, p1, Lcom/movial/ipphone/SessionCall;->inConf:Z

    if-eqz v2, :cond_0

    .line 415
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/movial/ipphone/IPConnection;->inConf:Z

    .line 428
    .end local v0    # "conn":Lcom/movial/ipphone/IPConnection;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 419
    .restart local v0    # "conn":Lcom/movial/ipphone/IPConnection;
    .restart local v1    # "i":I
    :cond_1
    const-string v3, "E911"

    iget-object v4, p1, Lcom/movial/ipphone/SessionCall;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/movial/ipphone/IPConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 420
    iget v2, p1, Lcom/movial/ipphone/SessionCall;->index:I

    invoke-virtual {v0, v2}, Lcom/movial/ipphone/IPConnection;->setIndex(I)V

    goto :goto_1

    .line 423
    :cond_2
    invoke-virtual {v0}, Lcom/movial/ipphone/IPConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/movial/ipphone/SessionCall;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 424
    iget v2, p1, Lcom/movial/ipphone/SessionCall;->index:I

    invoke-virtual {v0, v2}, Lcom/movial/ipphone/IPConnection;->setIndex(I)V

    goto :goto_1

    .line 409
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "conn":Lcom/movial/ipphone/IPConnection;
    :cond_4
    move v1, v2

    .line 428
    goto :goto_1
.end method

.method private isNewCall(Lcom/movial/ipphone/SessionCall;)I
    .locals 3
    .param p1, "sessioncall"    # Lcom/movial/ipphone/SessionCall;

    .prologue
    const/4 v0, -0x1

    .line 921
    iget-boolean v1, p1, Lcom/movial/ipphone/SessionCall;->inConf:Z

    if-eqz v1, :cond_0

    .line 931
    :goto_0
    return v0

    .line 924
    :cond_0
    sget-object v1, Lcom/movial/ipphone/IPCallTracker$2;->$SwitchMap$com$movial$ipphone$SessionCall$State:[I

    iget-object v2, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    invoke-virtual {v2}, Lcom/movial/ipphone/SessionCall$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 927
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 929
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 924
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 976
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    .line 977
    const-string v0, "IPCallTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-void
.end method

.method private removeConnection(II)Z
    .locals 11
    .param p1, "i"    # I
    .param p2, "failedcause"    # I

    .prologue
    const/4 v10, 0x3

    .line 356
    const/4 v3, 0x0

    .line 359
    .local v3, "result":Z
    iget-object v5, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .line 386
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 362
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/movial/ipphone/IPConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .local v1, "conn":Lcom/movial/ipphone/IPConnection;
    move v0, p2

    .line 369
    .local v0, "cause":I
    invoke-virtual {v1}, Lcom/movial/ipphone/IPConnection;->isIncoming()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/movial/ipphone/IPConnection;->getConnectTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 371
    iget v5, v1, Lcom/movial/ipphone/IPConnection;->cause:I

    if-ne v5, v10, :cond_2

    .line 372
    const/16 v0, 0x10

    .line 380
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeConnection. i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v1, v0}, Lcom/movial/ipphone/IPConnection;->onDisconnect(I)Z

    move-result v3

    .line 382
    iget-object v5, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 383
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updateWifiLock()V

    .line 384
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updateWakeLock()V

    move v4, v3

    .line 386
    .restart local v4    # "result":I
    goto :goto_0

    .line 363
    .end local v0    # "cause":I
    .end local v1    # "conn":Lcom/movial/ipphone/IPConnection;
    .end local v4    # "result":I
    :catch_0
    move-exception v2

    .line 364
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    move v4, v3

    .line 365
    .restart local v4    # "result":I
    goto :goto_0

    .line 374
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "result":I
    .restart local v0    # "cause":I
    .restart local v1    # "conn":Lcom/movial/ipphone/IPConnection;
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 376
    :cond_3
    iget v5, v1, Lcom/movial/ipphone/IPConnection;->cause:I

    if-ne v5, v10, :cond_1

    .line 378
    const/4 v0, 0x3

    goto :goto_1
.end method

.method private swapCallUiUpdate(Lcom/movial/ipphone/SessionCall;)Z
    .locals 6
    .param p1, "sessioncall"    # Lcom/movial/ipphone/SessionCall;

    .prologue
    const/4 v5, -0x1

    .line 942
    const/4 v2, 0x0

    .line 944
    .local v2, "result":Z
    iget-object v3, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    sget-object v4, Lcom/movial/ipphone/SessionCall$State;->DISCONNECTED:Lcom/movial/ipphone/SessionCall$State;

    if-ne v3, v4, :cond_0

    .line 945
    iput v5, p0, Lcom/movial/ipphone/IPCallTracker;->mSwapCall:I

    .line 947
    :cond_0
    iget v3, p0, Lcom/movial/ipphone/IPCallTracker;->mSwapCall:I

    if-lez v3, :cond_5

    .line 948
    iget-boolean v3, p1, Lcom/movial/ipphone/SessionCall;->inConf:Z

    if-eqz v3, :cond_3

    .line 949
    iget v3, p0, Lcom/movial/ipphone/IPCallTracker;->mSwapCall:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/movial/ipphone/IPCallTracker;->mSwapCall:I

    .line 960
    :cond_1
    :goto_0
    iget v3, p0, Lcom/movial/ipphone/IPCallTracker;->mSwapCall:I

    if-nez v3, :cond_2

    .line 961
    iput v5, p0, Lcom/movial/ipphone/IPCallTracker;->mSwapCall:I

    .line 962
    const/4 v2, 0x1

    .line 963
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    .line 965
    :cond_2
    const-string v3, "IPCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "swapCallUiUpdate. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", swapCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/movial/ipphone/IPCallTracker;->mSwapCall:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return v2

    .line 951
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 952
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    .line 953
    .local v0, "conn":Lcom/movial/ipphone/IPConnection;
    iget v3, v0, Lcom/movial/ipphone/IPConnection;->index:I

    iget v4, p1, Lcom/movial/ipphone/SessionCall;->index:I

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/movial/ipphone/IPConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    iget-object v4, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    invoke-virtual {v0, v4}, Lcom/movial/ipphone/IPConnection;->parseSessionState(Lcom/movial/ipphone/SessionCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v3, v4, :cond_4

    .line 954
    iget v3, p0, Lcom/movial/ipphone/IPCallTracker;->mSwapCall:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/movial/ipphone/IPCallTracker;->mSwapCall:I

    .line 951
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 957
    .end local v0    # "conn":Lcom/movial/ipphone/IPConnection;
    .end local v1    # "i":I
    :cond_5
    iget v3, p0, Lcom/movial/ipphone/IPCallTracker;->mSwapCall:I

    if-ne v5, v3, :cond_1

    .line 958
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateConfConnections(Lcom/movial/ipphone/SessionCall;Z)V
    .locals 7
    .param p1, "sessioncall"    # Lcom/movial/ipphone/SessionCall;
    .param p2, "swap"    # Z

    .prologue
    .line 336
    const-string v4, "IPCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConfConnections. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v2, 0x0

    .line 338
    .local v2, "notified":Z
    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 339
    .local v3, "size":I
    iget-object v4, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    sget-object v5, Lcom/movial/ipphone/SessionCall$State;->UNKNOWN:Lcom/movial/ipphone/SessionCall$State;

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/movial/ipphone/SessionCall$State;->ACTIVE:Lcom/movial/ipphone/SessionCall$State;

    :goto_0
    iput-object v4, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    .line 340
    move v1, v3

    .local v1, "i":I
    :goto_1
    const/4 v4, -0x1

    if-le v1, v4, :cond_4

    .line 341
    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    .line 342
    .local v0, "conn":Lcom/movial/ipphone/IPConnection;
    iget-boolean v4, v0, Lcom/movial/ipphone/IPConnection;->inConf:Z

    if-eqz v4, :cond_0

    .line 343
    iget-object v4, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    sget-object v5, Lcom/movial/ipphone/SessionCall$State;->DISCONNECTED:Lcom/movial/ipphone/SessionCall$State;

    if-ne v4, v5, :cond_2

    .line 344
    if-nez v2, :cond_0

    iget v4, p1, Lcom/movial/ipphone/SessionCall;->cause:I

    invoke-direct {p0, v1, v4}, Lcom/movial/ipphone/IPCallTracker;->removeConnection(II)Z

    move-result v2

    .line 340
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 339
    .end local v0    # "conn":Lcom/movial/ipphone/IPConnection;
    .end local v1    # "i":I
    :cond_1
    iget-object v4, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    goto :goto_0

    .line 345
    .restart local v0    # "conn":Lcom/movial/ipphone/IPConnection;
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    invoke-virtual {v0, v4}, Lcom/movial/ipphone/IPConnection;->update(Lcom/movial/ipphone/SessionCall$State;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 346
    if-eqz p2, :cond_3

    const/4 v2, 0x1

    :goto_3
    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 350
    .end local v0    # "conn":Lcom/movial/ipphone/IPConnection;
    :cond_4
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V

    .line 351
    if-eqz v2, :cond_5

    .line 352
    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v4}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    .line 353
    :cond_5
    return-void
.end method

.method private updateConnection(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v13, 0x2a

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v12, -0x1

    .line 248
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 249
    .local v1, "bundle":Landroid/os/Bundle;
    const-class v8, Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 250
    const-string v8, "call"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/movial/ipphone/SessionCall;

    .line 253
    .local v6, "sessioncall":Lcom/movial/ipphone/SessionCall;
    invoke-direct {p0, v6}, Lcom/movial/ipphone/IPCallTracker;->findConnection(Lcom/movial/ipphone/SessionCall;)I

    move-result v3

    .line 255
    .local v3, "i":I
    iget v8, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_1

    .line 256
    const-string v8, "IPCallTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SessionCall.MSG_CALL_RINGING. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/movial/ipphone/IPCallTracker;->ringingIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eq v3, v12, :cond_0

    .line 260
    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/movial/ipphone/IPConnection;

    invoke-virtual {v8}, Lcom/movial/ipphone/IPConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_0

    iget v8, p0, Lcom/movial/ipphone/IPCallTracker;->ringingIndex:I

    if-ne v8, v12, :cond_0

    .line 261
    iput v3, p0, Lcom/movial/ipphone/IPCallTracker;->ringingIndex:I

    .line 262
    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const/4 v4, 0x0

    .line 269
    .local v4, "isCNAM":Z
    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v11, 0x6

    if-ne v8, v11, :cond_4

    .line 270
    const-string v8, "IPCallTracker"

    const-string v11, "updateConnection: update CNAM"

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/movial/ipphone/IPConnection;

    iget-object v11, v6, Lcom/movial/ipphone/SessionCall;->name:Ljava/lang/String;

    iput-object v11, v8, Lcom/movial/ipphone/IPConnection;->cnapName:Ljava/lang/String;

    .line 272
    const/4 v4, 0x1

    .line 281
    :cond_2
    :goto_1
    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v11, 0x7

    if-ne v8, v11, :cond_3

    .line 282
    iget-object v11, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_5

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Lcom/movial/ipphone/IPPhone;->notifyRingbackTone(Z)V

    .line 287
    :cond_3
    invoke-virtual {p0, v6}, Lcom/movial/ipphone/IPCallTracker;->dialAfterHolding(Lcom/movial/ipphone/SessionCall;)V

    .line 291
    invoke-direct {p0, v6}, Lcom/movial/ipphone/IPCallTracker;->acceptAfterHoldingDisconnected(Lcom/movial/ipphone/SessionCall;)Z

    move-result v0

    .line 294
    .local v0, "accept":Z
    invoke-direct {p0, v6}, Lcom/movial/ipphone/IPCallTracker;->swapCallUiUpdate(Lcom/movial/ipphone/SessionCall;)Z

    move-result v7

    .line 296
    .local v7, "swap":Z
    const/4 v5, 0x0

    .line 297
    .local v5, "notified":Z
    if-ne v3, v12, :cond_8

    .line 298
    invoke-direct {p0, v6}, Lcom/movial/ipphone/IPCallTracker;->isNewCall(Lcom/movial/ipphone/SessionCall;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 316
    iget-boolean v8, v6, Lcom/movial/ipphone/SessionCall;->inConf:Z

    if-eqz v8, :cond_6

    .line 317
    invoke-direct {p0, v6, v7}, Lcom/movial/ipphone/IPCallTracker;->updateConfConnections(Lcom/movial/ipphone/SessionCall;Z)V

    goto :goto_0

    .line 273
    .end local v0    # "accept":Z
    .end local v5    # "notified":Z
    .end local v7    # "swap":Z
    :cond_4
    iget v8, p0, Lcom/movial/ipphone/IPCallTracker;->ringingIndex:I

    if-ne v8, v3, :cond_2

    iget-object v8, v6, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    sget-object v11, Lcom/movial/ipphone/SessionCall$State;->ALERTING:Lcom/movial/ipphone/SessionCall$State;

    if-eq v8, v11, :cond_2

    .line 275
    const-string v8, "IPCallTracker"

    const-string v11, "removeMessages"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 277
    iput v12, p0, Lcom/movial/ipphone/IPCallTracker;->ringingIndex:I

    goto :goto_1

    :cond_5
    move v8, v10

    .line 282
    goto :goto_2

    .line 300
    .restart local v0    # "accept":Z
    .restart local v5    # "notified":Z
    .restart local v7    # "swap":Z
    :pswitch_0
    new-instance v2, Lcom/movial/ipphone/IPConnection;

    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v8}, Lcom/movial/ipphone/IPPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8, p0, v6}, Lcom/movial/ipphone/IPConnection;-><init>(Landroid/content/Context;Lcom/movial/ipphone/IPCallTracker;Lcom/movial/ipphone/SessionCall;)V

    .line 301
    .local v2, "c":Lcom/movial/ipphone/IPConnection;
    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPCallTracker;->addConnection(Lcom/movial/ipphone/IPConnection;)V

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/movial/ipphone/IPConnection;->connectTime:J

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/movial/ipphone/IPConnection;->connectTimeReal:J

    .line 304
    const-wide/16 v8, 0x0

    iput-wide v8, v2, Lcom/movial/ipphone/IPConnection;->duration:J

    .line 305
    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v8, v2}, Lcom/movial/ipphone/IPPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    .line 322
    .end local v2    # "c":Lcom/movial/ipphone/IPConnection;
    :cond_6
    :goto_3
    const/4 v5, 0x1

    .line 330
    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V

    .line 331
    if-eqz v5, :cond_0

    .line 332
    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v8}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_0

    .line 310
    :pswitch_1
    new-instance v2, Lcom/movial/ipphone/IPConnection;

    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v8}, Lcom/movial/ipphone/IPPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8, p0, v6}, Lcom/movial/ipphone/IPConnection;-><init>(Landroid/content/Context;Lcom/movial/ipphone/IPCallTracker;Lcom/movial/ipphone/SessionCall;)V

    .line 311
    .restart local v2    # "c":Lcom/movial/ipphone/IPConnection;
    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPCallTracker;->addConnection(Lcom/movial/ipphone/IPConnection;)V

    .line 312
    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v8, v2}, Lcom/movial/ipphone/IPPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    goto :goto_3

    .line 323
    .end local v2    # "c":Lcom/movial/ipphone/IPConnection;
    :cond_8
    iget-object v8, v6, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    sget-object v11, Lcom/movial/ipphone/SessionCall$State;->DISCONNECTED:Lcom/movial/ipphone/SessionCall$State;

    if-ne v8, v11, :cond_9

    .line 324
    iget v8, v6, Lcom/movial/ipphone/SessionCall;->cause:I

    invoke-direct {p0, v3, v8}, Lcom/movial/ipphone/IPCallTracker;->removeConnection(II)Z

    move-result v5

    goto :goto_4

    .line 325
    :cond_9
    if-eqz v4, :cond_a

    .line 326
    const/4 v5, 0x1

    goto :goto_4

    .line 327
    :cond_a
    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/movial/ipphone/IPConnection;

    iget-object v11, v6, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    invoke-virtual {v8, v11}, Lcom/movial/ipphone/IPConnection;->update(Lcom/movial/ipphone/SessionCall$State;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 328
    if-eqz v7, :cond_b

    if-nez v0, :cond_b

    move v5, v9

    :goto_5
    goto :goto_4

    :cond_b
    move v5, v10

    goto :goto_5

    .line 298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updatePhoneState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 861
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 863
    .local v0, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 864
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 876
    :goto_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_6

    .line 877
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 882
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoneState. original: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 884
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_1

    .line 885
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPPhone;->notifyPhoneStateChanged()V

    .line 887
    :cond_1
    return-void

    .line 865
    :cond_2
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_4

    .line 866
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 868
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 870
    const/4 v1, -0x1

    iput v1, p0, Lcom/movial/ipphone/IPCallTracker;->mSwapCall:I

    .line 871
    iget-boolean v1, p0, Lcom/movial/ipphone/IPCallTracker;->makeCall:Z

    if-eqz v1, :cond_5

    .line 872
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPPhone;->notifyToShowDialog()V

    .line 873
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/movial/ipphone/IPCallTracker;->makeCall:Z

    goto :goto_0

    .line 878
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 879
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method

.method private updateWakeLock()V
    .locals 4

    .prologue
    .line 212
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 215
    const-string v0, "acquire mPartialWakeLock"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 224
    :goto_0
    monitor-exit v1

    .line 225
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 219
    const-string v0, "release mPartialWakeLock"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 222
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is wake lock held: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private updateWifiLock()V
    .locals 2

    .prologue
    .line 890
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 892
    const-string v0, "acquire wifilock"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 901
    :goto_0
    return-void

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 896
    const-string v0, "release wifilock"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 899
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is lock held: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method acceptCall(I)V
    .locals 4
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 551
    const-string v1, "removing EVENT_KEEP_RINGING messages!"

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptCall. ringingCall state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " foregroundCall state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 586
    :goto_0
    return-void

    .line 558
    :cond_0
    sget-object v1, Lcom/movial/ipphone/IPCallTracker$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 588
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "phone not ringing"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 563
    :pswitch_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    .line 564
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->switchWaitingOrHoldingAndActive(Z)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 567
    :cond_2
    invoke-virtual {p0, v3}, Lcom/movial/ipphone/IPCallTracker;->setMute(Z)V

    .line 569
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v1}, Lcom/movial/ipphone/IIPService;->accept()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptCall FAILED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 580
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/movial/ipphone/IPCallTracker;->setMute(Z)V

    .line 582
    :try_start_1
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v1}, Lcom/movial/ipphone/IIPService;->accept()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 583
    :catch_1
    move-exception v0

    .line 584
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptCall FAILED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method canConference()Z
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 3

    .prologue
    .line 842
    const-string v1, "clearDisconnected"

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 843
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->clearDisconnected()V

    .line 844
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->clearDisconnected()V

    .line 845
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->clearDisconnected()V

    .line 847
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V

    .line 848
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    .line 850
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 851
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->clear()V

    .line 853
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v1}, Lcom/movial/ipphone/IIPService;->clearDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPService clear Disconnection FAILED. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method conference()V
    .locals 3

    .prologue
    .line 816
    iget-boolean v1, p0, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    if-eqz v1, :cond_0

    .line 826
    :goto_0
    return-void

    .line 818
    :cond_0
    const-string v1, "IPCallTracker"

    const-string v2, "conference"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    .line 820
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    .line 822
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v1}, Lcom/movial/ipphone/IIPService;->conference()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conference FAILED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 432
    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 433
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clir_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 434
    .local v0, "clirMode":I
    invoke-virtual {p0, p1, v0}, Lcom/movial/ipphone/IPCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    return-object v2
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 438
    invoke-virtual {p0}, Lcom/movial/ipphone/IPCallTracker;->clearDisconnected()V

    .line 441
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->canDial()Z

    move-result v3

    if-nez v3, :cond_0

    .line 442
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 448
    :cond_0
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    .local v1, "hasHold":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/movial/ipphone/IPCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 450
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->fakeHoldForegroundBeforeDial()V

    .line 453
    :cond_1
    new-instance v0, Lcom/movial/ipphone/IPConnection;

    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-direct {v0, v3, p1, p0, v4}, Lcom/movial/ipphone/IPConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/movial/ipphone/IPCallTracker;Lcom/movial/ipphone/IPCall;)V

    .line 454
    .local v0, "conn":Lcom/movial/ipphone/IPConnection;
    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->addConnection(Lcom/movial/ipphone/IPConnection;)V

    .line 456
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IPCallTracker;->setMute(Z)V

    .line 458
    if-nez v1, :cond_3

    .line 459
    invoke-direct {p0, v0, p2}, Lcom/movial/ipphone/IPCallTracker;->dial(Lcom/movial/ipphone/IPConnection;I)V

    .line 467
    :goto_1
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V

    .line 468
    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    .line 470
    return-object v0

    .end local v0    # "conn":Lcom/movial/ipphone/IPConnection;
    .end local v1    # "hasHold":Z
    :cond_2
    move v1, v2

    .line 448
    goto :goto_0

    .line 463
    .restart local v0    # "conn":Lcom/movial/ipphone/IPConnection;
    .restart local v1    # "hasHold":Z
    :cond_3
    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    .line 464
    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    iget v3, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    invoke-virtual {v2, v3, p2}, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->set(II)V

    goto :goto_1
.end method

.method dialAfterHolding(Lcom/movial/ipphone/SessionCall;)V
    .locals 7
    .param p1, "sessioncall"    # Lcom/movial/ipphone/SessionCall;

    .prologue
    .line 500
    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    invoke-virtual {v4}, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->isNull()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    sget-object v5, Lcom/movial/ipphone/SessionCall$State;->HOLDING:Lcom/movial/ipphone/SessionCall$State;

    if-eq v4, v5, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    const/4 v1, 0x0

    .line 505
    .local v1, "conn":Lcom/movial/ipphone/IPConnection;
    const/4 v3, 0x0

    .line 506
    .local v3, "i":I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 507
    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/movial/ipphone/IPConnection;

    iget v4, v4, Lcom/movial/ipphone/IPConnection;->index:I

    iget v5, p1, Lcom/movial/ipphone/SessionCall;->index:I

    if-ne v4, v5, :cond_4

    .line 508
    const-string v4, "IPCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "matched index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/movial/ipphone/SessionCall;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_2
    iget-boolean v4, p1, Lcom/movial/ipphone/SessionCall;->inConf:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 513
    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    move-object v1, v0

    .line 514
    invoke-virtual {v1}, Lcom/movial/ipphone/IPConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    .line 521
    :cond_3
    invoke-virtual {p0}, Lcom/movial/ipphone/IPCallTracker;->clearDisconnected()V

    .line 523
    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "conn":Lcom/movial/ipphone/IPConnection;
    check-cast v1, Lcom/movial/ipphone/IPConnection;

    .line 524
    .restart local v1    # "conn":Lcom/movial/ipphone/IPConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    .line 526
    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    iget v4, v4, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->clirMode:I

    invoke-direct {p0, v1, v4}, Lcom/movial/ipphone/IPCallTracker;->dial(Lcom/movial/ipphone/IPConnection;I)V

    .line 527
    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    invoke-virtual {v4}, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->clear()V

    .line 528
    const/4 v4, -0x1

    iput v4, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    goto :goto_0

    .line 506
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 517
    :catch_0
    move-exception v2

    .line 518
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 838
    iget-boolean v0, p0, Lcom/movial/ipphone/IPCallTracker;->desiredMute:Z

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 1022
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 233
    return-void
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 229
    return-void
.end method

.method hangup(Lcom/movial/ipphone/IPCall;)V
    .locals 3
    .param p1, "call"    # Lcom/movial/ipphone/IPCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangup call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p1}, Lcom/movial/ipphone/IPCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_0
    iget-boolean v0, p0, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    if-eqz v0, :cond_1

    .line 606
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot hangup: conference call is establishing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    if-ne p1, v0, :cond_2

    .line 609
    const-string v0, "(ringing) hangup ringing or waiting call"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0, p1}, Lcom/movial/ipphone/IPCallTracker;->reject(Lcom/movial/ipphone/IPCall;)V

    .line 629
    :goto_0
    invoke-virtual {p1}, Lcom/movial/ipphone/IPCall;->onHangupLocal()V

    .line 630
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    .line 631
    return-void

    .line 611
    :cond_2
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    if-ne p1, v0, :cond_4

    .line 612
    invoke-virtual {p1}, Lcom/movial/ipphone/IPCall;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 613
    const-string v0, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p1}, Lcom/movial/ipphone/IPCall;->getConnections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->hangup(Lcom/movial/ipphone/IPConnection;)V

    goto :goto_0

    .line 616
    :cond_3
    invoke-virtual {p0}, Lcom/movial/ipphone/IPCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_0

    .line 618
    :cond_4
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    if-ne p1, v0, :cond_6

    .line 619
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 620
    const-string v0, "(backgnd) hangup all rining call"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->reject(Lcom/movial/ipphone/IPCall;)V

    goto :goto_0

    .line 623
    :cond_5
    const-string v0, "(backgnd) hangup all conns in background call"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0, p1}, Lcom/movial/ipphone/IPCallTracker;->hangupAll(Lcom/movial/ipphone/IPCall;)V

    goto :goto_0

    .line 627
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to IPCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hangup(Lcom/movial/ipphone/IPConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/movial/ipphone/IPConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 726
    iget-object v1, p1, Lcom/movial/ipphone/IPConnection;->owner:Lcom/movial/ipphone/IPCallTracker;

    if-eq v1, p0, :cond_0

    .line 727
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IPConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to IPCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->isNull()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 730
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x24

    invoke-direct {p0, v1, v2}, Lcom/movial/ipphone/IPCallTracker;->removeConnection(II)Z

    .line 731
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V

    .line 732
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->clear()V

    .line 746
    :goto_0
    invoke-virtual {p1}, Lcom/movial/ipphone/IPConnection;->onHangupLocal()V

    .line 747
    return-void

    .line 735
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/movial/ipphone/IPConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 736
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-virtual {p1}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/movial/ipphone/IIPService;->reject(I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Landroid/os/DeadObjectException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangup connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FAILED. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/DeadObjectException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 738
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-virtual {p1}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/movial/ipphone/IIPService;->hangup(I)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 741
    :catch_1
    move-exception v0

    .line 742
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangup connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FAILED. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    .line 743
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->clearConnections()V

    goto :goto_0
.end method

.method hangupAll()V
    .locals 3

    .prologue
    .line 634
    const-string v1, "hangupAll()#"

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 636
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    const-string v1, "hangupAll(): hangup ringing call"

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 639
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->hangupAll(Lcom/movial/ipphone/IPCall;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_1

    .line 646
    const-string v1, "hangupAll(): hangup foreground call"

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 649
    :try_start_1
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->hangupAll(Lcom/movial/ipphone/IPCall;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 655
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_2

    .line 656
    const-string v1, "hangupAll(): hangup background call"

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 659
    :try_start_2
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->hangupAll(Lcom/movial/ipphone/IPCall;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 665
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->clearConnections()V

    .line 666
    return-void

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto :goto_0

    .line 650
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :catch_1
    move-exception v0

    .line 651
    .restart local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto :goto_1

    .line 660
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :catch_2
    move-exception v0

    .line 661
    .restart local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto :goto_2
.end method

.method hangupAll(Lcom/movial/ipphone/IPCall;)V
    .locals 4
    .param p1, "call"    # Lcom/movial/ipphone/IPCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 750
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 752
    :try_start_0
    iget-object v2, p1, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/movial/ipphone/IPConnection;

    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IPCallTracker;->hangup(Lcom/movial/ipphone/IPConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hangupAll FAILED. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 756
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method hangupForegroundResumeBackground()V
    .locals 3

    .prologue
    .line 760
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v1}, Lcom/movial/ipphone/IIPService;->hangupForegroundResumeBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :goto_0
    return-void

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupForegroundResumeBackground FAILED. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    .line 763
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->clearConnections()V

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 971
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    .line 972
    const-string v0, "IPCallTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1013
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1005
    return-void
.end method

.method public registerHandler()V
    .locals 3

    .prologue
    .line 236
    const-string v1, "registerHandler"

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPPhone;->getService()Lcom/movial/ipphone/IIPService;

    move-result-object v1

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    .line 239
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->mMsnger:Landroid/os/Messenger;

    invoke-interface {v1, v2}, Lcom/movial/ipphone/IIPService;->registerForCallStates(Landroid/os/Messenger;)V

    .line 240
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method reject(Lcom/movial/ipphone/IPCall;)V
    .locals 5
    .param p1, "call"    # Lcom/movial/ipphone/IPCall;

    .prologue
    .line 768
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    if-eq p1, v3, :cond_0

    .line 769
    const-string v3, "no ringing or waiting call to reject"

    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    .line 771
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p1, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 772
    iget-object v3, p1, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    .line 774
    .local v0, "conn":Lcom/movial/ipphone/IPConnection;
    :try_start_0
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/movial/ipphone/IIPService;->reject(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 775
    :catch_0
    move-exception v1

    .line 776
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject ringing or waiting call FAILED. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 779
    .end local v0    # "conn":Lcom/movial/ipphone/IPConnection;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method rejectCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 592
    const-string v1, "reject call"

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 594
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/movial/ipphone/IIPService;->reject(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :goto_0
    return-void

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reject call FAILED. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 669
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 671
    :cond_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/movial/ipphone/IPConnection;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v0

    .line 672
    .local v0, "index":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0, v0, p1}, Lcom/movial/ipphone/IPCallTracker;->sendDtmf(IC)V

    .line 675
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method sendDtmf(IC)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "c"    # C

    .prologue
    .line 696
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 703
    :goto_0
    return-void

    .line 699
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v1, p1, p2}, Lcom/movial/ipphone/IIPService;->sendDtmf(IC)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf FAILED. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setMute(Z)V
    .locals 2
    .param p1, "mute"    # Z

    .prologue
    .line 829
    iput-boolean p1, p0, Lcom/movial/ipphone/IPCallTracker;->desiredMute:Z

    .line 831
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v1, p1}, Lcom/movial/ipphone/IIPService;->setMute(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :goto_0
    return-void

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method startDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 678
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 680
    :cond_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/movial/ipphone/IPConnection;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v0

    .line 681
    .local v0, "index":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0, v0, p1}, Lcom/movial/ipphone/IPCallTracker;->startDtmf(IC)V

    .line 684
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method startDtmf(IC)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "c"    # C

    .prologue
    .line 706
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 713
    :goto_0
    return-void

    .line 709
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v1, p1, p2}, Lcom/movial/ipphone/IIPService;->startDtmf(IC)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stratDtmf FAILED. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method stopDtmf()V
    .locals 3

    .prologue
    .line 687
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 689
    :cond_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/movial/ipphone/IPConnection;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v0

    .line 690
    .local v0, "index":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDtmf. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->stopDtmf(I)V

    .line 693
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method stopDtmf(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 716
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 723
    :goto_0
    return-void

    .line 719
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v1, p1}, Lcom/movial/ipphone/IIPService;->stopDtmf(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDtmf FAILED. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method switchWaitingOrHoldingAndActive(Z)I
    .locals 5
    .param p1, "accept"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchWaitingOrHoldingAndActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSwapCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/movial/ipphone/IPCallTracker;->mSwapCall:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 787
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_0

    .line 788
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot be in the incoming state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 789
    :cond_0
    iget-boolean v3, p0, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    if-eqz v3, :cond_1

    .line 790
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "conference call is establishing"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 793
    :cond_1
    :try_start_0
    iget v3, p0, Lcom/movial/ipphone/IPCallTracker;->mSwapCall:I

    if-eq v2, v3, :cond_2

    move v1, v2

    .line 804
    :goto_0
    return v1

    .line 797
    :cond_2
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v3, p1}, Lcom/movial/ipphone/IIPService;->hold(Z)I

    move-result v1

    .line 798
    .local v1, "result":I
    if-eqz p1, :cond_3

    move v3, v2

    :goto_1
    iput v3, p0, Lcom/movial/ipphone/IPCallTracker;->mSwapCall:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 800
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HoldCall FAILED. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 804
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "result":I
    :cond_3
    move v3, v1

    .line 798
    goto :goto_1
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 782
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->switchWaitingOrHoldingAndActive(Z)I

    .line 783
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1017
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1009
    return-void
.end method
