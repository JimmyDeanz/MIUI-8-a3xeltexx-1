.class public Lcom/sec/epdg/handover/EpdgImsListener60;
.super Lcom/sec/epdg/handover/EpdgImsListener;
.source "EpdgImsListener60.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;,
        Lcom/sec/epdg/handover/EpdgImsListener60$SettingChangeObserver;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnImsSettingsChangeEvent;,
        Lcom/sec/epdg/handover/EpdgImsListener60$ImsRegRunnable;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnRegistered;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnDeRegistered;,
        Lcom/sec/epdg/handover/EpdgImsListener60$ImsCallRunnable;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnCallEstablish;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnCallStarted;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnCallModified;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnCallModifyRequested;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnCallEnded;,
        Lcom/sec/epdg/handover/EpdgImsListener60$OnDedicatedBearerEvent;,
        Lcom/sec/epdg/handover/EpdgImsListener60$ImsManagerConnected;,
        Lcom/sec/epdg/handover/EpdgImsListener60$EpdgCallEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[EpdgImsListener]"

.field private static mContext:Landroid/content/Context;

.field private static mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

.field private static mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener60;

.field private static mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;

.field private static mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

.field private static final mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

.field private static mImsManager:Lcom/sec/ims/ImsManager;

.field private static final mImsManagerConnListener:Lcom/sec/ims/ImsManager$ConnectionListener;

.field private static mIpmeStatus:Z

.field private static mService:Lcom/sec/ims/volte2/IVolteService;

.field private static mSvcConn:Landroid/content/ServiceConnection;

.field private static mePdgHandler:Landroid/os/Handler;


