.class Lcom/android/phone/CallStateMonitor;
.super Landroid/os/Handler;
.source "CallStateMonitor.java"


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private callManager:Lcom/android/internal/telephony/CallManager;

.field private registeredHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/phone/CallStateMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallStateMonitor;->LOG_TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallStateMonitor;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .param p1, "callManager"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallStateMonitor;->registeredHandlers:Ljava/util/ArrayList;

    .line 78
    invoke-direct {p0}, Lcom/android/phone/CallStateMonitor;->registerForNotifications()V

    .line 79
    return-void
.end method

.method private registerForNotifications()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 108
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->registeredHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    sget-boolean v0, Lcom/android/phone/CallStateMonitor;->DBG:Z

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/android/phone/CallStateMonitor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding Handler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->registeredHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 119
    sget-boolean v2, Lcom/android/phone/CallStateMonitor;->DBG:Z

    if-eqz v2, :cond_0

    .line 120
    sget-object v2, Lcom/android/phone/CallStateMonitor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallStateMonitor;->registeredHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 124
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 126
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method public updateAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/phone/CallStateMonitor;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/CallStateMonitor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 142
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 143
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 146
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 147
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 151
    iget-object v0, p0, Lcom/android/phone/CallStateMonitor;->callManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForTtyModeReceived(Landroid/os/Handler;)V

    .line 153
    invoke-direct {p0}, Lcom/android/phone/CallStateMonitor;->registerForNotifications()V

    .line 154
    return-void
.end method
