.class final Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;
.super Ljava/lang/Object;
.source "PstnPhoneCapabilitiesNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$Listener;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$Listener;

.field private mPhoneBase:Lcom/android/internal/telephony/Phone;

.field private final mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

.field private final mRatReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneProxy;Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$Listener;)V
    .locals 3
    .param p1, "phoneProxy"    # Lcom/android/internal/telephony/PhoneProxy;
    .param p2, "listener"    # Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$Listener;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$1;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$1;-><init>(Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;)V

    iput-object v1, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v1, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$2;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$2;-><init>(Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;)V

    iput-object v1, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mRatReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    .line 86
    iput-object p2, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mListener:Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$Listener;

    .line 88
    invoke-direct {p0}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->registerForNotifications()V

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mRatReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->handleVideoCapabilitesChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->registerForNotifications()V

    return-void
.end method

.method private handleVideoCapabilitesChanged(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v9, 0x0

    .line 124
    :try_start_0
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 125
    .local v4, "isVideoCapable":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleVideoCapabilitesChanged. Video capability - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v7, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 129
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v7, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v6

    .line 130
    .local v6, "telecomMgr":Landroid/telecom/TelecomManager;
    invoke-virtual {v6, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v5

    .line 131
    .local v5, "oldPhoneAccount":Landroid/telecom/PhoneAccount;
    new-instance v1, Landroid/telecom/PhoneAccount$Builder;

    invoke-direct {v1, v5}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccount;)V

    .line 133
    .local v1, "builder":Landroid/telecom/PhoneAccount$Builder;
    invoke-virtual {v5}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v7

    const/16 v8, 0x8

    invoke-direct {p0, v7, v8, v4}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->newCapabilities(IIZ)I

    move-result v2

    .line 136
    .local v2, "capabilites":I
    invoke-virtual {v1, v2}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    .line 137
    invoke-virtual {v1}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    .line 138
    iget-object v7, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mListener:Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$Listener;

    invoke-interface {v7, v4}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$Listener;->onVideoCapabilitiesChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "builder":Landroid/telecom/PhoneAccount$Builder;
    .end local v2    # "capabilites":I
    .end local v4    # "isVideoCapable":Z
    .end local v5    # "oldPhoneAccount":Landroid/telecom/PhoneAccount;
    .end local v6    # "telecomMgr":Landroid/telecom/TelecomManager;
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v3

    .line 140
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleVideoCapabilitesChanged. Exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private newCapabilities(IIZ)I
    .locals 1
    .param p1, "capabilities"    # I
    .param p2, "capability"    # I
    .param p3, "set"    # Z

    .prologue
    .line 145
    if-eqz p3, :cond_0

    .line 146
    or-int/2addr p1, p2

    .line 150
    :goto_0
    return p1

    .line 148
    :cond_0
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr p1, v0

    goto :goto_0
.end method

.method private registerForNotifications()V
    .locals 5

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 103
    .local v0, "newPhone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    if-eq v0, v1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->unregisterForNotifications()V

    .line 106
    if-eqz v0, :cond_0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iput-object v0, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    .line 109
    iget-object v1, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVideoCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 113
    :cond_0
    return-void
.end method

.method private unregisterForNotifications()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregistering: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForVideoCapabilityChanged(Landroid/os/Handler;)V

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method teardown()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->unregisterForNotifications()V

    .line 98
    iget-object v0, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mRatReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method
