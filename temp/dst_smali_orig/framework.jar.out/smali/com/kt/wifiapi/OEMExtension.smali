.class public Lcom/kt/wifiapi/OEMExtension;
.super Ljava/lang/Object;
.source "OEMExtension.java"


# static fields
.field private static final BLE_STR:Ljava/lang/String; = "ble="

.field private static final BSSID_STR:Ljava/lang/String; = "bssid="

.field static final DBG:Z

.field private static final DELIMITER_STR:Ljava/lang/String; = "===="

.field private static final END_STR:Ljava/lang/String; = "####"

.field public static final FEATURE_KT_WIFIAPI_OEM_DISCONNECTION_PRIORITY:I = 0x2

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_AKA_NOTIFICATON:I = 0x10

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_NOTIFICATON:I = 0x8

.field public static final FEATURE_KT_WIFIAPI_OEM_ERROR_NOTIFICATON:I = 0x4

.field public static final FEATURE_KT_WIFIAPI_OEM_MANUAL_CONNECTION:I = 0x1

.field public static final FEATURE_KT_WIFIAPI_OEM_SCAN_RESULT_EXTENSION:I = 0x20

.field private static final FLAGS_STR:Ljava/lang/String; = "flags="

.field private static final FREQ_STR:Ljava/lang/String; = "freq="

.field private static final ID_STR:Ljava/lang/String; = "id="

.field private static final LEVEL_STR:Ljava/lang/String; = "level="

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field private static final SSID_STR:Ljava/lang/String; = "ssid="

.field private static final TAG:Ljava/lang/String; = "OEMExtension"

.field private static final VSI_STR:Ljava/lang/String; = "vsi="

.field public static final WIFI_SKIP_AUTO_CONNECTION:Ljava/lang/String; = "wifi_skip_auto_conn"

.field private static instance:Lcom/kt/wifiapi/OEMExtension;

.field private static isFirstGetManualConnection:Z

.field private static mContext:Landroid/content/Context;

.field private static mManualConnection:Z

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mGWSScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    const-string v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->scanResultPattern:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    sput-boolean v1, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    sput-boolean v2, Lcom/kt/wifiapi/OEMExtension;->isFirstGetManualConnection:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/kt/wifiapi/OEMExtension;->mScanResultCache:Landroid/util/LruCache;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kt/wifiapi/OEMExtension;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-boolean v0, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OEMExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEMExtension::getInstance() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    if-nez v0, :cond_1

    new-instance v0, Lcom/kt/wifiapi/OEMExtension;

    invoke-direct {v0, p0}, Lcom/kt/wifiapi/OEMExtension;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    :cond_1
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    return-object v0
.end method


# virtual methods
.method public getDisconnectionPriority()I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .local v2, "result":I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x54

    iput v3, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "priority"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    sget-boolean v3, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDisconnectionPriority() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2
.end method

.method public getFeature()I
    .locals 1

    .prologue
    const/16 v0, 0x3f

    .local v0, "ret":I
    return v0
.end method

