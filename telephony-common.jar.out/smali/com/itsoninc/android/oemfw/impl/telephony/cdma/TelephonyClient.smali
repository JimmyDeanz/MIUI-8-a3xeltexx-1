.class public Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;
.super Ljava/lang/Object;
.source "TelephonyClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$2;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static LOG_TAG:Ljava/lang/String;


# instance fields
.field authorizedCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field endCall:Ljava/lang/reflect/Method;

.field endCallForSubscriber:Ljava/lang/reflect/Method;

.field fwIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

.field handler:Landroid/os/Handler;

.field hangupIf:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

.field ignoredFirstUnknown:Z

.field private mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

.field phoneIfManager:Ljava/lang/Object;

.field tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "ItsOnOEM.CDMATelephonyClient"

    sput-object v0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connector"    # Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->fwIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    .line 32
    iput-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->hangupIf:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->authorizedCalls:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    .line 50
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->handler:Landroid/os/Handler;

    .line 51
    iput-object p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->context:Landroid/content/Context;

    .line 52
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->tm:Landroid/telephony/TelephonyManager;

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->tm:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v1}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->setupReflection(Landroid/telephony/TelephonyManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupReflection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;Landroid/telephony/TelephonyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;
    .param p1, "x1"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->setupReflection(Landroid/telephony/TelephonyManager;)V

    return-void
.end method

.method private authorizeCall(Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;)Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    .locals 7
    .param p1, "newCall"    # Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    .prologue
    .line 210
    iget-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {p1}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getDirection()I

    move-result v4

    invoke-virtual {p1}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getPhoneId()I

    move-result v5

    invoke-virtual {p1}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->authorizeVoice(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "uuid":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 213
    new-instance v0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    invoke-direct {v0, v1, p1}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;-><init>(Ljava/lang/String;Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;)V

    .line 216
    .local v0, "authCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    iget-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->authorizedCalls:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v0    # "authCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private endCall(ZII)V
    .locals 4
    .param p1, "isForeground"    # Z
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 122
    sget-object v0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ending call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->hangupIf:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

    if-eqz v0, :cond_3

    .line 125
    sget-object v0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Using new hangup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eqz p1, :cond_2

    .line 127
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->hangupIf:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

    invoke-interface {v0, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;->hangupForegroundCalls(II)V

    .line 146
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    .line 149
    new-instance v0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$1;

    invoke-direct {v0, p0, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$1;-><init>(Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;I)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 181
    :cond_1
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->hangupIf:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

    invoke-interface {v0, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;->hangupIncomingCalls(II)V

    goto :goto_0

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->fwIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Using legacy hangup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz p1, :cond_4

    .line 134
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->fwIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    invoke-interface {v0}, Lcom/itsoninc/android/ItsOnFrameworkInterface;->hangupForegroundCalls()V

    goto :goto_0

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->fwIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    invoke-interface {v0}, Lcom/itsoninc/android/ItsOnFrameworkInterface;->hangupIncomingCalls()V

    goto :goto_0
.end method

.method private static endCallForSubscriber(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "phoneIfManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "endCallForSubscriber"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 89
    .local v1, "endCall":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1    # "endCall":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endCallForSubscriber"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAuthorizedCall(Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;)Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    .locals 3
    .param p1, "newCall"    # Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    .prologue
    .line 223
    iget-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->authorizedCalls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    .line 224
    .local v0, "call":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    invoke-virtual {v0, p1}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->isSame(Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    .end local v0    # "call":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getEndCall(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "phoneIfManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "endCall"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 77
    .local v1, "endCall":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "endCall":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEndCall"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getOrAuthorizeCall(Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;)Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    .locals 1
    .param p1, "newCall"    # Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->getAuthorizedCall(Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;)Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    move-result-object v0

    .line 233
    .local v0, "authCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    if-eqz v0, :cond_0

    .line 240
    .end local v0    # "authCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :goto_0
    return-object v0

    .restart local v0    # "authCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :cond_0
    invoke-direct {p0, p1}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->authorizeCall(Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;)Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private static getPhoneIfManager(Landroid/telephony/TelephonyManager;)Ljava/lang/Object;
    .locals 6
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 63
    :try_start_0
    const-class v3, Landroid/telephony/TelephonyManager;

    const-string v4, "getITelephony"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 64
    .local v1, "methodGetITelephony":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 65
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 70
    .end local v1    # "methodGetITelephony":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhoneIfManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setupReflection(Landroid/telephony/TelephonyManager;)V
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->phoneIfManager:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 103
    invoke-static {p1}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->getPhoneIfManager(Landroid/telephony/TelephonyManager;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->phoneIfManager:Ljava/lang/Object;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->endCall:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->phoneIfManager:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->getEndCall(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->endCall:Ljava/lang/reflect/Method;

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->endCallForSubscriber:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->phoneIfManager:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->endCallForSubscriber(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->endCall:Ljava/lang/reflect/Method;

    .line 113
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized acceptCall(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->authorizedCalls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    .line 407
    .local v0, "call":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    invoke-virtual {v0}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getSubscriptionId()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v0}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getDirection()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 412
    iget-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v0}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->startVoiceAccounting(Ljava/lang/String;)Z

    .line 413
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->setStarted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    .end local v0    # "call":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :cond_1
    monitor-exit p0

    return-void

    .line 406
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized callWaiting(Ljava/lang/String;II)Z
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    const/4 v1, 0x0

    const/4 v3, 0x2

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 395
    .local v0, "newCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    invoke-direct {p0, v0}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->getOrAuthorizeCall(Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;)Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 397
    .local v6, "authCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    if-nez v6, :cond_0

    .line 398
    const/4 v1, 0x0

    .line 402
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "newCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    .end local v6    # "authCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dial(Ljava/lang/String;II)Z
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    const/4 v7, 0x1

    .line 194
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 196
    .local v0, "newCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    invoke-direct {p0, v0}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->getOrAuthorizeCall(Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;)Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    move-result-object v6

    .line 198
    .local v6, "authCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    if-eqz v6, :cond_0

    .line 199
    sget-object v1, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Dial - Auth OK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v7

    .line 204
    :goto_0
    monitor-exit p0

    return v1

    .line 203
    :cond_0
    :try_start_1
    sget-object v1, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Dial - Auth failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    const/4 v1, 0x0

    goto :goto_0

    .line 194
    .end local v0    # "newCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    .end local v6    # "authCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized flash(Ljava/lang/String;II)Z
    .locals 10
    .param p1, "featureCode"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    const/4 v9, 0x1

    .line 356
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 361
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->authorizedCalls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    .line 362
    .local v7, "call":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    invoke-virtual {v7}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v7}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getDirection()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 366
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v7}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->startVoiceAccounting(Ljava/lang/String;)Z

    .line 367
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->setStarted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v9

    .line 388
    .end local v7    # "call":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    :goto_0
    monitor-exit p0

    return v1

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_1
    move v1, v9

    .line 374
    goto :goto_0

    .line 378
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    new-instance v0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 380
    .local v0, "newCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    invoke-direct {p0, v0}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->getOrAuthorizeCall(Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;)Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    move-result-object v6

    .line 381
    .local v6, "authCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    if-nez v6, :cond_3

    .line 382
    const/4 v1, 0x0

    goto :goto_0

    .line 384
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->setStarted(Z)V

    .line 387
    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v6}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->startVoiceAccounting(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v9

    .line 388
    goto :goto_0

    .line 356
    .end local v0    # "newCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    .end local v6    # "authCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized processCallList(Ljava/util/List;II)V
    .locals 18
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
    .line 245
    .local p1, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->authorizedCalls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 353
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 255
    :cond_1
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->authorizedCalls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->authorizedCalls:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    .local v14, "call":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    if-eqz v14, :cond_0

    .line 256
    invoke-virtual {v14}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v14}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->stopVoiceAccouting(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 245
    .end local v14    # "call":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 263
    .restart local v14    # "call":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v14}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->cleanupVoice(Ljava/lang/String;)V

    goto :goto_1

    .line 271
    .end local v14    # "call":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/itsoninc/android/DeviceCall;

    .line 272
    .local v14, "call":Lcom/itsoninc/android/DeviceCall;
    sget-object v4, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient$2;->$SwitchMap$com$itsoninc$android$DeviceCall$CallState:[I

    invoke-virtual {v14}, Lcom/itsoninc/android/DeviceCall;->getState()Lcom/itsoninc/android/DeviceCall$CallState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsoninc/android/DeviceCall$CallState;->ordinal()I

    move-result v5

    aget v4, v4, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 274
    :pswitch_0
    const/16 v16, 0x0

    .line 277
    .local v16, "isMobileTerminated":Ljava/lang/Boolean;
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "isMT"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 278
    .local v17, "methodIsMt":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v16, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 290
    .end local v17    # "methodIsMt":Ljava/lang/reflect/Method;
    :goto_3
    if-eqz v16, :cond_5

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 291
    const/4 v6, 0x2

    .line 299
    .local v6, "direction":I
    :goto_4
    new-instance v3, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    const/4 v4, 0x0

    invoke-virtual {v14}, Lcom/itsoninc/android/DeviceCall;->getNumber()Ljava/lang/String;

    move-result-object v5

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 306
    .local v3, "newCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->getOrAuthorizeCall(Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;)Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    move-result-object v13

    .line 308
    .local v13, "authCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    if-eqz v13, :cond_6

    .line 311
    invoke-virtual {v13}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->isStarted()Z

    move-result v4

    if-nez v4, :cond_4

    .line 312
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->setStarted(Z)V

    .line 315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v13}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->startVoiceAccounting(Ljava/lang/String;)Z

    goto :goto_2

    .line 293
    .end local v3    # "newCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    .end local v6    # "direction":I
    .end local v13    # "authCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :cond_5
    const/4 v6, 0x1

    .restart local v6    # "direction":I
    goto :goto_4

    .line 320
    .restart local v3    # "newCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    .restart local v13    # "authCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    :cond_6
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->endCall(ZII)V

    goto :goto_2

    .line 327
    .end local v3    # "newCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    .end local v6    # "direction":I
    .end local v13    # "authCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    .end local v16    # "isMobileTerminated":Ljava/lang/Boolean;
    :pswitch_1
    invoke-virtual {v14}, Lcom/itsoninc/android/DeviceCall;->getNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v14}, Lcom/itsoninc/android/DeviceCall;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->ignoredFirstUnknown:Z

    if-nez v4, :cond_8

    .line 329
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->ignoredFirstUnknown:Z

    goto/16 :goto_0

    .line 336
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->ignoredFirstUnknown:Z

    .line 338
    new-instance v3, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    const/4 v8, 0x0

    invoke-virtual {v14}, Lcom/itsoninc/android/DeviceCall;->getNumber()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    move-object v7, v3

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-direct/range {v7 .. v12}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 340
    .restart local v3    # "newCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->getOrAuthorizeCall(Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;)Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    move-result-object v13

    .line 342
    .restart local v13    # "authCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    if-nez v13, :cond_4

    .line 348
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->endCall(ZII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 279
    .end local v3    # "newCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    .end local v13    # "authCall":Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
    .restart local v16    # "isMobileTerminated":Ljava/lang/Boolean;
    :catch_0
    move-exception v4

    goto/16 :goto_3

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEmergencyMode(ZII)V
    .locals 1
    .param p1, "inEmergencyMode"    # Z
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->mConnector:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->setEmergencyMode(ZII)V

    .line 424
    return-void
.end method

.method public setFrameworkInterface(Lcom/itsoninc/android/ItsOnFrameworkInterface;)V
    .locals 0
    .param p1, "fwIf"    # Lcom/itsoninc/android/ItsOnFrameworkInterface;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->fwIf:Lcom/itsoninc/android/ItsOnFrameworkInterface;

    .line 185
    return-void
.end method

.method public setHangupInterface(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;)V
    .locals 0
    .param p1, "hangupIf"    # Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/cdma/TelephonyClient;->hangupIf:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyHangupInterface;

    .line 189
    return-void
.end method
