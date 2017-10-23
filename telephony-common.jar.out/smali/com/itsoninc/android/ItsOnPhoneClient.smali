.class public Lcom/itsoninc/android/ItsOnPhoneClient;
.super Ljava/lang/Object;
.source "ItsOnPhoneClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsoninc/android/ItsOnPhoneClient$2;,
        Lcom/itsoninc/android/ItsOnPhoneClient$AndroidFramework;
    }
.end annotation


# static fields
.field protected static final EVENT_POLL_CALLS_RESULT:I = 0x1

.field private static final IOPC_LOGD:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "IOPC"

.field private static instance:Lcom/itsoninc/android/ItsOnPhoneClient;

.field private static final mRilTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/RIL;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApi:Lcom/itsoninc/android/ItsOnOemApi;

.field private final mHandler:Landroid/os/Handler;

.field private mtkCallList:[Lcom/itsoninc/android/DeviceCall;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/itsoninc/android/ItsOnPhoneClient;->instance:Lcom/itsoninc/android/ItsOnPhoneClient;

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/itsoninc/android/ItsOnPhoneClient;->mRilTable:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/itsoninc/android/DeviceCall;

    iput-object v1, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mtkCallList:[Lcom/itsoninc/android/DeviceCall;

    .line 30
    iput-object v2, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    .line 65
    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->getInstance()Lcom/itsoninc/android/ItsOnOemApi;

    move-result-object v1

    iput-object v1, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    .line 66
    iget-object v1, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v1, p1}, Lcom/itsoninc/android/ItsOnOemApi;->initTelephony(Landroid/content/Context;)V

    .line 68
    new-instance v1, Lcom/itsoninc/android/ItsOnPhoneClient$1;

    invoke-direct {v1, p0}, Lcom/itsoninc/android/ItsOnPhoneClient$1;-><init>(Lcom/itsoninc/android/ItsOnPhoneClient;)V

    iput-object v1, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/itsoninc/android/ItsOnPhoneClient$AndroidFramework;

    invoke-direct {v0, p0, v2}, Lcom/itsoninc/android/ItsOnPhoneClient$AndroidFramework;-><init>(Lcom/itsoninc/android/ItsOnPhoneClient;Lcom/itsoninc/android/ItsOnPhoneClient$1;)V

    .line 72
    .local v0, "af":Lcom/itsoninc/android/ItsOnPhoneClient$AndroidFramework;
    iget-object v1, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v1, v0}, Lcom/itsoninc/android/ItsOnOemApi;->setHangupInterface(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;)V

    .line 73
    return-void
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/itsoninc/android/ItsOnPhoneClient;->mRilTable:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/itsoninc/android/ItsOnPhoneClient;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/itsoninc/android/ItsOnPhoneClient;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private adaptCallList(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DriverCall;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/itsoninc/android/DeviceCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/DriverCall;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v7, "deviceCalls":Ljava/util/List;, "Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/DriverCall;

    .line 109
    .local v6, "call":Lcom/android/internal/telephony/DriverCall;
    const/4 v3, 0x0

    .line 110
    .local v3, "state":Lcom/itsoninc/android/DeviceCall$CallState;
    sget-object v1, Lcom/itsoninc/android/ItsOnPhoneClient$2;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    iget-object v2, v6, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 131
    :goto_1
    new-instance v0, Lcom/itsoninc/android/DeviceCall;

    iget v1, v6, Lcom/android/internal/telephony/DriverCall;->index:I

    iget-boolean v2, v6, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    iget-object v4, v6, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget-boolean v5, v6, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    invoke-direct/range {v0 .. v5}, Lcom/itsoninc/android/DeviceCall;-><init>(IZLcom/itsoninc/android/DeviceCall$CallState;Ljava/lang/String;Z)V

    .line 132
    .local v0, "d":Lcom/itsoninc/android/DeviceCall;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    .end local v0    # "d":Lcom/itsoninc/android/DeviceCall;
    :pswitch_0
    sget-object v3, Lcom/itsoninc/android/DeviceCall$CallState;->ACTIVE:Lcom/itsoninc/android/DeviceCall$CallState;

    .line 113
    goto :goto_1

    .line 115
    :pswitch_1
    sget-object v3, Lcom/itsoninc/android/DeviceCall$CallState;->ALERTING:Lcom/itsoninc/android/DeviceCall$CallState;

    .line 116
    goto :goto_1

    .line 118
    :pswitch_2
    sget-object v3, Lcom/itsoninc/android/DeviceCall$CallState;->DIALING:Lcom/itsoninc/android/DeviceCall$CallState;

    .line 119
    goto :goto_1

    .line 121
    :pswitch_3
    sget-object v3, Lcom/itsoninc/android/DeviceCall$CallState;->HOLDING:Lcom/itsoninc/android/DeviceCall$CallState;

    .line 122
    goto :goto_1

    .line 124
    :pswitch_4
    sget-object v3, Lcom/itsoninc/android/DeviceCall$CallState;->INCOMING:Lcom/itsoninc/android/DeviceCall$CallState;

    .line 125
    goto :goto_1

    .line 127
    :pswitch_5
    sget-object v3, Lcom/itsoninc/android/DeviceCall$CallState;->WAITING:Lcom/itsoninc/android/DeviceCall$CallState;

    goto :goto_1

    .line 134
    .end local v3    # "state":Lcom/itsoninc/android/DeviceCall$CallState;
    .end local v6    # "call":Lcom/android/internal/telephony/DriverCall;
    :cond_0
    return-object v7

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/internal/telephony/RIL;I)Lcom/itsoninc/android/ItsOnPhoneClient;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;
    .param p2, "phoneId"    # I

    .prologue
    .line 53
    const-class v1, Lcom/itsoninc/android/ItsOnPhoneClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/itsoninc/android/ItsOnPhoneClient;->instance:Lcom/itsoninc/android/ItsOnPhoneClient;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/itsoninc/android/ItsOnPhoneClient;

    invoke-direct {v0, p0}, Lcom/itsoninc/android/ItsOnPhoneClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/itsoninc/android/ItsOnPhoneClient;->instance:Lcom/itsoninc/android/ItsOnPhoneClient;

    .line 58
    :cond_0
    const-string v0, "IOPC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering RIL for phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v0, Lcom/itsoninc/android/ItsOnPhoneClient;->mRilTable:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/itsoninc/android/ItsOnPhoneClient;->instance:Lcom/itsoninc/android/ItsOnPhoneClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public acceptCall(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v0, p1, p2}, Lcom/itsoninc/android/ItsOnOemApi;->acceptCall(II)V

    .line 269
    return-void
