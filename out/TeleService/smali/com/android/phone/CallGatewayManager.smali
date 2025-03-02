.class public Lcom/android/phone/CallGatewayManager;
.super Ljava/lang/Object;
.source "CallGatewayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    }
.end annotation


# static fields
.field public static final EMPTY_INFO:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static sSingleton:Lcom/android/phone/CallGatewayManager;


# instance fields
.field private final mMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/phone/CallGatewayManager$RawGatewayInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const-class v0, Lcom/android/phone/CallGatewayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallGatewayManager;->LOG_TAG:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    invoke-direct {v0, v1, v1, v1}, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/CallGatewayManager;->EMPTY_INFO:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/android/phone/CallGatewayManager;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 83
    return-void
.end method

.method public static checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .param p0, "src"    # Landroid/content/Intent;
    .param p1, "dst"    # Landroid/content/Intent;

    .prologue
    .line 158
    invoke-static {p0}, Lcom/android/phone/CallGatewayManager;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    sget-object v0, Lcom/android/phone/CallGatewayManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkAndCopyPhoneProviderExtras: some or all extras are missing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    const-string v1, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/phone/CallGatewayManager;
    .locals 2

    .prologue
    .line 76
    const-class v1, Lcom/android/phone/CallGatewayManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/CallGatewayManager;->sSingleton:Lcom/android/phone/CallGatewayManager;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/phone/CallGatewayManager;

    invoke-direct {v0}, Lcom/android/phone/CallGatewayManager;-><init>()V

    sput-object v0, Lcom/android/phone/CallGatewayManager;->sSingleton:Lcom/android/phone/CallGatewayManager;

    .line 79
    :cond_0
    sget-object v0, Lcom/android/phone/CallGatewayManager;->sSingleton:Lcom/android/phone/CallGatewayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 175
    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "uri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static getRawGatewayInfo(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/phone/CallGatewayManager;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    const-string v1, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/android/phone/CallGatewayManager;->getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/CallGatewayManager;->EMPTY_INFO:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    goto :goto_0
.end method

.method public static hasPhoneProviderExtras(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 140
    if-nez p0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v2

    .line 143
    :cond_1
    const-string v3, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "name":Ljava/lang/String;
    const-string v3, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "gatewayUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public setGatewayInfoForConnection(Lcom/android/internal/telephony/Connection;Lcom/android/phone/CallGatewayManager$RawGatewayInfo;)V
    .locals 1
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;
    .param p2, "gatewayInfo"    # Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    .prologue
    .line 105
    invoke-virtual {p2}, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/phone/CallGatewayManager;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallGatewayManager;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
