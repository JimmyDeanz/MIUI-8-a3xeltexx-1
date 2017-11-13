.class public final Lcom/sec/epdg/EpdgUtils;
.super Ljava/lang/Object;
.source "EpdgUtils.java"


# static fields
.field private static final CDMA_TYPE:I = 0x0

.field private static final CONNECTIVITY_MGR_INSTANCE_NULL:I = -0x2

.field private static final LTE_TYPE:I = 0x1

.field private static final NUMBER_PARSING_EXCEPTION:I = -0x3

.field public static final ROAMING_CS_PREF:I = 0x0

.field public static final ROAMING_WLAN_PREF:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[UTILS]"

.field private static final VOICECALL_ROAMING_PREF:Ljava/lang/String; = "vzw_roaming_pref"

.field private static final VOWIFI_CALLING:Ljava/lang/String; = "vzw_vowifi_calling"

.field private static final WRONG_PROFILE_ID:I = -0x1

.field private static final isShipBinary:Z

.field private static final isUserBinary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/epdg/EpdgUtils;->isUserBinary:Z

    .line 60
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.product_ship"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/epdg/EpdgUtils;->isShipBinary:Z

    return-void

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SupportIR94Only()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 109
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IR94ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static caCertificatePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 202
    const-string/jumbo v2, "persist.sys.omc_etcpath"

    const-string v3, "/system/etc/"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "path":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getCertiPath()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "certiName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    :cond_1
    const-string v0, "ca.crt"

    .line 210
    :cond_2
    const-string v2, "[UTILS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caCertificatePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static convertIpFromInetAddrToInt(Ljava/net/InetAddress;)I
    .locals 6
    .param p0, "inetaddr"    # Ljava/net/InetAddress;

    .prologue
    const/4 v2, 0x0

    .line 472
    const-string v3, "[UTILS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "convertIpFromInetAddrToInt: Received IP address is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 474
    if-nez p0, :cond_0

    move v0, v2

    .line 481
    :goto_0
    return v0

    .line 477
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 478
    .local v1, "addrBytes":[B
    const/4 v3, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    or-int v0, v3, v4

    .line 480
    .local v0, "addr":I
    const-string v3, "[UTILS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "returning address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getAPMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 602
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 604
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 605
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "mac":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    const/16 v5, 0x2d

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 609
    :cond_0
    return-object v0
.end method

.method public static getApnNamebyType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "epdgApnType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 237
    if-nez p0, :cond_0

    .line 238
    const-string v4, "[UTILS]"

    const-string/jumbo v5, "getApnNamebyType null Apn Type"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_0
    return-object v2

    .line 241
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    .line 242
    .local v0, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 243
    .local v1, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/epdg/IWlanApnSetting;

    .line 245
    .local v3, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "apnName":Ljava/lang/String;
    const-string v4, "[UTILS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getApnNamebyType() epdgApnType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    .end local v2    # "apnName":Ljava/lang/String;
    .end local v3    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_2
    const-string v4, "[UTILS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getApnNamebyType() failed for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getApnTypeByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "epdgApnName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 257
    if-nez p0, :cond_0

    .line 258
    const-string v5, "[UTILS]"

    const-string/jumbo v6, "getApnTypeByName null Apn Type"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_0
    return-object v3

    .line 261
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    .line 262
    .local v0, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 263
    .local v1, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 264
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/IWlanApnSetting;

    .line 265
    .local v4, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "apnName":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 267
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "apnType":Ljava/lang/String;
    const-string v5, "[UTILS]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getApnTypeByName() epdgApnName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " apnType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .end local v2    # "apnName":Ljava/lang/String;
    .end local v3    # "apnType":Ljava/lang/String;
    .end local v4    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_2
    const-string v5, "[UTILS]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getApnTypeByName() failed for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getApnTypebyNetworkType(I)Ljava/lang/String;
    .locals 4
    .param p0, "networkType"    # I

    .prologue
    .line 305
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApnTypebyNetworkType() networkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "apnType":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 329
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApnTypebyNetworkType() Invalid network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApnTypebyNetworkType() returning apnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-object v0

    .line 309
    :sswitch_0
    const-string/jumbo v0, "default"

    .line 310
    goto :goto_0

    .line 313
    :sswitch_1
    const-string/jumbo v0, "ims"

    .line 314
    goto :goto_0

    .line 318
    :sswitch_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const-string/jumbo v0, "mms"

    goto :goto_0

    .line 321
    :cond_0
    const-string v0, "cbs"

    .line 322
    goto :goto_0

    .line 325
    :sswitch_3
    const-string v0, "bip"

    .line 326
    goto :goto_0

    .line 307
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0x17 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .prologue
    .line 523
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static final getEpdgInterfacePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    const-string/jumbo v0, "epdg"

    return-object v0
.end method

.method public static getGroupIdLevel1(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 597
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 598
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getIkeErrorFromCode(I)I
    .locals 4
    .param p0, "code"    # I

    .prologue
    .line 748
    const/4 v0, 0x0

    .line 749
    .local v0, "ret":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    invoke-static {p0}, Lcom/sec/epdg/VerizonIkeError;->getVerizonIkeErrorCode(I)I

    move-result v0

    .line 751
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ike Error : Returning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/sec/epdg/VerizonIkeError;->printVerizonIkeErrorCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :goto_0
    return v0

    .line 753
    :cond_0
    invoke-static {p0}, Lcom/sec/epdg/RfcIkeError;->getRfcIkeErrorCode(I)I

    move-result v0

    .line 754
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ike Error : Returning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/sec/epdg/RfcIkeError;->printRfcIkeErrorCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 592
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 593
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getImeiVendorAttributeType()I
    .locals 1

    .prologue
    .line 589
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getImeiVendorAttrType()I

    move-result v0

    return v0
.end method

.method public static getImsi(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "subID"    # I

    .prologue
    const/4 v7, 0x0

    .line 784
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 786
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 787
    .local v1, "imsi":Ljava/lang/String;
    const-string v4, "SPR"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 788
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSubscriberIdDm(I)Ljava/lang/String;

    move-result-object v1

    .line 812
    :goto_0
    return-object v1

    .line 789
    :cond_0
    sget-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    if-eqz v4, :cond_3

    .line 791
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "impi":Ljava/lang/String;
    const-string v4, "[UTILS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getImsi: impi is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 795
    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 796
    .local v2, "index":I
    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 797
    const-string v4, "[UTILS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getImsi: returning imsi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 799
    .end local v2    # "index":I
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 800
    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 802
    :cond_2
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 806
    .end local v0    # "impi":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 807
    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 809
    :cond_4
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized getIsVideoEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 2

    .prologue
    .line 744
    const-class v0, Lcom/sec/epdg/EpdgUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVideoEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 2

    .prologue
    .line 737
    const-class v0, Lcom/sec/epdg/EpdgUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVolteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getIsVoWifiEnabled()Z
    .locals 2

    .prologue
    .line 741
    const-class v0, Lcom/sec/epdg/EpdgUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final getIwlanInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    const-string/jumbo v0, "wlan0"

    return-object v0
.end method

.method public static getIwlanInterfaceName(I)Ljava/lang/String;
    .locals 4
    .param p0, "cid"    # I

    .prologue
    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, "iwlanIfName":Ljava/lang/String;
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIwlanInterfaceName(): received cid is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getEpdgInterfacePrefix()Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIwlanInterfaceName(): returning iwlanIfName is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-object v0
.end method

.method public static getMobileInterfaceName(I)Ljava/lang/String;
    .locals 4
    .param p0, "cid"    # I

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "mobileIfName":Ljava/lang/String;
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMobileInterfaceName(): received cid is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfacePrefix()Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMobileInterfaceName(): returning mobileIfName is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-object v0
.end method

.method public static final getMobileInterfacePrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 493
    const-string/jumbo v0, "ril.data.intfprefix"

    const-string/jumbo v1, "rmnet"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkTypeByApnType(Ljava/lang/String;)I
    .locals 4
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 279
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getNetworkTypeByApnType() apnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    if-nez p0, :cond_0

    .line 281
    const-string v1, "[UTILS]"

    const-string/jumbo v2, "getNetworkTypeByApnType apnType is null.. returning -1"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_0
    return v0

    .line 284
    :cond_0
    const-string/jumbo v1, "default"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    const/4 v0, 0x0

    goto :goto_0

    .line 286
    :cond_1
    const-string/jumbo v1, "ims"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    const/16 v0, 0xb

    goto :goto_0

    .line 288
    :cond_2
    const-string v1, "cbs"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 289
    const/16 v0, 0xc

    goto :goto_0

    .line 290
    :cond_3
    const-string v1, "bip"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 291
    const/16 v0, 0x17

    goto :goto_0

    .line 292
    :cond_4
    const-string/jumbo v1, "mms"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 293
    const/4 v0, 0x2

    goto :goto_0

    .line 294
    :cond_5
    const-string/jumbo v1, "xcap"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 295
    const/16 v0, 0x1b

    goto :goto_0

    .line 296
    :cond_6
    const-string/jumbo v1, "emergency"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 297
    const/16 v0, 0xf

    goto :goto_0

    .line 299
    :cond_7
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNetworkTypeByApnType  invalid apnType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "CscSalesCode":Ljava/lang/String;
    const-string/jumbo v1, "persist.omc.sales_code"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPcscfv4VendorAttr()I
    .locals 1

    .prologue
    .line 583
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getPcscfv4VendorAttr()I

    move-result v0

    return v0
.end method

.method public static getPcscfv6VendorAttr()I
    .locals 1

    .prologue
    .line 586
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getPcscfv6VendorAttr()I

    move-result v0

    return v0
.end method

.method public static getProfileIDbyNetworkType(I)I
    .locals 8
    .param p0, "networkType"    # I

    .prologue
    const/4 v7, -0x2

    const/4 v6, -0x3

    const/4 v2, -0x1

    .line 396
    const-string v3, "[UTILS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getProfileIDbyNetworkType() networkType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v1, -0x1

    .local v1, "profileId":I
    const/4 v0, -0x1

    .line 399
    .local v0, "internalNetworkType":I
    invoke-static {p0}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkTypeInternal(I)I

    move-result v1

    .line 401
    if-ne v1, v2, :cond_5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 402
    const/16 v3, 0xc

    if-ne p0, v3, :cond_1

    .line 403
    const-string v3, "[UTILS]"

    const-string v4, "Profile id returned for CBS is -1, retry for MMS"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/4 v0, 0x2

    .line 417
    :goto_0
    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkTypeInternal(I)I

    move-result v1

    .line 418
    if-eq v1, v2, :cond_0

    if-eq v1, v7, :cond_0

    if-ne v1, v6, :cond_4

    .line 421
    :cond_0
    const-string v3, "[UTILS]"

    const-string v4, "For VZW, both CBS and MMS are down, returning -1"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :goto_1
    return v2

    .line 405
    :cond_1
    const/4 v3, 0x2

    if-ne p0, v3, :cond_2

    .line 406
    const-string v3, "[UTILS]"

    const-string v4, "Profile id returned for MMS is -1, retry for CBS"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/16 v0, 0xc

    goto :goto_0

    .line 408
    :cond_2
    const/16 v2, 0xb

    if-ne p0, v2, :cond_3

    .line 409
    const-string v2, "[UTILS]"

    const-string v3, "Profile id returned for IMS"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const/4 v2, 0x1

    goto :goto_1

    .line 412
    :cond_3
    const-string v2, "[UTILS]"

    const-string v3, "Network type is neither MMS nor CBS for VZW so, returning -1 as profile id"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 414
    goto :goto_1

    .line 424
    :cond_4
    const-string v2, "[UTILS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "For VZW, returning profile ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 425
    goto :goto_1

    .line 427
    :cond_5
    if-ne v1, v6, :cond_6

    .line 428
    const-string v3, "[UTILS]"

    const-string v4, "Some number parsing error happens, returning -1 as id"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 430
    :cond_6
    if-ne v1, v7, :cond_7

    .line 431
    const-string v3, "[UTILS]"

    const-string v4, "Connectivity manager instance is null, returning -1 as id"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 434
    :cond_7
    const-string v2, "[UTILS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning profile id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 435
    goto :goto_1
.end method

.method private static getProfileIDbyNetworkTypeInternal(I)I
    .locals 14
    .param p0, "networkType"    # I

    .prologue
    const/4 v9, -0x3

    const/4 v10, -0x1

    .line 338
    const-string v11, "[UTILS]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getProfileIDbyNetworkTypeInternal() networkType:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/4 v3, 0x0

    .line 340
    .local v3, "mConnMgr":Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getConnMgrInstance()Landroid/net/ConnectivityManager;

    move-result-object v3

    .line 341
    if-nez v3, :cond_0

    .line 342
    const-string v9, "[UTILS]"

    const-string/jumbo v10, "getProfileIDbyNetworkTypeInternal() . MConnMgr instance is null.. returning -2 as profile ID"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const/4 v9, -0x2

    .line 392
    :goto_0
    return v9

    .line 346
    :cond_0
    const-string v11, "[UTILS]"

    const-string/jumbo v12, "getProfileIDbyNetworkTypeInternal() mConnMgr is not null "

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v3, p0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 350
    .local v8, "nwkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 352
    .local v6, "networkState":Landroid/net/NetworkInfo$State;
    const-string v11, "[UTILS]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getProfileIDbyNetworkType networkState is"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v11, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v6, v11, :cond_1

    sget-object v11, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v6, v11, :cond_2

    .line 355
    :cond_1
    const-string v9, "[UTILS]"

    const-string/jumbo v11, "getProfileIDbyNetworkTypeInternal(); This network is DISCONNECTED or UNKNOWN. returning -1"

    invoke-static {v9, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v10

    .line 357
    goto :goto_0

    .line 359
    :cond_2
    const/4 v2, 0x0

    .line 360
    .local v2, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v3, p0}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v2

    .line 361
    const/4 v4, 0x0

    .local v4, "mIntfName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 362
    .local v7, "numericSubString":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 363
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfacePrefix()Ljava/lang/String;

    move-result-object v5

    .line 369
    .local v5, "mobileIntfPrefix":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 371
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 381
    const-string v10, "[UTILS]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InterfaceName is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", numericSubString is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 390
    .local v1, "interfaceid":I
    const-string v9, "[UTILS]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getProfileIDbyNetworkType() returning profileId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    add-int/lit8 v9, v1, 0x1

    goto/16 :goto_0

    .line 365
    .end local v1    # "interfaceid":I
    .end local v5    # "mobileIntfPrefix":Ljava/lang/String;
    :cond_3
    const-string v9, "[UTILS]"

    const-string v11, "LinkProperties is null. Returning -1 as profile ID"

    invoke-static {v9, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v10

    .line 366
    goto/16 :goto_0

    .line 373
    .restart local v5    # "mobileIntfPrefix":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v10, "[UTILS]"

    const-string v11, "Error!!!, startIndex is bigger than length of mIntfName"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 378
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_4
    const-string v9, "[UTILS]"

    const-string v11, "Interface name is null. Returning -1 as profile ID"

    invoke-static {v9, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v10

    .line 379
    goto/16 :goto_0

    .line 386
    :catch_1
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v10, "[UTILS]"

    const-string v11, "Error!!!, cid is not converted into number, returning -3"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getProfileIdbyApnType(Ljava/lang/String;)I
    .locals 3
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 440
    if-nez p0, :cond_0

    .line 441
    const-string v1, "[UTILS]"

    const-string/jumbo v2, "getProfileIdbyApnType apnType is null.. returning -1"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/4 v1, -0x1

    .line 445
    :goto_0
    return v1

    .line 444
    :cond_0
    invoke-static {p0}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v0

    .line 445
    .local v0, "mNetworkType":I
    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v1

    goto :goto_0
.end method

.method private static getUeWiFiMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 647
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 649
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 650
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "mac":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    const/16 v5, 0x2d

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 654
    :cond_0
    return-object v0
.end method

.method public static getVoPS(Landroid/telephony/ServiceState;)I
    .locals 6
    .param p0, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 760
    const/4 v2, -0x1

    .line 762
    .local v2, "vops":I
    :try_start_0
    const-class v3, Landroid/telephony/ServiceState;

    const-string/jumbo v4, "getLteImsVoiceAvail"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 763
    .local v1, "md":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 773
    .end local v1    # "md":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "[UTILS]"

    const-string/jumbo v4, "getVoPS: NoSuchMethodException"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 766
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "[UTILS]"

    const-string/jumbo v4, "getVoPS: IllegalArgumentException"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 768
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "[UTILS]"

    const-string/jumbo v4, "getVoPS: IllegalAccessException"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 770
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 771
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "[UTILS]"

    const-string/jumbo v4, "getVoPS: InvocationTargetException"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static idiImsiUpdate()Z
    .locals 1

    .prologue
    .line 658
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIdiImsi()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static idiMacInclude()Z
    .locals 1

    .prologue
    .line 613
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIdiMac()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static includeIdi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ipsecOwnUri"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 617
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->idiMacInclude()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isIncludeUeWiFiMac()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 618
    :cond_0
    const/16 v4, 0x40

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 619
    .local v3, "offset":I
    if-ltz v3, :cond_4

    .line 621
    const/4 v2, 0x0

    .line 623
    .local v2, "macAddress":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isIncludeUeWiFiMac()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 624
    invoke-static {p0}, Lcom/sec/epdg/EpdgUtils;->getUeWiFiMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 628
    :goto_0
    if-eqz v2, :cond_2

    .line 629
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v3, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, "idi":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "[UTILS]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rewritten IDi : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 643
    .end local v1    # "idi":Ljava/lang/String;
    .end local v2    # "macAddress":Ljava/lang/String;
    .end local v3    # "offset":I
    :goto_1
    return-object v1

    .line 626
    .restart local v2    # "macAddress":Ljava/lang/String;
    .restart local v3    # "offset":I
    :cond_1
    invoke-static {p0}, Lcom/sec/epdg/EpdgUtils;->getAPMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 634
    :cond_2
    const-string v4, "[UTILS]"

    const-string v5, "Could not get AP MAC address"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "macAddress":Ljava/lang/String;
    .end local v3    # "offset":I
    :cond_3
    :goto_2
    move-object v1, p1

    .line 643
    goto :goto_1

    .line 636
    .restart local v2    # "macAddress":Ljava/lang/String;
    .restart local v3    # "offset":I
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v4, "[UTILS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error rewriting URI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 640
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v2    # "macAddress":Ljava/lang/String;
    :cond_4
    const-string v4, "[UTILS]"

    const-string v5, "Invalid IDi format"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static isAlwaysOnApn(Ljava/lang/String;)Z
    .locals 4
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 561
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 562
    .local v0, "result":Z
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAlwaysOnApn(): result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    return v0
.end method

.method public static isAttachApn(I)Z
    .locals 4
    .param p0, "rilCid"    # I

    .prologue
    const/4 v0, 0x1

    .line 544
    if-ne p0, v0, :cond_0

    .line 545
    .local v0, "result":Z
    :goto_0
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAttachApn: Received CID is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "result as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    return v0

    .line 544
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDataRetryEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->isRetryEnabledForAlwaysOnApn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isDualSimModel()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 192
    const-string/jumbo v0, "dsds"

    const-string/jumbo v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isEpdgEnabled()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 215
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isEpdgNotAvailableRequired(Ljava/lang/String;)Z
    .locals 5
    .param p0, "apnName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xc

    const/4 v4, 0x2

    .line 822
    const/4 v1, 0x0

    .line 823
    .local v1, "ret":Z
    invoke-static {p0}, Lcom/sec/epdg/EpdgUtils;->getApnTypeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "apnType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 826
    const/4 v2, 0x0

    .line 842
    :goto_0
    return v2

    .line 829
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 830
    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v2

    if-eq v3, v2, :cond_1

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v2

    if-ne v4, v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->is1xAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 833
    const/4 v1, 0x1

    :cond_2
    :goto_1
    move v2, v1

    .line 842
    goto :goto_0

    .line 836
    :cond_3
    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v2

    if-eq v3, v2, :cond_4

    const/16 v2, 0x1b

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_4

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v2

    if-ne v4, v2, :cond_2

    .line 839
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isIms60()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_FrameworkVersion"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "version":Ljava/lang/String;
    const-string v1, "6.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static isIncludeUeWiFiMac()Z
    .locals 1

    .prologue
    .line 875
    const/4 v0, 0x0

    return v0
.end method

.method public static isIndependentEpdg()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 219
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INDEPENDENTEPDG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isInternetKeepAliveEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 233
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isNeededToSendDeregOnWifiOnly()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 184
    const-string v0, "FTM"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ORO"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AMO"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isOperatorAtt()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 77
    const-string v0, "ATT"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isOperatorDT()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 163
    const-string v0, "DTM"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isOperatorDtac()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 145
    const-string v0, "THL"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isOperatorEvr()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 129
    const-string v0, "EVR"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isOperatorFtm()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 133
    const-string v0, "FTM"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isOperatorMTN()Z
    .locals 3

    .prologue
    .line 175
    const-string/jumbo v1, "gsm.sim.operator.numeric"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "mOperatorSim":Ljava/lang/String;
    const-string v1, "XFA"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "65510"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const/4 v1, 0x1

    .line 179
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOperatorORO()Z
    .locals 3

    .prologue
    .line 167
    const-string/jumbo v1, "gsm.sim.operator.numeric"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "mOperatorSim":Ljava/lang/String;
    const-string v1, "22610"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const/4 v1, 0x1

    .line 171
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOperatorPlay()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 141
    const-string v0, "PRT"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isOperatorRogers()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 123
    const-string v0, "FMC"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RWC"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isOperatorSpr()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 86
    const-string v0, "SPR"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XAS"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VMU"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BST"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isOperatorTelstra()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 149
    const-string v0, "TEL"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isOperatorTmo()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 72
    const-string v0, "TMB"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WFC20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOperatorTmoMvno()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 100
    const-string/jumbo v1, "gsm.sim.operator.numeric"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "mOperatorSim":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorXaa()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "310260"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static isOperatorTurkcell()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 153
    const-string/jumbo v1, "gsm.sim.operator.numeric"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "mOperatorSim":Ljava/lang/String;
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOperatorTurkcell = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "TUR"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "28601"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 159
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static isOperatorVerizon()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 64
    const-string v0, "VZW"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizonWholeSales()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOperatorVerizonWholeSales()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZWMVNO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isOperatorVod()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 137
    const-string v0, "VOD"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isOperatorXaa()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 96
    const-string v0, "XAA"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isOrangeSpainRetryTimer()Z
    .locals 3

    .prologue
    .line 867
    const-string/jumbo v1, "gsm.sim.operator.numeric"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "operatorNumeric":Ljava/lang/String;
    const-string v1, "21403"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    const/4 v1, 0x1

    .line 871
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSharePreferredModeViaProperty()Z
    .locals 4

    .prologue
    .line 898
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 899
    .local v1, "salesCode":Ljava/lang/String;
    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "operatorNumeric":Ljava/lang/String;
    const-string v2, "THL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "20404"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 901
    :cond_0
    const/4 v2, 0x1

    .line 903
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isShipBinary()Z
    .locals 3

    .prologue
    .line 556
    const-string v0, "[UTILS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShipBinary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgUtils;->isShipBinary:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    sget-boolean v0, Lcom/sec/epdg/EpdgUtils;->isShipBinary:Z

    return v0
.end method

.method public static isSupportCpThresholdFuncion()Z
    .locals 2

    .prologue
    .line 879
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "VOD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VDF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SFR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DTM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FTM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 883
    :cond_0
    const/4 v1, 0x1

    .line 885
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportMultiEpdgServerIP()Z
    .locals 2

    .prologue
    .line 815
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "THL"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TEL"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    :cond_0
    const/4 v0, 0x1

    .line 818
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUserBinary()Z
    .locals 3

    .prologue
    .line 551
    const-string v0, "[UTILS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isUSerBinary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgUtils;->isUserBinary:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    sget-boolean v0, Lcom/sec/epdg/EpdgUtils;->isUserBinary:Z

    return v0
.end method

.method public static isUsingCaCertificate()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 196
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIsUsingCerti()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isUsingErisVpnClient()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 223
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ERIS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 224
    .local v0, "mIsUsingErisClient":Ljava/lang/Boolean;
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUsingErisVpnClient() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-object v0
.end method

.method public static isVoWifiWave2()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WAVE2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isVodafoneRetryTimer()Z
    .locals 2

    .prologue
    .line 859
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "VOD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    const/4 v1, 0x1

    .line 863
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWaitDeRegiWhenWFCDisable()Z
    .locals 3

    .prologue
    .line 777
    const-string/jumbo v1, "gsm.sim.operator.numeric"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "operatorNumeric":Ljava/lang/String;
    const-string v1, "EVR"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VOD"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PRT"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XEO"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "26006"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 779
    :cond_0
    const/4 v1, 0x1

    .line 781
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiSettingOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 485
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 487
    .local v0, "wifi":Landroid/net/wifi/WifiManager;
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiSettingOn() returning wifi.isWifiEnabled(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    return v1
.end method

.method public static lookupHost(Ljava/lang/String;)I
    .locals 7
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 453
    const-string v4, "[UTILS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lookupHost() enter, hostname is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 461
    .local v3, "inetaddr":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 462
    .local v1, "addrBytes":[B
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget-byte v5, v1, v0

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .line 464
    .local v0, "addr":I
    const-string v4, "[UTILS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "returning address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .end local v0    # "addr":I
    .end local v1    # "addrBytes":[B
    .end local v3    # "inetaddr":Ljava/net/InetAddress;
    :goto_0
    return v0

    .line 457
    :catch_0
    move-exception v2

    .line 458
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string v4, "[UTILS]"

    const-string/jumbo v5, "lookupHost failed"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 518
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 519
    return-void
.end method

.method public static shouldEpdgSupressW2LToRil(I)Z
    .locals 4
    .param p0, "cid"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 567
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    if-nez v3, :cond_1

    .line 580
    :cond_0
    :goto_0
    return v1

    .line 571
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    if-lez p0, :cond_2

    .line 574
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v0

    .line 576
    .local v0, "profileId":I
    if-lez v0, :cond_2

    .line 577
    if-eq v0, p0, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "profileId":I
    :cond_2
    move v1, v2

    .line 580
    goto :goto_0
.end method

.method public static shouldTEpdgTimerBeStarted()Z
    .locals 1

    .prologue
    .line 540
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isAnyPdnConnectedOverWifi()Z

    move-result v0

    return v0
.end method

.method public static shouldWaitForDeregWhenWiffiCallingOff()Z
    .locals 4

    .prologue
    .line 889
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, "salesCode":Ljava/lang/String;
    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 891
    .local v0, "operatorNumeric":Ljava/lang/String;
    const-string v2, "XFA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "65510"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 892
    :cond_1
    const/4 v2, 0x1

    .line 894
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static stripLeadingAndTrailingQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 846
    if-nez p0, :cond_1

    .line 847
    const/4 p0, 0x0

    .line 855
    :cond_0
    :goto_0
    return-object p0

    .line 849
    :cond_1
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 850
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 852
    :cond_2
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateOnwUriImsi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ipsecOwnUri"    # Ljava/lang/String;

    .prologue
    .line 662
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getSimState()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->idiImsiUpdate()Z

    move-result v13

    if-nez v13, :cond_1

    .line 663
    :cond_0
    const/4 v13, 0x0

    const-string v14, "[UTILS]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " updateOnwUriImsi() SimState: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getSimState()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ImsiUpdate:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->idiImsiUpdate()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 727
    .end local p1    # "ipsecOwnUri":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 669
    .restart local p1    # "ipsecOwnUri":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .local v4, "mcc":Ljava/lang/String;
    const/4 v5, 0x0

    .line 670
    .local v5, "mnc":Ljava/lang/String;
    const/4 v9, -0x1

    .line 671
    .local v9, "subscription":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 672
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, "imsi":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    .line 678
    .local v3, "mOwnUri":Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "[UTILS]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateOnwUriImsi: imsi:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " received "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ipsecOwnUri is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 681
    if-eqz v2, :cond_2

    if-eqz v2, :cond_4

    const-string v13, ""

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 682
    :cond_2
    const-string v13, "[UTILS]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No need to update the OwnUri imsi:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 674
    .end local v2    # "imsi":Ljava/lang/String;
    .end local v3    # "mOwnUri":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "imsi":Ljava/lang/String;
    goto :goto_1

    .line 686
    .restart local v3    # "mOwnUri":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/epdg/EpdgSettings;->getIsDynamicUserFQDN()Z

    move-result v13

    if-nez v13, :cond_5

    .line 687
    const-string v13, "[UTILS]"

    const-string/jumbo v14, "use static User FQDN from epdg app"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 691
    :cond_5
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x6

    if-le v13, v14, :cond_9

    .line 692
    const-string/jumbo v13, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 695
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 696
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v8

    .line 700
    .local v8, "operator":Ljava/lang/String;
    :goto_2
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x5

    if-lt v13, v14, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x6

    if-le v13, v14, :cond_8

    .line 701
    :cond_6
    const-string v13, "[UTILS]"

    const-string v14, "Operator is not upated or wrong"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 698
    .end local v8    # "operator":Ljava/lang/String;
    :cond_7
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "operator":Ljava/lang/String;
    goto :goto_2

    .line 706
    :cond_8
    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 707
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_a

    .line 708
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x3

    const/4 v15, 0x5

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 714
    .end local v8    # "operator":Ljava/lang/String;
    .end local v10    # "tm":Landroid/telephony/TelephonyManager;
    :cond_9
    :goto_3
    move-object/from16 v3, p1

    .line 715
    const-string v13, "@"

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 716
    .local v11, "uriList":[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v6, v11, v13

    .line 717
    .local v6, "naiStr":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "@"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 718
    .local v7, "newOwnUri":Ljava/lang/String;
    const-string/jumbo v13, "nai.epc.mnc"

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 719
    .local v12, "uriList1":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 720
    const-string v13, "[UTILS]"

    const-string/jumbo v14, "nai.epc.mnc not present"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 710
    .end local v6    # "naiStr":Ljava/lang/String;
    .end local v7    # "newOwnUri":Ljava/lang/String;
    .end local v11    # "uriList":[Ljava/lang/String;
    .end local v12    # "uriList1":[Ljava/lang/String;
    .restart local v8    # "operator":Ljava/lang/String;
    .restart local v10    # "tm":Landroid/telephony/TelephonyManager;
    :cond_a
    const/4 v13, 0x3

    const/4 v14, 0x6

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 724
    .end local v8    # "operator":Ljava/lang/String;
    .end local v10    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v6    # "naiStr":Ljava/lang/String;
    .restart local v7    # "newOwnUri":Ljava/lang/String;
    .restart local v11    # "uriList":[Ljava/lang/String;
    .restart local v12    # "uriList1":[Ljava/lang/String;
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    aget-object v14, v12, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "nai.epc.mnc"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".mcc"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".3gppnetwork.org"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, "finalOwnUri":Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "[UTILS]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "New Own Uri is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 p1, v1

    .line 727
    goto/16 :goto_0
.end method