# instance fields
.field private final mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener60;

    .line 50
    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    .line 51
    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    .line 52
    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;

    .line 53
    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 54
    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mSvcConn:Landroid/content/ServiceConnection;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mIpmeStatus:Z

    .line 58
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener60$1;

    invoke-direct {v0}, Lcom/sec/epdg/handover/EpdgImsListener60$1;-><init>()V

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

    .line 194
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener60$3;

    invoke-direct {v0}, Lcom/sec/epdg/handover/EpdgImsListener60$3;-><init>()V

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mImsManagerConnListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hdlr"    # Landroid/os/Handler;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener;-><init>()V

    .line 250
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener60$4;

    invoke-direct {v0, p0}, Lcom/sec/epdg/handover/EpdgImsListener60$4;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;)V

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener60;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 70
    sput-object p2, Lcom/sec/epdg/handover/EpdgImsListener60;->mePdgHandler:Landroid/os/Handler;

    .line 71
    sput-object p1, Lcom/sec/epdg/handover/EpdgImsListener60;->mContext:Landroid/content/Context;

    .line 73
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/sec/epdg/handover/EpdgImsSettings;->getInstance(Landroid/content/Context;Landroid/os/Handler;Landroid/util/SparseArray;)Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    .line 74
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-direct {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;-><init>()V

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    .line 75
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsRegStatus;

    invoke-direct {v0}, Lcom/sec/epdg/handover/EpdgImsRegStatus;-><init>()V

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;

    .line 76
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->postImsReadyToEpdgService()V

    .line 79
    :cond_0
    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 43
    invoke-static {p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->setIpmeStatus(Z)V

    return-void
.end method

.method static synthetic access$100(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 43
    invoke-static {p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->informIpmeStatusChangeToHandoverModule(Z)V

    return-void
.end method

.method static synthetic access$1000()Lcom/sec/epdg/handover/EpdgImsRegStatus;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Lcom/sec/ims/volte2/IVolteService;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mService:Lcom/sec/ims/volte2/IVolteService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/ims/volte2/IVolteService;)Lcom/sec/ims/volte2/IVolteService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/ims/volte2/IVolteService;

    .prologue
    .line 43
    sput-object p0, Lcom/sec/epdg/handover/EpdgImsListener60;->mService:Lcom/sec/ims/volte2/IVolteService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/epdg/handover/EpdgImsListener60;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener60;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->resetCallList()V

    return-void
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mePdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()Lcom/sec/epdg/handover/EpdgImsSettings;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->initImsSettings(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900()Lcom/sec/epdg/handover/EpdgImsCallStatus;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    return-object v0
.end method

.method public static getImsManager()Lcom/sec/ims/ImsManager;
    .locals 3

    .prologue
    .line 89
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mImsManager:Lcom/sec/ims/ImsManager;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/sec/ims/ImsManager;

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsListener60;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsListener60;->mImsManagerConnListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 91
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    .line 93
    :cond_0
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hdlr"    # Landroid/os/Handler;

    .prologue
    .line 82
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener60;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener60;

    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener60;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener60;

    .line 85
    :cond_0
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener60;

    return-object v0
.end method

.method protected static informCallStatusChangeToHandoverModule()V
    .locals 3

    .prologue
    .line 412
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    if-eqz v0, :cond_0

    .line 413
    const/16 v0, 0x3e

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/handover/EpdgImsListener60;->postToEpdgService(ILjava/lang/Object;I)V

    .line 416
    :cond_0
    return-void
.end method

.method protected static informHandoverDelayToHandoverModule()V
    .locals 3

    .prologue
    .line 419
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const/16 v0, 0x3d

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/handover/EpdgImsListener60;->postToEpdgService(ILjava/lang/Object;I)V

    .line 423
    :cond_0
    return-void
.end method

.method protected static informImsRegStatusChangeToHandoverModule(I)V
    .locals 2
    .param p0, "networkType"    # I

    .prologue
    .line 426
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    if-eqz v0, :cond_0

    .line 427
    const/16 v0, 0x40

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->postToEpdgService(ILjava/lang/Object;I)V

    .line 431
    :cond_0
    return-void
.end method

.method private static informIpmeStatusChangeToHandoverModule(Z)V
    .locals 3
    .param p0, "isExist"    # Z

    .prologue
    .line 466
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    if-eqz v0, :cond_0

    .line 467
    const/16 v0, 0x4e

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/handover/EpdgImsListener60;->postToEpdgService(ILjava/lang/Object;I)V

    .line 469
    :cond_0
    return-void
.end method

.method private static initImsSettings(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->getInstance()Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->getImsSettings(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->initImsSettings(Ljava/util/HashMap;)V

    .line 155
    return-void
.end method

.method private postImsReadyToEpdgService()V
    .locals 2

    .prologue
    .line 613
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsListener60;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 614
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 615
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 616
    return-void
.end method

.method private static postToEpdgService(ILjava/lang/Object;I)V
    .locals 2
    .param p0, "event"    # I
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "arg1"    # I

    .prologue
    .line 473
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsListener60;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 474
    .local v0, "msg":Landroid/os/Message;
    iput p0, v0, Landroid/os/Message;->what:I

    .line 475
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 476
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 477
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 478
    return-void
.end method

.method private registerCallStatusListener()V
    .locals 4

    .prologue
    .line 163
    const-string v1, "[EpdgImsListener]"

    const-string/jumbo v2, "registerCallStatusListener()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.VolteService2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener60$2;

    invoke-direct {v1, p0}, Lcom/sec/epdg/handover/EpdgImsListener60$2;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;)V

    sput-object v1, Lcom/sec/epdg/handover/EpdgImsListener60;->mSvcConn:Landroid/content/ServiceConnection;

    .line 191
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsListener60;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsListener60;->mSvcConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 192
    return-void
.end method

.method private registerIpmeListener()V
    .locals 2

    .prologue
    .line 434
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "registerIpmeListener()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsListener60;->mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    .line 436
    return-void
.end method

.method private registerRegStatusListener()V
    .locals 2

    .prologue
    .line 247
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener60;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 248
    return-void
.end method

.method private registerSettingsChangeListener()V
    .locals 2

    .prologue
    .line 266
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->getFields()Ljava/util/List;

    move-result-object v0

    .line 267
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->getInstance()Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->registerForSettingChangeEvent(Ljava/util/List;)V

    .line 268
    return-void
.end method

.method private resetCallList()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "resetCallList()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->resetCallList()V

    .line 160
    return-void
.end method

.method private static setIpmeStatus(Z)V
    .locals 3
    .param p0, "value"    # Z

    .prologue
    .line 448
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIpmeStatus: new call status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    sput-boolean p0, Lcom/sec/epdg/handover/EpdgImsListener60;->mIpmeStatus:Z

    .line 450
    return-void
.end method

.method private unregisterIpmeListener()V
    .locals 2

    .prologue
    .line 439
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "unregisterIpmeListener()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsListener60;->mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->unregisterImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    .line 441
    return-void
.end method


# virtual methods
.method public getCallCount()[I
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallCount()[I

    move-result-object v0

    return-object v0
.end method

.method public getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v0

    return-object v0
.end method

.method public getE911CallCount()I
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getE911CallCount()I

    move-result v0

    return v0
.end method

.method public getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    return-object v0
.end method

.method public getIpmeStatus()Z
    .locals 1

    .prologue
    .line 444
    sget-boolean v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mIpmeStatus:Z

    return v0
.end method

.method public getNonE911CallCount()I
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getNonE911CallCount()I

    move-result v0

    return v0
.end method

.method public getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v0

    return-object v0
.end method

.method public getVoWifiSessionConnected()Z
    .locals 4

    .prologue
    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "result":Z
    const-string v1, "[EpdgImsListener]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVoWifiSessionConnected: CALL status is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v1, "[EpdgImsListener]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVoWifiSessionConnected: IPME status is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->getIpmeStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->getIpmeStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 460
    :goto_0
    const-string v1, "[EpdgImsListener]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVoWifiSessionConnected: VOLTE Session is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return v0

    .line 457
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEpdgSettingChanged(Lcom/sec/epdg/EpdgSettings;)V
    .locals 2
    .param p1, "settings"    # Lcom/sec/epdg/EpdgSettings;

    .prologue
    .line 97
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/epdg/handover/EpdgImsSettings;->onEpdgSettingChanged(Lcom/sec/ims/ImsManager;Lcom/sec/epdg/EpdgSettings;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "onEpdgSettingChanged failed"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerListener()V
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->registerCallStatusListener()V

    .line 136
    :cond_0
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    if-eqz v0, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->registerRegStatusListener()V

    .line 139
    :cond_1
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v0, :cond_2

    .line 140
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->registerSettingsChangeListener()V

    .line 142
    :cond_2
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    if-eqz v0, :cond_3

    .line 143
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->registerIpmeListener()V

    .line 145
    :cond_3
    return-void
.end method

.method public setEcbmChanged(Z)V
    .locals 1
    .param p1, "ecbmModeOn"    # Z

    .prologue
    .line 129
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsCallStatus:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->setEcbmChanged(Z)V

    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 603
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 604
    .local v1, "status":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->getCallCount()[I

    move-result-object v0

    .line 605
    .local v0, "callCount":[I
    if-eqz v0, :cond_0

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call Count is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Call status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ims Reg State is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public unregisterListener()V
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener60;->unregisterIpmeListener()V

    .line 151
    :cond_0
    return-void
.end method
