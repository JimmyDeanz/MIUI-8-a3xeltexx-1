.class public Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;
.super Ljava/lang/Object;
.source "HotspotMobileDataLimit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "HotspotMobileDataLimit"

.field private static final WIFI_AP_DATA_CHECKING_MS:I = 0x3e8


# instance fields
.field private iface:Ljava/lang/String;

.field private isAgain:Z

.field private isDataConnected:Z

.field private isReached:Z

.field private isStarted:Z

.field private mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

.field private mApLimitObserver:Landroid/database/ContentObserver;

.field private mApLimitValueObserver:Landroid/database/ContentObserver;

.field private mBaseRxBytes:J

.field private mBaseTxBytes:J

.field private final mContext:Landroid/content/Context;

.field private mDataLimited:Z

.field private mLimitData:Ljava/math/BigDecimal;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeData:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$1;-><init>(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    new-instance v1, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;-><init>(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 88
    new-instance v1, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$3;-><init>(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApLimitObserver:Landroid/database/ContentObserver;

    .line 96
    new-instance v1, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$4;-><init>(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApLimitValueObserver:Landroid/database/ContentObserver;

    .line 107
    iput-object p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    .line 111
    const-string v1, "wlan0"

    iput-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->iface:Ljava/lang/String;

    .line 113
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isReached:Z

    .line 114
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isStarted:Z

    .line 115
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isAgain:Z

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mResumeData:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x40

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 118
    new-instance v1, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;-><init>(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    .line 119
    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_ap_mobile_data_limit"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mDataLimited:Z

    .line 120
    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_mobile_data_limit_value"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "limit":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 122
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mLimitData:Ljava/math/BigDecimal;

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_mobile_data_limit"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApLimitObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_mobile_data_limit_value"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApLimitValueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->registerForBroadcasts()V

    .line 126
    return-void

    .end local v0    # "limit":Ljava/lang/String;
    :cond_1
    move v1, v3

    .line 119
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mDataLimited:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mDataLimited:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mLimitData:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;
    .param p1, "x1"    # Ljava/math/BigDecimal;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mLimitData:Ljava/math/BigDecimal;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isReached:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isReached:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isDataConnected:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isDataConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isStarted:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isAgain:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isAgain:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mResumeData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mResumeData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseTxBytes:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseTxBytes:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->iface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseRxBytes:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseRxBytes:J

    return-wide p1
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "action":Ljava/lang/String;
    const-string v3, "HotspotMobileDataLimit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v3, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 139
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isStarted:Z

    if-nez v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->iface:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseTxBytes:J

    .line 141
    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->iface:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseRxBytes:J

    .line 142
    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isStarted:Z

    .line 144
    :cond_0
    const-string v3, "NUM"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 145
    .local v0, "ClientNum":I
    if-lez v0, :cond_2

    .line 146
    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1

    .line 147
    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->resume()V

    .line 148
    const-string v3, "HotspotMobileDataLimit"

    const-string v4, "start to count ApData"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v0    # "ClientNum":I
    :cond_1
    :goto_0
    return-void

    .line 151
    .restart local v0    # "ClientNum":I
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->isRunning()Z

    move-result v3

    if-ne v3, v6, :cond_1

    .line 152
    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->pause()V

    goto :goto_0

    .line 155
    .end local v0    # "ClientNum":I
    :cond_3
    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    const-string v3, "wifi_state"

    const/16 v4, 0xe

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 157
    .local v2, "state":I
    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 158
    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->isRunning()Z

    move-result v3

    if-ne v3, v6, :cond_1

    .line 159
    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->pause()V

    goto :goto_0

    .line 161
    :cond_4
    const/16 v3, 0xb

    if-ne v2, v3, :cond_5

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->resetApDataLimit()V

    goto :goto_0

    .line 163
    :cond_5
    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->resetApDataUsage()V

    goto :goto_0
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    return-void
.end method

.method private resetApDataLimit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 170
    sget-boolean v0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->DBG:Z

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "HotspotMobileDataLimit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mobile AP is disabled, reset Mobile AP Usage data, Limit value reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isReached:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isStarted:Z

    .line 173
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isReached:Z

    .line 174
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isAgain:Z

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mResumeData:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->pause()V

    .line 177
    return-void
.end method

.method private resetApDataUsage()V
    .locals 4

    .prologue
    .line 180
    sget-boolean v1, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->DBG:Z

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "HotspotMobileDataLimit"

    const-string v2, "Mobile AP enabled, reset Mobile AP usage data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 183
    .local v0, "value":Ljava/math/BigDecimal;
    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_mobile_data_usage_value"

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    return-void
.end method
