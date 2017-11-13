.class public Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;
.super Ljava/lang/Object;
.source "TelephonyClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$1;,
        Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;
    }
.end annotation


# static fields
.field private static final EMERGENCY_EXIT_TIMEOUT:I = 0x493e0

.field private static final MAX_CONNECTIONS:I = 0x7


# instance fields
.field private final DEBUG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field authorizations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private emergencyTimeoutHandler:Landroid/os/Handler;

.field private fwIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

.field private hangupIf:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

.field private inEmergencyMode:Z

.field private mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

.field private mExitEmergencyRunnable:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;

.field trackedCalls:[Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connector"    # Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->DEBUG:Z

    const-string v0, "ItsOnOEM.GSMTelephonyClient"

    iput-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    iput-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->fwIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    iput-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->hangupIf:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

    iput-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->emergencyTimeoutHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->inEmergencyMode:Z

    iput-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mExitEmergencyRunnable:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->authorizations:Ljava/util/Map;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    iput-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->trackedCalls:[Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    iput-object p2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->emergencyTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

    .prologue
    iget-boolean v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->inEmergencyMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->inEmergencyMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;)Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;
    .locals 1
    .param p0, "x0"    # Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    return-object v0
.end method

.method private authorizeVoice(Ljava/lang/String;III)Ljava/lang/String;
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "direction"    # I
    .param p3, "phoneId"    # I
    .param p4, "subId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ItsOnOEM.GSMTelephonyClient"

    const-string v2, "Entering emergency mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->inEmergencyMode:Z

    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    iget-boolean v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->inEmergencyMode:Z

    invoke-virtual {v1, v2, p3, p4}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->setEmergencyMode(ZII)V

    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mExitEmergencyRunnable:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->emergencyTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mExitEmergencyRunnable:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mExitEmergencyRunnable:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;

    :cond_0
    new-instance v1, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;

    invoke-direct {v1, p0, p3, p4}, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;-><init>(Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;II)V

    iput-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mExitEmergencyRunnable:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;

    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->emergencyTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mExitEmergencyRunnable:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->authorizeVoice(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .local v0, "uuid":Ljava/lang/String;
    return-object v0

    .end local v0    # "uuid":Ljava/lang/String;
    :cond_2
    iget-boolean v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->inEmergencyMode:Z

    if-eqz v1, :cond_1

    const-string v1, "ItsOnOEM.GSMTelephonyClient"

    const-string v2, "Exiting emergency mode due to non-emergency MO call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->inEmergencyMode:Z

    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    iget-boolean v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->inEmergencyMode:Z

    invoke-virtual {v1, v2, p3, p4}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->setEmergencyMode(ZII)V

    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mExitEmergencyRunnable:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->emergencyTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mExitEmergencyRunnable:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mExitEmergencyRunnable:Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$ExitEmergencyRunnable;

    goto :goto_0
.end method

.method private dumpState(Ljava/lang/String;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ItsOnOEM.GSMTelephonyClient"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ItsOnOEM.GSMTelephonyClient"

    const-string v4, "Tracked calls:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->trackedCalls:[Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    const-string v3, "ItsOnOEM.GSMTelephonyClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->trackedCalls:[Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "ItsOnOEM.GSMTelephonyClient"

    const-string v4, "Authorizations:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->authorizations:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    .local v0, "ci":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    const-string v3, "ItsOnOEM.GSMTelephonyClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "ci":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :cond_2
    const-string v3, "ItsOnOEM.GSMTelephonyClient"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private findAuthorizationOrAuthorize(Lcom/itsoninc/android/DeviceCall;II)Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    .locals 3
    .param p1, "call"    # Lcom/itsoninc/android/DeviceCall;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->authorizations:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsoninc/android/DeviceCall;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    .local v0, "callInfo":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/itsoninc/android/DeviceCall;->isMT()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/itsoninc/android/DeviceCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->authorizeIncomingVoice(Ljava/lang/String;II)Z

    :goto_0
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->authorizations:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsoninc/android/DeviceCall;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callInfo":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    check-cast v0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    .restart local v0    # "callInfo":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/itsoninc/android/DeviceCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->authorizeOutgoingVoice(Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private hangupCall(Lcom/itsoninc/android/DeviceCall;II)V
    .locals 2
    .param p1, "call"    # Lcom/itsoninc/android/DeviceCall;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    sget-object v0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient$1;->$SwitchMap$com$itsoninc$android$DeviceCall$CallState:[I

    invoke-virtual {p1}, Lcom/itsoninc/android/DeviceCall;->getState()Lcom/itsoninc/android/DeviceCall$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsoninc/android/DeviceCall$CallState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->hangupIf:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->hangupIf:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

    invoke-interface {v0, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;->hangupForegroundCalls(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->fwIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->fwIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    invoke-interface {v0}, Lcom/itsoninc/android/ItsOnFrameworkInterface;->hangupForegroundCalls()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->hangupIf:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->hangupIf:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

    invoke-interface {v0, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;->hangupIncomingCalls(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->fwIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->fwIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    invoke-interface {v0}, Lcom/itsoninc/android/ItsOnFrameworkInterface;->hangupIncomingCalls()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->hangupIf:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->hangupIf:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

    invoke-interface {v0, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;->hangupForegroundCalls(II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->fwIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->fwIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    invoke-interface {v0}, Lcom/itsoninc/android/ItsOnFrameworkInterface;->hangupForegroundCalls()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized authorizeIncomingVoice(Ljava/lang/String;II)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    monitor-enter p0

    const/4 v2, 0x2

    :try_start_0
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->authorizeVoice(Ljava/lang/String;III)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "uuid":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    new-instance v0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    const/4 v3, 0x2

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .local v0, "ci":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    iget-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->authorizations:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "ci":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    .end local v1    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized authorizeOutgoingVoice(Ljava/lang/String;II)Z
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    const/4 v6, 0x1

    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->authorizeVoice(Ljava/lang/String;III)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "uuid":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    new-instance v0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    const/4 v3, 0x1

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .local v0, "ci":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    iget-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->authorizations:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v6

    goto :goto_0

    .end local v0    # "ci":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    .end local v1    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized processCallList(Ljava/util/List;II)V
    .locals 8
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itsoninc/android/DeviceCall;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    const/4 v7, 0x7

    monitor-enter p0

    const/4 v5, 0x7

    :try_start_0
    new-array v0, v5, [Lcom/itsoninc/android/DeviceCall;

    .local v0, "allCalls":[Lcom/itsoninc/android/DeviceCall;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsoninc/android/DeviceCall;

    .local v1, "call":Lcom/itsoninc/android/DeviceCall;
    invoke-virtual {v1}, Lcom/itsoninc/android/DeviceCall;->isVoice()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/itsoninc/android/DeviceCall;->getIndex()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aput-object v1, v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "allCalls":[Lcom/itsoninc/android/DeviceCall;
    .end local v1    # "call":Lcom/itsoninc/android/DeviceCall;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v0    # "allCalls":[Lcom/itsoninc/android/DeviceCall;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v7, :cond_8

    :try_start_1
    aget-object v1, v0, v3

    .restart local v1    # "call":Lcom/itsoninc/android/DeviceCall;
    iget-object v5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->trackedCalls:[Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    aget-object v2, v5, v3

    .local v2, "callInfo":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->trackedCalls:[Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    invoke-direct {p0, v1, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->findAuthorizationOrAuthorize(Lcom/itsoninc/android/DeviceCall;II)Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    move-result-object v2

    aput-object v2, v5, v3

    if-nez v2, :cond_2

    invoke-direct {p0, v1, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->hangupCall(Lcom/itsoninc/android/DeviceCall;II)V

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/itsoninc/android/DeviceCall;->getState()Lcom/itsoninc/android/DeviceCall$CallState;

    move-result-object v5

    sget-object v6, Lcom/itsoninc/android/DeviceCall$CallState;->ACTIVE:Lcom/itsoninc/android/DeviceCall$CallState;

    if-eq v5, v6, :cond_3

    invoke-virtual {v1}, Lcom/itsoninc/android/DeviceCall;->getState()Lcom/itsoninc/android/DeviceCall$CallState;

    move-result-object v5

    sget-object v6, Lcom/itsoninc/android/DeviceCall$CallState;->HOLDING:Lcom/itsoninc/android/DeviceCall$CallState;

    if-ne v5, v6, :cond_4

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->isStarted()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v2}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->startVoiceAccounting(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->setStarted(Z)V

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v2}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->stopVoiceAccouting(Ljava/lang/String;)V

    :goto_3
    iget-object v5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->trackedCalls:[Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    const/4 v2, 0x0

    aput-object v2, v5, v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-direct {p0, v1, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->hangupCall(Lcom/itsoninc/android/DeviceCall;II)V

    iget-object v5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->trackedCalls:[Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    const/4 v2, 0x0

    aput-object v2, v5, v3

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v2}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->cleanupVoice(Ljava/lang/String;)V

    goto :goto_3

    .end local v1    # "call":Lcom/itsoninc/android/DeviceCall;
    .end local v2    # "callInfo":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :cond_8
    iget-object v5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->authorizations:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    .restart local v2    # "callInfo":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    iget-object v5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v2}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->cleanupVoice(Ljava/lang/String;)V

    goto :goto_4

    .end local v2    # "callInfo":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :cond_9
    iget-object v5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->authorizations:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public setFrameworkInterface(Lcom/itsoninc/android/ItsOnFrameworkInterface;)V
    .locals 0
    .param p1, "fwIf"    # Lcom/itsoninc/android/ItsOnFrameworkInterface;

    .prologue
    iput-object p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->fwIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    return-void
.end method

.method public setHangupInterface(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;)V
    .locals 0
    .param p1, "hangupIf"    # Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

    .prologue
    iput-object p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/gsm/TelephonyClient;->hangupIf:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

    return-void
.end method
