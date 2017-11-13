.class Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;
.super Ljava/lang/Object;
.source "WifiMaliciousHotspotDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SslStripDetector"
.end annotation


# static fields
.field public static final DEFAULT_SSD_DELAYED_START_SEC:I = 0xa

.field public static final DEFAULT_SSD_INTERVAL_SEC:I = 0xa

.field public static final DEFAULT_SSD_REPEAT_MIN:I = 0x0

.field public static final DEFAULT_SSD_SETS:I = 0x3

.field public static final DEFAULT_SSD_TIMEOUT_SEC:I = 0xa

.field private static final TAG:Ljava/lang/String; = "WifiMHD::s"


# instance fields
.field private final DEFAULT_SSD_URL_LIST:[Ljava/lang/String;

.field private final DEFAULT_STATE:I

.field private final SSD_INIT_ID:I

.field private final SSD_MAX_CONSECUTIVE_TIMEOUT:I

.field private final SSD_RESULT_DETECTED:I

.field private final SSD_RESULT_NONE:I

.field private final SSD_RESULT_TIMEOUT:I

.field private mSSDConnectionToken:I

.field private mSSDDelayedStartSec:I

.field private mSSDIntervalSec:I

.field private mSSDRepeatMin:I

.field private mSSDRespCode:I

.field private mSSDRespType:I

.field private mSSDRespUrl:Ljava/lang/String;

.field private mSSDResultStack:Ljava/lang/String;

.field private mSSDSets:I

.field private mSSDStartUrlIndex:I

.field private mSSDTimeoutCount:I

.field private mSSDTimeoutSec:I

.field private mSSDUrlIdx:I

.field private mSSDUrlList:[Ljava/lang/String;

.field private mSSDUrlMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSslStripDetectionEnabled:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 1015
    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->DEFAULT_STATE:I

    .line 966
    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSslStripDetectionEnabled:I

    .line 974
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://www.twitter.com"

    aput-object v1, v0, v3

    const-string v1, "http://www.facebook.com"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "http://www.instagram.com"

    aput-object v2, v0, v1

    const-string v1, "http://www.linkedin.com"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "http://www.dropbox.com"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "http://www.wikipedia.org"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "http://www.wordpress.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "http://accounts.google.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "http://www.yahoo.com"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "http://www.reddit.com"

    aput-object v2, v0, v1

    const-string v1, "http://www.pinterest.com"

    aput-object v1, v0, v4

    const/16 v1, 0xb

    const-string v2, "http://mail.ru"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "http://www.tumblr.com"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "http://www.netflix.com"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "http://www.flickr.com"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "http://www.paypal.com"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->DEFAULT_SSD_URL_LIST:[Ljava/lang/String;

    .line 993
    iput v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->SSD_INIT_ID:I

    .line 994
    iput v7, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->SSD_RESULT_TIMEOUT:I

    .line 995
    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->SSD_RESULT_NONE:I

    .line 996
    iput v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->SSD_RESULT_DETECTED:I

    .line 997
    iput v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->SSD_MAX_CONSECUTIVE_TIMEOUT:I

    .line 1016
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->DEFAULT_SSD_URL_LIST:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlList:[Ljava/lang/String;

    .line 1017
    iput v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDSets:I

    .line 1018
    iput v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDIntervalSec:I

    .line 1019
    iput v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutSec:I

    .line 1020
    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRepeatMin:I

    .line 1021
    iput v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDDelayedStartSec:I

    .line 1022
    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    .line 1023
    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDConnectionToken:I

    .line 1024
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDResultStack:Ljava/lang/String;

    .line 1025
    iput v7, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDStartUrlIndex:I

    .line 1026
    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCountryIso:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1700(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->updateUrlList(Ljava/lang/String;)V

    .line 1027
    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 963
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->updateUrlList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;
    .param p1, "x1"    # I

    .prologue
    .line 963
    iput p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespCode:I

    return p1
.end method

.method static synthetic access$2102(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;
    .param p1, "x1"    # I

    .prologue
    .line 963
    iput p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespType:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 963
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->getResponse(Ljava/lang/String;II)V

    return-void
.end method

.method private getResponse(Ljava/lang/String;II)V
    .locals 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "onGoingId"    # I
    .param p3, "token"    # I

    .prologue
    .line 1226
    const/4 v4, 0x0

    .line 1227
    .local v4, "httpURLConnection":Ljava/net/HttpURLConnection;
    const-string v12, "WifiMHD::s"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "req("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "):"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->MHD_VERSION:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :try_start_0
    new-instance v6, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1230
    .local v6, "obj":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 1231
    const-string v12, "ro.product.model"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1232
    .local v5, "modelName":Ljava/lang/String;
    const-string v12, "ro.build.version.release"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1233
    .local v7, "osVersion":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$400()Z

    move-result v12

    if-nez v12, :cond_0

    if-nez v5, :cond_1

    .line 1234
    :cond_0
    const-string v5, "GT-I9500"

    .line 1236
    :cond_1
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1237
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutSec:I

    mul-int/lit16 v12, v12, 0x3e8

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1238
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutSec:I

    mul-int/lit16 v12, v12, 0x3e8

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1239
    const-string v12, "Connection"

    const-string v13, "close"

    invoke-virtual {v4, v12, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    const-string v12, "Accept"

    const-string v13, "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"

    invoke-virtual {v4, v12, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    const-string v12, "User-Agent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Mozilla/5.0 (Linux; Android "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Build/LRX22C) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/3.0 Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const-string v12, "Accept-Encoding"

    const-string v13, "gzip,deflate,sdch"

    invoke-virtual {v4, v12, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const-string v12, "Accept-Language"

    const-string v13, "en-GB,en;q=0.8,en-US;q=0.6,en;q=0.4"

    invoke-virtual {v4, v12, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespCode:I

    .line 1248
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespType:I

    .line 1249
    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 1250
    .local v2, "addr":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->isPrivateAddress(Ljava/net/InetAddress;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1252
    const-string v12, "WifiMHD::s"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "url: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", addr: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", isPrivateAddress. Ignore the result"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->removeMessages(I)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v14, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    if-eqz v4, :cond_3

    .line 1288
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1289
    const/4 v4, 0x0

    .line 1292
    .end local v2    # "addr":Ljava/net/InetAddress;
    .end local v5    # "modelName":Ljava/lang/String;
    .end local v6    # "obj":Ljava/net/URL;
    .end local v7    # "osVersion":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 1253
    .restart local v2    # "addr":Ljava/net/InetAddress;
    .restart local v5    # "modelName":Ljava/lang/String;
    .restart local v6    # "obj":Ljava/net/URL;
    .restart local v7    # "osVersion":Ljava/lang/String;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespCode:I

    const/16 v13, 0x12c

    if-lt v12, v13, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespCode:I

    const/16 v13, 0x133

    if-gt v12, v13, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespCode:I

    const/16 v13, 0x132

    if-eq v12, v13, :cond_2

    .line 1254
    new-instance v8, Ljava/net/URL;

    const-string v12, "Location"

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1256
    .local v8, "redirectUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    const-string v12, "http"

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1260
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    .line 1261
    .local v11, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->isAuthenticated()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1263
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->matchServerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1264
    .local v10, "serverName":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 1265
    .local v9, "redirectUrlHost":Ljava/lang/String;
    if-eqz v10, :cond_6

    if-eqz v9, :cond_6

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1266
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespType:I
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1276
    .end local v2    # "addr":Ljava/net/InetAddress;
    .end local v5    # "modelName":Ljava/lang/String;
    .end local v6    # "obj":Ljava/net/URL;
    .end local v7    # "osVersion":Ljava/lang/String;
    .end local v8    # "redirectUrl":Ljava/net/URL;
    .end local v9    # "redirectUrlHost":Ljava/lang/String;
    .end local v10    # "serverName":Ljava/lang/String;
    .end local v11    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_0
    move-exception v3

    .line 1277
    .local v3, "e":Ljava/net/SocketException;
    :try_start_2
    const-string v12, "WifiMHD::s"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") SE "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1287
    if-eqz v4, :cond_3

    .line 1288
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1289
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1268
    .end local v3    # "e":Ljava/net/SocketException;
    .restart local v2    # "addr":Ljava/net/InetAddress;
    .restart local v5    # "modelName":Ljava/lang/String;
    .restart local v6    # "obj":Ljava/net/URL;
    .restart local v7    # "osVersion":Ljava/lang/String;
    .restart local v8    # "redirectUrl":Ljava/net/URL;
    .restart local v9    # "redirectUrlHost":Ljava/lang/String;
    .restart local v10    # "serverName":Ljava/lang/String;
    .restart local v11    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_6
    :try_start_3
    const-string v12, "WifiMHD::s"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Redirected to nowhere - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespType:I
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1278
    .end local v2    # "addr":Ljava/net/InetAddress;
    .end local v5    # "modelName":Ljava/lang/String;
    .end local v6    # "obj":Ljava/net/URL;
    .end local v7    # "osVersion":Ljava/lang/String;
    .end local v8    # "redirectUrl":Ljava/net/URL;
    .end local v9    # "redirectUrlHost":Ljava/lang/String;
    .end local v10    # "serverName":Ljava/lang/String;
    .end local v11    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_1
    move-exception v3

    .line 1279
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string v12, "WifiMHD::s"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") IAE "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1287
    if-eqz v4, :cond_3

    .line 1288
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1289
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1280
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 1281
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    const-string v12, "WifiMHD::s"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") IOE "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1287
    if-eqz v4, :cond_3

    .line 1288
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1289
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1282
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 1283
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_6
    const-string v12, "WifiMHD::s"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") RE "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1287
    if-eqz v4, :cond_3

    .line 1288
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1289
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1284
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v3

    .line 1285
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :try_start_7
    const-string v12, "WifiMHD::s"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") OOME "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1287
    if-eqz v4, :cond_3

    .line 1288
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1289
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1287
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v12

    if-eqz v4, :cond_7

    .line 1288
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1289
    const/4 v4, 0x0

    :cond_7
    throw v12
.end method

.method private isPrivateAddress(Ljava/net/InetAddress;)Z
    .locals 8
    .param p1, "addr"    # Ljava/net/InetAddress;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1295
    if-eqz p1, :cond_4

    instance-of v6, p1, Ljava/net/Inet4Address;

    if-eqz v6, :cond_4

    .line 1296
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    aget-byte v6, v6, v5

    and-int/lit16 v0, v6, 0xff

    .line 1297
    .local v0, "ipByte1st":I
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    aget-byte v6, v6, v4

    and-int/lit16 v1, v6, 0xff

    .line 1298
    .local v1, "ipByte2nd":I
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v2, v6, 0xff

    .line 1299
    .local v2, "ipByte3rd":I
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v3, v6, 0xff

    .line 1300
    .local v3, "ipByte4th":I
    const/16 v6, 0xa

    if-eq v0, v6, :cond_2

    const/16 v6, 0xc0

    if-ne v0, v6, :cond_0

    const/16 v6, 0xa8

    if-eq v1, v6, :cond_2

    :cond_0
    const/16 v6, 0xac

    if-ne v0, v6, :cond_1

    const/16 v6, 0x10

    if-lt v1, v6, :cond_1

    const/16 v6, 0x1f

    if-le v1, v6, :cond_2

    :cond_1
    if-ne v0, v4, :cond_4

    const/16 v6, 0x21

    if-ne v1, v6, :cond_4

    const/16 v6, 0xcb

    if-ne v2, v6, :cond_4

    const/16 v6, 0x27

    if-ne v3, v6, :cond_4

    .line 1304
    :cond_2
    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$400()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "WifiMHD::s"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Private Network IP Address !!! - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    .end local v0    # "ipByte1st":I
    .end local v1    # "ipByte2nd":I
    .end local v2    # "ipByte3rd":I
    .end local v3    # "ipByte4th":I
    :cond_3
    :goto_0
    return v4

    :cond_4
    move v4, v5

    goto :goto_0
.end method

.method private matchServerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    .line 1209
    const-string v4, "//"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1210
    .local v2, "spl":[Ljava/lang/String;
    array-length v0, v2

    .line 1211
    .local v0, "len":I
    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    .line 1212
    add-int/lit8 v4, v0, -0x1

    aget-object v4, v2, v4

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1213
    .local v3, "spl2":[Ljava/lang/String;
    array-length v1, v3

    .line 1214
    .local v1, "len2":I
    if-lt v1, v6, :cond_1

    .line 1215
    const/4 v4, 0x3

    if-lt v1, v4, :cond_0

    add-int/lit8 v4, v1, -0x2

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1216
    add-int/lit8 v4, v1, -0x3

    aget-object v4, v3, v4

    .line 1222
    .end local v1    # "len2":I
    .end local v3    # "spl2":[Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1218
    .restart local v1    # "len2":I
    .restart local v3    # "spl2":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v1, -0x2

    aget-object v4, v3, v4

    goto :goto_0

    .line 1222
    .end local v1    # "len2":I
    .end local v3    # "spl2":[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateUrlList(Ljava/lang/String;)V
    .locals 4
    .param p1, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 1184
    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 1185
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlMap:Ljava/util/HashMap;

    .line 1186
    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlMap:Ljava/util/HashMap;

    const-string v2, "default"

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->DEFAULT_SSD_URL_LIST:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1190
    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlList:[Ljava/lang/String;

    .line 1195
    :goto_0
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 1196
    .local v0, "rand":Ljava/util/Random;
    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlList:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    .line 1197
    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiMHD::s"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->MHD_VERSION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCountryIso:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1700(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlList:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_1
    return-void

    .line 1192
    .end local v0    # "rand":Ljava/util/Random;
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlMap:Ljava/util/HashMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlList:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public checkResult(II)V
    .locals 4
    .param p1, "onGoingId"    # I
    .param p2, "token"    # I

    .prologue
    const/4 v3, -0x1

    .line 1107
    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiMHD::s"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "res("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDConnectionToken:I

    if-eq p2, v0, :cond_1

    .line 1109
    const-string v0, "WifiMHD::s"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ign token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDConnectionToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :goto_0
    return-void

    .line 1112
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespType:I

    if-ne v0, v3, :cond_3

    .line 1113
    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutCount:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutCount:I

    .line 1114
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->requestSSD(I)V

    goto :goto_0

    .line 1117
    :cond_3
    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutCount:I

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDResultStack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDResultStack:Ljava/lang/String;

    .line 1119
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDResultStack:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1120
    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDStartUrlIndex:I

    .line 1122
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDSets:I

    if-lt p1, v0, :cond_5

    .line 1123
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->finishSSD()V

    goto :goto_0

    .line 1127
    :cond_5
    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRespType:I

    if-nez v0, :cond_6

    .line 1128
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->finishSSD()V

    goto :goto_0

    .line 1131
    :cond_6
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->requestSSD(I)V

    goto :goto_0
.end method

.method public finishSSD()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1138
    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$400()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "WifiMHD::s"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RESULT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDResultStack:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDResultStack:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_0
    iget v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSslStripDetectionEnabled:I

    if-eqz v3, :cond_1

    .line 1140
    const-string v3, "111"

    iget-object v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDResultStack:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1141
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 1142
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_1

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1143
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 1144
    .local v0, "bssid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSslStripDetectionEnabled:I

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->handleMaliciousHotspotDetection(Ljava/lang/String;II)V

    .line 1148
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingEnabled:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$900(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1149
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1150
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_1

    .line 1151
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1152
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string v4, "MHDS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDStartUrlIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "O"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendGsimData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MHDS - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDStartUrlIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "O"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    .line 1166
    iget v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRepeatMin:I

    if-eqz v3, :cond_2

    .line 1167
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    iget-object v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v4, v8, v8, v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRepeatMin:I

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1170
    :cond_2
    return-void

    .line 1156
    .restart local v0    # "bssid":Ljava/lang/String;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string v4, "MHDS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDStartUrlIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "S"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendGsimData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MHDS - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDStartUrlIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getEnabled()I
    .locals 1

    .prologue
    .line 1205
    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSslStripDetectionEnabled:I

    return v0
.end method

.method public requestSSD(I)V
    .locals 8
    .param p1, "onGoingId"    # I

    .prologue
    .line 1053
    iget v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSslStripDetectionEnabled:I

    if-nez v4, :cond_0

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    .line 1104
    :goto_0
    return-void

    .line 1059
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1800(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/ConnectivityManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1060
    .local v2, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1061
    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$400()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "WifiMHD::s"

    const-string v5, "no conn"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    goto :goto_0

    .line 1067
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 1068
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_3

    sget-boolean v4, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->isAuthenticated()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1071
    :cond_3
    const-string v4, "WifiMHD::s"

    const-string v5, "no auth"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    goto :goto_0

    .line 1076
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->isRegistered(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1900(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1077
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    goto :goto_0

    .line 1081
    :cond_5
    iget v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutCount:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_7

    .line 1082
    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$400()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "WifiMHD::s"

    const-string v5, "max timeout count reached"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    goto :goto_0

    .line 1088
    :cond_7
    iget v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlList:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_8

    .line 1089
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    .line 1091
    :cond_8
    iget-object v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlList:[Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlIdx:I

    aget-object v1, v4, v5

    .line 1092
    .local v1, "targetUrl":Ljava/lang/String;
    iget v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDConnectionToken:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDConnectionToken:I

    .line 1094
    .local v0, "connectionToken":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, p1, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutSec:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1097
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector$1;

    invoke-direct {v5, p0, v1, p1, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector$1;-><init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;Ljava/lang/String;II)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public setEnabled(I)V
    .locals 0
    .param p1, "enable"    # I

    .prologue
    .line 1201
    iput p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSslStripDetectionEnabled:I

    .line 1202
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 1030
    iget v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDSets:I

    iget v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDDelayedStartSec:I

    iget v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutSec:I

    iget v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDIntervalSec:I

    iget v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRepeatMin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->start(IIIII)V

    .line 1031
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutCount:I

    .line 1032
    return-void
.end method

.method public start(IIIII)V
    .locals 4
    .param p1, "ssdSet"    # I
    .param p2, "delayed_start_sec"    # I
    .param p3, "timeout_sec"    # I
    .param p4, "interval_sec"    # I
    .param p5, "repeat_min"    # I

    .prologue
    const/4 v3, 0x1

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    .line 1036
    iput p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDSets:I

    .line 1037
    iput p3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutSec:I

    .line 1038
    iput p4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDIntervalSec:I

    .line 1039
    iput p5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRepeatMin:I

    .line 1040
    iput p2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDDelayedStartSec:I

    .line 1041
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v3, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDDelayedStartSec:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1043
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 1047
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDResultStack:Ljava/lang/String;

    .line 1048
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->removeMessages(I)V

    .line 1049
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->removeMessages(I)V

    .line 1050
    return-void
.end method

.method public updateVariables(Ljava/util/HashMap;IIIII)V
    .locals 1
    .param p2, "ssdSet"    # I
    .param p3, "timeout_sec"    # I
    .param p4, "interval_sec"    # I
    .param p5, "repeat_min"    # I
    .param p6, "delayed_start_sec"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;IIIII)V"
        }
    .end annotation

    .prologue
    .line 1173
    .local p1, "urlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    .line 1174
    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDUrlMap:Ljava/util/HashMap;

    .line 1175
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCountryIso:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1700(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->updateUrlList(Ljava/lang/String;)V

    .line 1176
    iput p2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDSets:I

    .line 1177
    iput p3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDTimeoutSec:I

    .line 1178
    iput p4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDIntervalSec:I

    .line 1179
    iput p5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDRepeatMin:I

    .line 1180
    iput p6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->mSSDDelayedStartSec:I

    .line 1181
    return-void
.end method