.end method

.method public authorizeIncomingSMS(Landroid/telephony/SmsMessage;II)Z
    .locals 2
    .param p1, "sms"    # Landroid/telephony/SmsMessage;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/itsoninc/android/ItsOnOemApi;->authorizeIncomingSms([BII)Z

    move-result v0

    return v0
.end method

.method public authorizeIncomingVoice(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemApi;->authorizeIncomingVoice(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public authorizeOutgoingSMS([BIII)Z
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "serial"    # I
    .param p3, "phoneId"    # I
    .param p4, "subId"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsoninc/android/ItsOnOemApi;->authorizeOutgoingSms([BIII)Z

    move-result v0

    return v0
.end method

.method public callWaiting(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemApi;->callWaiting(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public dial(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemApi;->dial(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public flash(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "featureCode"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemApi;->flash(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public nitzTimeReceived(Ljava/lang/String;J)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    .line 255
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemApi;->nitzTimeReceived(Ljava/lang/String;J)V

    .line 256
    return-void
.end method

.method public onNewDataSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "phoneId"    # I
    .param p5, "subId"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsoninc/android/ItsOnOemApi;->onNewDataSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 77
    return-void
.end method

.method public sendSMSError(III)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemApi;->smsError(III)V

    .line 93
    return-void
.end method

.method public sendSMSSuccess(III)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemApi;->smsSuccess(III)V

    .line 89
    return-void
.end method

.method public setEmergencyMode(ZII)V
    .locals 1
    .param p1, "inEmergencyMode"    # Z
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemApi;->setEmergencyMode(ZII)V

    .line 283
    return-void
.end method

.method public trackCalls(Ljava/util/List;II)V
    .locals 2
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DriverCall;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/DriverCall;>;"
    invoke-direct {p0, p1}, Lcom/itsoninc/android/ItsOnPhoneClient;->adaptCallList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, "deviceCalls":Ljava/util/List;, "Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    iget-object v1, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v1, v0, p2, p3}, Lcom/itsoninc/android/ItsOnOemApi;->processCallList(Ljava/util/List;II)V

    .line 103
    return-void
.end method

.method public trackCdmaCalls(Ljava/util/List;II)V
    .locals 2
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DriverCall;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/DriverCall;>;"
    invoke-direct {p0, p1}, Lcom/itsoninc/android/ItsOnPhoneClient;->adaptCallList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 278
    .local v0, "deviceCalls":Ljava/util/List;, "Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    iget-object v1, p0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v1, v0, p2, p3}, Lcom/itsoninc/android/ItsOnOemApi;->processCDMACallList(Ljava/util/List;II)V

    .line 279
    return-void
.end method

.method public trackMtkCallProgress([Ljava/lang/String;II)V
    .locals 34
    .param p1, "callProgress"    # [Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 143
    const/16 v20, 0x0

    .line 144
    .local v20, "CSMCC_SETUP_MSG":I
    const/16 v18, 0x1

    .line 145
    .local v18, "CSMCC_DISCONNECT_MSG":I
    const/4 v13, 0x2

    .line 146
    .local v13, "CSMCC_ALERT_MSG":I
    const/16 v17, 0x3

    .line 147
    .local v17, "CSMCC_CALL_PROCESS_MSG":I
    const/16 v25, 0x4

    .line 148
    .local v25, "CSMCC_SYNC_MSG":I
    const/16 v19, 0x5

    .line 149
    .local v19, "CSMCC_PROGRESS_MSG":I
    const/4 v15, 0x6

    .line 150
    .local v15, "CSMCC_CALL_CONNECTED_MSG":I
    const/16 v14, 0x81

    .line 151
    .local v14, "CSMCC_ALL_CALLS_DISC_MSG":I
    const/16 v16, 0x82

    .line 152
    .local v16, "CSMCC_CALL_ID_ASSIGN_MSG":I
    const/16 v23, 0x83

    .line 153
    .local v23, "CSMCC_STATE_CHANGE_HELD":I
    const/16 v21, 0x84

    .line 154
    .local v21, "CSMCC_STATE_CHANGE_ACTIVE":I
    const/16 v22, 0x85

    .line 155
    .local v22, "CSMCC_STATE_CHANGE_DISCONNECTED":I
    const/16 v24, 0x86

    .line 158
    .local v24, "CSMCC_STATE_CHANGE_MO_DISCONNECTING":I
    const/4 v10, 0x0

    .line 159
    .local v10, "CLCC_MO_CALL":I
    const/4 v11, 0x1

    .line 162
    .local v11, "CLCC_MT_CALL":I
    const/4 v12, 0x0

    .line 165
    .local v12, "CLCC_VOICE_CALL":I
    const/16 v31, 0x0

    :try_start_0
    aget-object v31, p1, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 166
    .local v5, "callId":I
    const/16 v31, 0x1

    aget-object v31, p1, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 169
    .local v29, "msgType":I
    const/16 v31, 0x1

    move/from16 v0, v31

    if-lt v5, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itsoninc/android/ItsOnPhoneClient;->mtkCallList:[Lcom/itsoninc/android/DeviceCall;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v5, v0, :cond_1

    .line 170
    :cond_0
    const-string v31, "IOPC"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Invalid call ID: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v5    # "callId":I
    .end local v29    # "msgType":I
    :goto_0
    return-void

    .line 175
    .restart local v5    # "callId":I
    .restart local v29    # "msgType":I
    :cond_1
    if-eqz v29, :cond_2

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    const/16 v31, 0x6

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    const/16 v31, 0x82

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    const/16 v31, 0x83

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    const/16 v31, 0x84

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_18

    .line 180
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itsoninc/android/ItsOnPhoneClient;->mtkCallList:[Lcom/itsoninc/android/DeviceCall;

    move-object/from16 v31, v0

    add-int/lit8 v32, v5, -0x1

    aget-object v4, v31, v32

    .line 181
    .local v4, "deviceCall":Lcom/itsoninc/android/DeviceCall;
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/itsoninc/android/DeviceCall;->isMT()Z

    move-result v9

    .line 182
    .local v9, "isMt":Z
    :goto_1
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/itsoninc/android/DeviceCall;->isVoice()Z

    move-result v6

    .line 183
    .local v6, "isVoice":Z
    :goto_2
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/itsoninc/android/DeviceCall;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "number":Ljava/lang/String;
    :goto_3
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/itsoninc/android/DeviceCall;->getState()Lcom/itsoninc/android/DeviceCall$CallState;

    move-result-object v7

    .line 186
    .local v7, "callState":Lcom/itsoninc/android/DeviceCall$CallState;
    :goto_4
    if-eqz v29, :cond_3

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_3

    const/16 v31, 0x6

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_3

    const/16 v31, 0x82

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 190
    :cond_3
    const/16 v31, 0x4

    aget-object v31, p1, v31

    if-eqz v31, :cond_4

    const/16 v31, 0x4

    aget-object v31, p1, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    if-eqz v31, :cond_4

    .line 191
    const/16 v31, 0x4

    aget-object v31, p1, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    const/4 v9, 0x1

    .line 195
    :cond_4
    :goto_5
    const/16 v31, 0x5

    aget-object v31, p1, v31

    if-eqz v31, :cond_5

    const/16 v31, 0x5

    aget-object v31, p1, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    if-eqz v31, :cond_5

    .line 196
    const/16 v31, 0x5

    aget-object v31, p1, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    if-nez v31, :cond_10

    const/4 v6, 0x1

    .line 200
    :cond_5
    :goto_6
    const/16 v31, 0x6

    aget-object v31, p1, v31

    if-eqz v31, :cond_6

    const/16 v31, 0x6

    aget-object v31, p1, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    if-eqz v31, :cond_6

    .line 201
    const/16 v31, 0x6

    aget-object v8, p1, v31

    .line 206
    :cond_6
    const/16 v31, 0x84

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    const/16 v31, 0x6

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_11

    .line 207
    :cond_7
    sget-object v7, Lcom/itsoninc/android/DeviceCall$CallState;->ACTIVE:Lcom/itsoninc/android/DeviceCall$CallState;

    .line 229
    :cond_8
    :goto_7
    new-instance v4, Lcom/itsoninc/android/DeviceCall;

    .end local v4    # "deviceCall":Lcom/itsoninc/android/DeviceCall;
    invoke-direct/range {v4 .. v9}, Lcom/itsoninc/android/DeviceCall;-><init>(IZLcom/itsoninc/android/DeviceCall$CallState;Ljava/lang/String;Z)V

    .line 230
    .restart local v4    # "deviceCall":Lcom/itsoninc/android/DeviceCall;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itsoninc/android/ItsOnPhoneClient;->mtkCallList:[Lcom/itsoninc/android/DeviceCall;

    move-object/from16 v31, v0

    add-int/lit8 v32, v5, -0x1

    aput-object v4, v31, v32

    .line 242
    .end local v4    # "deviceCall":Lcom/itsoninc/android/DeviceCall;
    .end local v6    # "isVoice":Z
    .end local v7    # "callState":Lcom/itsoninc/android/DeviceCall$CallState;
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "isMt":Z
    :cond_9
    :goto_8
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v26, "deviceCalls":Ljava/util/List;, "Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itsoninc/android/ItsOnPhoneClient;->mtkCallList:[Lcom/itsoninc/android/DeviceCall;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_1a

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itsoninc/android/ItsOnPhoneClient;->mtkCallList:[Lcom/itsoninc/android/DeviceCall;

    move-object/from16 v31, v0

    aget-object v31, v31, v28

    if-eqz v31, :cond_a

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itsoninc/android/ItsOnPhoneClient;->mtkCallList:[Lcom/itsoninc/android/DeviceCall;

    move-object/from16 v31, v0

    aget-object v31, v31, v28

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_a
    add-int/lit8 v28, v28, 0x1

    goto :goto_9

    .line 181
    .end local v26    # "deviceCalls":Ljava/util/List;, "Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    .end local v28    # "i":I
    .restart local v4    # "deviceCall":Lcom/itsoninc/android/DeviceCall;
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 182
    .restart local v9    # "isMt":Z
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 183
    .restart local v6    # "isVoice":Z
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 184
    .restart local v8    # "number":Ljava/lang/String;
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 191
    .restart local v7    # "callState":Lcom/itsoninc/android/DeviceCall$CallState;
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 196
    :cond_10
    const/4 v6, 0x0

    goto :goto_6

    .line 208
    :cond_11
    const/16 v31, 0x83

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_12

    .line 209
    sget-object v7, Lcom/itsoninc/android/DeviceCall$CallState;->HOLDING:Lcom/itsoninc/android/DeviceCall$CallState;

    goto :goto_7

    .line 210
    :cond_12
    const/16 v31, 0x82

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_13

    .line 211
    sget-object v7, Lcom/itsoninc/android/DeviceCall$CallState;->DIALING:Lcom/itsoninc/android/DeviceCall$CallState;

    goto :goto_7

    .line 212
    :cond_13
    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    .line 213
    sget-object v7, Lcom/itsoninc/android/DeviceCall$CallState;->ALERTING:Lcom/itsoninc/android/DeviceCall$CallState;

    goto :goto_7

    .line 214
    :cond_14
    if-nez v29, :cond_8

    .line 215
    const/16 v30, 0x0

    .line 216
    .local v30, "numCalls":I
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itsoninc/android/ItsOnPhoneClient;->mtkCallList:[Lcom/itsoninc/android/DeviceCall;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_16

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itsoninc/android/ItsOnPhoneClient;->mtkCallList:[Lcom/itsoninc/android/DeviceCall;

    move-object/from16 v31, v0

    aget-object v31, v31, v28

    if-eqz v31, :cond_15

    .line 218
    add-int/lit8 v30, v30, 0x1

    .line 216
    :cond_15
    add-int/lit8 v28, v28, 0x1

    goto :goto_a

    .line 221
    :cond_16
    if-nez v30, :cond_17

    .line 222
    sget-object v7, Lcom/itsoninc/android/DeviceCall$CallState;->INCOMING:Lcom/itsoninc/android/DeviceCall$CallState;

    goto/16 :goto_7

    .line 224
    :cond_17
    sget-object v7, Lcom/itsoninc/android/DeviceCall$CallState;->WAITING:Lcom/itsoninc/android/DeviceCall$CallState;

    goto/16 :goto_7

    .line 231
    .end local v4    # "deviceCall":Lcom/itsoninc/android/DeviceCall;
    .end local v6    # "isVoice":Z
    .end local v7    # "callState":Lcom/itsoninc/android/DeviceCall$CallState;
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "isMt":Z
    .end local v28    # "i":I
    .end local v30    # "numCalls":I
    :cond_18
    const/16 v31, 0x85

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_19

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itsoninc/android/ItsOnPhoneClient;->mtkCallList:[Lcom/itsoninc/android/DeviceCall;

    move-object/from16 v31, v0

    add-int/lit8 v32, v5, -0x1

    const/16 v33, 0x0

    aput-object v33, v31, v32
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    .line 249
    .end local v5    # "callId":I
    .end local v29    # "msgType":I
    :catch_0
    move-exception v27

    .line 250
    .local v27, "e":Ljava/lang/Exception;
    const-string v31, "IOPC"

    const-string v32, "Error handling MTK call progress message"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 234
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v5    # "callId":I
    .restart local v29    # "msgType":I
    :cond_19
    const/16 v31, 0x81

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 236
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itsoninc/android/ItsOnPhoneClient;->mtkCallList:[Lcom/itsoninc/android/DeviceCall;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_9

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itsoninc/android/ItsOnPhoneClient;->mtkCallList:[Lcom/itsoninc/android/DeviceCall;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v32, v31, v28

    .line 236
    add-int/lit8 v28, v28, 0x1

    goto :goto_b

    .line 248
    .restart local v26    # "deviceCalls":Ljava/util/List;, "Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itsoninc/android/ItsOnPhoneClient;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/itsoninc/android/ItsOnOemApi;->processCallList(Ljava/util/List;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