.method public getGWSScanResultsEx()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v1, "OEMExtension"

    const-string v2, "getGWSScanResultsEx()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x21

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kt/wifiapi/OEMExtension;->setScanResultsEx(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getInternetCheckOption(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, "msg":Landroid/os/Message;
    sget-boolean v1, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "OEMExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInternetCheckOption() Network ID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, 0x22

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    return v1
.end method

.method public getManualConnection()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .local v2, "ret":Z
    const/4 v1, -0x1

    .local v1, "result":I
    sget-boolean v4, Lcom/kt/wifiapi/OEMExtension;->isFirstGetManualConnection:Z

    if-eqz v4, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, "msg":Landroid/os/Message;
    const/16 v4, 0x20

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    if-ne v1, v5, :cond_3

    sput-boolean v5, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    :goto_0
    sput-boolean v3, Lcom/kt/wifiapi/OEMExtension;->isFirstGetManualConnection:Z

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    sget-boolean v2, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    sget-boolean v3, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getManualConnection() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v3, v2

    :cond_2
    :goto_1
    return v3

    .restart local v0    # "msg":Landroid/os/Message;
    :cond_3
    if-nez v1, :cond_4

    sput-boolean v3, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    goto :goto_0

    :cond_4
    sget-boolean v4, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get callSECApi(SKIP_AUTO_CONNECTION) fail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isReconnectEnabled(I)Z
    .locals 7
    .param p1, "networkId"    # I

    .prologue
    const/4 v3, 0x0

    .local v3, "ret":Z
    const/4 v2, -0x1

    .local v2, "result":I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0x53

    iput v4, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "netId"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "autojoin"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-boolean v4, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReconnectEnabled() : networkId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v3, 0x1

    :goto_0
    sget-boolean v4, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReconnectEnabled() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v4, v3

    :goto_1
    return v4

    :cond_2
    if-nez v2, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    sget-boolean v4, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get callSECApi(isReconnectEnabled) fail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setDisconnectionPriority(I)Z
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v2, -0x1

    .local v2, "result":I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "msg":Landroid/os/Message;
    sget-boolean v3, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDisconnectionPriority() : value("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v3, 0x54

    iput v3, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "priority"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    sget-boolean v3, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set callSECApi(setDisconnectionPriority) fail("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setInternetCheckOption(II)I
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, "msg":Landroid/os/Message;
    sget-boolean v1, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "OEMExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInternetCheckOption() Network ID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") value("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, 0x23

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    return v1
.end method

.method public setManualConnection(Z)Z
    .locals 6
    .param p1, "value"    # Z

    .prologue
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "msg":Landroid/os/Message;
    const/4 v2, -0x1

    .local v2, "result":I
    sget-boolean v3, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setManualConnection() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v3, 0x20

    iput v3, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "enable"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    if-nez v2, :cond_1

    sput-boolean p1, Lcom/kt/wifiapi/OEMExtension;->mManualConnection:Z

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    sget-boolean v3, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set callSECApi(SKIP_AUTO_CONNECTION) fail("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setReconnectEnabled(IZ)Z
    .locals 7
    .param p1, "networkId"    # I
    .param p2, "reconnect"    # Z

    .prologue
    const/4 v2, -0x1

    .local v2, "result":I
    const/4 v3, 0x0

    .local v3, "value":I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "msg":Landroid/os/Message;
    sget-boolean v4, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setReconnectEnabled() Network ID("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") value("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v4, 0x53

    iput v4, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "netId"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :goto_0
    const-string v4, "autojoin"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    iget-object v4, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    if-nez v2, :cond_2

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/kt/wifiapi/OEMExtension;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set callSECApi(setReconnectEnabled) fail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setScanResultsEx(Ljava/lang/String;)Ljava/util/List;
    .locals 28
    .param p1, "scanResults"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2

    :cond_0
    const/16 v17, 0x0

    :cond_1
    return-object v17

    :cond_2
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .local v17, "gwsScanList":Ljava/util/List;, "Ljava/util/List<Lcom/kt/wifiapi/GWSScanResult;>;"
    const-string v25, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .local v22, "lines":[Ljava/lang/String;
    const-string v5, ""

    .local v5, "bssid":Ljava/lang/String;
    const/16 v24, 0x0

    .local v24, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const/4 v7, 0x0

    .local v7, "level":I
    const/4 v8, 0x0

    .local v8, "freq":I
    const-string v6, ""

    .local v6, "flags":Ljava/lang/String;
    const-string v9, "null"

    .local v9, "BSSLoadElement":Ljava/lang/String;
    const-string v10, "null"

    .local v10, "vendorSpecificOUI":Ljava/lang/String;
    const-string v11, "null"

    .local v11, "vendorSpecificContents":Ljava/lang/String;
    const-string v25, "bssid="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v14

    .local v14, "bssidStrLen":I
    const-string v25, "flags="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v16

    .local v16, "flagLen":I
    const-string v25, "ble="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v13

    .local v13, "bleLen":I
    const-string v25, "vsi="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v23

    .local v23, "vsiLen":I
    move-object/from16 v12, v22

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    aget-object v21, v12, v18

    .local v21, "line":Ljava/lang/String;
    const-string v25, "bssid="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_4

    new-instance v5, Ljava/lang/String;

    .end local v5    # "bssid":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    sub-int v26, v26, v14

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v5, v0, v14, v1}, Ljava/lang/String;-><init>([BII)V

    .restart local v5    # "bssid":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_4
    const-string v25, "freq="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    :try_start_0
    const-string v25, "freq="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_1

    :catch_0
    move-exception v15

    .local v15, "e":Ljava/lang/NumberFormatException;
    const/4 v8, 0x0

    goto :goto_1

    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const-string v25, "level="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6

    :try_start_1
    const-string v25, "level="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-lez v7, :cond_3

    add-int/lit16 v7, v7, -0x100

    goto :goto_1

    :catch_1
    move-exception v15

    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    goto :goto_1

    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    const-string v25, "flags="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    new-instance v6, Ljava/lang/String;

    .end local v6    # "flags":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    sub-int v26, v26, v16

    move-object/from16 v0, v25

    move/from16 v1, v16

    move/from16 v2, v26

    invoke-direct {v6, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .restart local v6    # "flags":Ljava/lang/String;
    goto :goto_1

    :cond_7
    const-string v25, "ssid="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_8

    const-string v25, "ssid="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v24

    goto/16 :goto_1

    :cond_8
    const-string v25, "ble="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_9

    new-instance v9, Ljava/lang/String;

    .end local v9    # "BSSLoadElement":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    sub-int v26, v26, v13

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v9, v0, v13, v1}, Ljava/lang/String;-><init>([BII)V

    .restart local v9    # "BSSLoadElement":Ljava/lang/String;
    goto/16 :goto_1

    :cond_9
    const-string v25, "vsi="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_a

    new-instance v10, Ljava/lang/String;

    .end local v10    # "vendorSpecificOUI":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    const/16 v26, 0x6

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-direct {v10, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .restart local v10    # "vendorSpecificOUI":Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    .end local v11    # "vendorSpecificContents":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    add-int/lit8 v26, v23, 0x6

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v27

    sub-int v27, v27, v23

    add-int/lit8 v27, v27, -0x6

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v11, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .restart local v11    # "vendorSpecificContents":Ljava/lang/String;
    goto/16 :goto_1

    :cond_a
    const-string v25, "===="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_b

    const-string v25, "####"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_3

    :cond_b
    if-eqz v5, :cond_c

    if-eqz v24, :cond_d

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "ssid":Ljava/lang/String;
    :goto_2
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .local v19, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/wifiapi/OEMExtension;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kt/wifiapi/GWSScanResult;

    .local v3, "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    if-eqz v3, :cond_f

    iput v7, v3, Lcom/kt/wifiapi/GWSScanResult;->level:I

    if-eqz v24, :cond_e

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v25

    :goto_3
    move-object/from16 v0, v25

    iput-object v0, v3, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    iput-object v6, v3, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    iput v8, v3, Lcom/kt/wifiapi/GWSScanResult;->frequency:I

    iput-object v9, v3, Lcom/kt/wifiapi/GWSScanResult;->BSSLoadElement:Ljava/lang/String;

    iput-object v10, v3, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificOUI:Ljava/lang/String;

    iput-object v11, v3, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificContents:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v3    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .end local v4    # "ssid":Ljava/lang/String;
    .end local v19    # "key":Ljava/lang/String;
    :cond_c
    :goto_4
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v6, ""

    const/16 v24, 0x0

    const-string v9, "null"

    const-string v10, "null"

    const-string v11, "null"

    goto/16 :goto_1

    :cond_d
    const-string v4, "<unknown ssid>"

    goto :goto_2

    .restart local v3    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .restart local v4    # "ssid":Ljava/lang/String;
    .restart local v19    # "key":Ljava/lang/String;
    :cond_e
    const-string v25, "<unknown ssid>"

    goto :goto_3

    :cond_f
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_c

    new-instance v3, Lcom/kt/wifiapi/GWSScanResult;

    .end local v3    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    invoke-direct/range {v3 .. v11}, Lcom/kt/wifiapi/GWSScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/wifiapi/OEMExtension;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method
