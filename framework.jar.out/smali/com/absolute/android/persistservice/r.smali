.class public Lcom/absolute/android/persistservice/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/absolute/android/sslutil/SslUtil;

.field private static b:Ljava/util/List;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/absolute/android/persistservice/r;->b:Ljava/util/List;

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistservice/v;Landroid/content/Context;)Lcom/absolute/android/persistence/AppInfoProperties;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 206
    .line 208
    new-instance v7, Lcom/absolute/android/persistence/AppInfoProperties;

    invoke-direct {v7}, Lcom/absolute/android/persistence/AppInfoProperties;-><init>()V

    .line 209
    const/4 v8, 0x0

    .line 216
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 219
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {p5}, Lcom/absolute/android/persistservice/r;->a(Landroid/content/Context;)Lcom/absolute/android/sslutil/SslUtil;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p2, v3}, Lcom/absolute/android/sslutil/SslUtil;->trustOurHost(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 224
    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 243
    :goto_0
    :try_start_2
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 244
    :try_start_3
    const-string v3, "UTF-8"

    invoke-virtual {p3, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 245
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 248
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 250
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_7

    .line 252
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 270
    :try_start_4
    invoke-virtual {v7, v3}, Lcom/absolute/android/persistence/AppInfoProperties;->load(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 287
    :goto_1
    if-eqz v1, :cond_0

    .line 288
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 292
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 294
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 298
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 300
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 305
    :cond_2
    :goto_4
    return-object v7

    .line 226
    :catch_0
    move-exception v1

    .line 234
    if-eqz v6, :cond_3

    .line 235
    :try_start_8
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 239
    :cond_3
    :goto_5
    const/4 v3, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    :try_start_9
    invoke-static/range {v0 .. v5}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v1

    goto :goto_0

    .line 271
    :catch_1
    move-exception v0

    .line 274
    :try_start_a
    invoke-static {v3, v7}, Lcom/absolute/android/persistservice/r;->a(Ljava/io/Reader;Ljava/util/Properties;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 286
    :catchall_0
    move-exception v0

    move-object v6, v2

    move-object v2, v3

    .line 287
    :goto_6
    if-eqz v1, :cond_4

    .line 288
    :try_start_b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 292
    :cond_4
    :goto_7
    if-eqz v6, :cond_5

    .line 294
    :try_start_c
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 298
    :cond_5
    :goto_8
    if-eqz v2, :cond_6

    .line 300
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 286
    :cond_6
    :goto_9
    throw v0

    .line 279
    :cond_7
    :try_start_e
    invoke-static {v1, p4}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/v;)Ljava/lang/String;

    move-result-object v4

    .line 280
    new-instance v5, Lorg/apache/http/client/HttpResponseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Server returned error in response to GetAppInfo HTTP request for URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " response: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v3, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 286
    :catchall_1
    move-exception v0

    move-object v9, v2

    move-object v2, v6

    move-object v6, v9

    goto :goto_6

    .line 237
    :catch_2
    move-exception v1

    goto :goto_5

    .line 290
    :catch_3
    move-exception v1

    goto :goto_7

    .line 295
    :catch_4
    move-exception v1

    goto :goto_8

    .line 301
    :catch_5
    move-exception v1

    goto :goto_9

    .line 290
    :catch_6
    move-exception v0

    goto :goto_2

    .line 295
    :catch_7
    move-exception v0

    goto :goto_3

    .line 301
    :catch_8
    move-exception v0

    goto :goto_4

    .line 286
    :catchall_2
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v6

    goto :goto_6
.end method

.method private static a(Landroid/content/Context;)Lcom/absolute/android/sslutil/SslUtil;
    .locals 2

    .prologue
    .line 807
    sget-object v0, Lcom/absolute/android/persistservice/r;->a:Lcom/absolute/android/sslutil/SslUtil;

    if-nez v0, :cond_0

    .line 808
    new-instance v0, Lcom/absolute/android/sslutil/SslUtil;

    const-string v1, "APS"

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/sslutil/SslUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/absolute/android/persistservice/r;->a:Lcom/absolute/android/sslutil/SslUtil;

    .line 810
    :cond_0
    sget-object v0, Lcom/absolute/android/persistservice/r;->a:Lcom/absolute/android/sslutil/SslUtil;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/absolute/android/persistservice/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    const-string v0, "AccessKey="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Package="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "PersistenceVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Platform="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Make="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Model="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "OSVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "BuildFingerprint="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Hardware="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getHardwareName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Revision="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getHardwareRevision()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "DeviceId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "MacAddress="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-static {p4}, Lcom/absolute/android/utils/DeviceUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "IMEI="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-static {p4}, Lcom/absolute/android/utils/DeviceUtil;->getTelephonyId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 137
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "SerialNo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "RilSerialNumber="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string/jumbo v0, "ril.serialnumber"

    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/v;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 574
    .line 575
    const/4 v2, 0x0

    .line 578
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 580
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 581
    const-string v2, ""

    .line 582
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 583
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 590
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 592
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 590
    :cond_0
    :goto_2
    throw v0

    .line 587
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 590
    if-eqz v1, :cond_2

    .line 592
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 600
    :cond_2
    :goto_3
    return-object v0

    .line 593
    :catch_0
    move-exception v1

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got exception closing error BufferedReader after executing HTTP request. Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 593
    :catch_1
    move-exception v1

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got exception closing error BufferedReader after executing HTTP request. Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 590
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    .locals 4

    .prologue
    const v3, 0xea60

    .line 501
    .line 502
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/absolute/android/persistservice/r;->c:Ljava/lang/String;

    .line 507
    if-eqz p1, :cond_1

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 524
    :cond_1
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 525
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 543
    :goto_0
    if-eqz p3, :cond_2

    .line 544
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 547
    :cond_2
    const-string v1, "Content-Type"

    const-string/jumbo v2, "text/plain; charset=UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 555
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 558
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 559
    return-object v0

    .line 527
    :cond_3
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 528
    new-instance v1, Lcom/absolute/android/persistservice/s;

    invoke-direct {v1}, Lcom/absolute/android/persistservice/s;-><init>()V

    .line 539
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_0
.end method

.method private static a(Ljava/io/Reader;Ljava/util/Properties;)V
    .locals 12

    .prologue
    .line 634
    if-nez p0, :cond_0

    .line 635
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 641
    :cond_0
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 642
    const/16 v0, 0x28

    new-array v3, v0, [C

    .line 643
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 644
    const/4 v0, 0x1

    .line 646
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v7, v6

    move v6, v5

    move v5, v4

    .line 649
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v4

    .line 650
    const/4 v8, -0x1

    if-ne v4, v8, :cond_1

    .line 782
    const/4 v0, 0x2

    if-ne v7, v0, :cond_15

    const/4 v0, 0x4

    if-gt v5, v0, :cond_15

    .line 783
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Unicode sequence: expected format \\uxxxx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_1
    int-to-char v8, v4

    .line 655
    array-length v4, v3

    if-ne v2, v4, :cond_1b

    .line 656
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [C

    .line 657
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v10, v4, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    :goto_1
    const/4 v3, 0x2

    if-ne v7, v3, :cond_1a

    .line 661
    const/16 v3, 0x10

    invoke-static {v8, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 662
    if-ltz v3, :cond_2

    .line 663
    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v3

    .line 664
    add-int/lit8 v3, v5, 0x1

    const/4 v5, 0x4

    if-ge v3, v5, :cond_3

    move v5, v3

    move-object v3, v4

    .line 665
    goto :goto_0

    .line 667
    :cond_2
    const/4 v3, 0x4

    if-gt v5, v3, :cond_4

    .line 668
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Unicode sequence: illegal character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v5, v3

    .line 670
    :cond_4
    const/4 v7, 0x0

    .line 671
    add-int/lit8 v3, v2, 0x1

    int-to-char v10, v6

    aput-char v10, v4, v2

    .line 672
    const/16 v2, 0xa

    if-eq v8, v2, :cond_5

    move v2, v3

    move-object v3, v4

    .line 673
    goto :goto_0

    :cond_5
    move v2, v3

    move v3, v7

    .line 676
    :goto_2
    const/4 v7, 0x1

    if-ne v3, v7, :cond_8

    .line 677
    const/4 v7, 0x0

    .line 678
    sparse-switch v8, :sswitch_data_0

    move v0, v8

    :goto_3
    move v8, v0

    .line 775
    :cond_6
    :goto_4
    const/4 v0, 0x0

    .line 776
    const/4 v3, 0x4

    if-ne v7, v3, :cond_7

    .line 778
    const/4 v7, 0x0

    move v1, v2

    .line 780
    :cond_7
    add-int/lit8 v3, v2, 0x1

    aput-char v8, v4, v2

    move v2, v3

    move-object v3, v4

    goto :goto_0

    .line 680
    :sswitch_0
    const/4 v3, 0x3

    move v7, v3

    move-object v3, v4

    .line 681
    goto :goto_0

    .line 683
    :sswitch_1
    const/4 v3, 0x5

    move v7, v3

    move-object v3, v4

    .line 684
    goto :goto_0

    .line 686
    :sswitch_2
    const/16 v0, 0x8

    .line 687
    goto :goto_3

    .line 689
    :sswitch_3
    const/16 v0, 0xc

    .line 690
    goto :goto_3

    .line 692
    :sswitch_4
    const/16 v0, 0xa

    .line 693
    goto :goto_3

    .line 695
    :sswitch_5
    const/16 v0, 0xd

    .line 696
    goto :goto_3

    .line 698
    :sswitch_6
    const/16 v0, 0x9

    .line 699
    goto :goto_3

    .line 701
    :sswitch_7
    const/4 v5, 0x2

    .line 702
    const/4 v3, 0x0

    move v6, v3

    move v7, v5

    move v5, v3

    move-object v3, v4

    .line 703
    goto/16 :goto_0

    .line 706
    :cond_8
    sparse-switch v8, :sswitch_data_1

    .line 758
    :cond_9
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 759
    const/4 v7, 0x3

    if-ne v3, v7, :cond_a

    .line 760
    const/4 v3, 0x5

    .line 763
    :cond_a
    if-eqz v2, :cond_19

    if-eq v2, v1, :cond_19

    const/4 v7, 0x5

    if-ne v3, v7, :cond_12

    move v7, v3

    move-object v3, v4

    .line 764
    goto/16 :goto_0

    .line 709
    :sswitch_8
    if-eqz v0, :cond_9

    .line 711
    :cond_b
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v7

    .line 712
    const/4 v8, -0x1

    if-ne v7, v8, :cond_c

    move v7, v3

    move-object v3, v4

    .line 713
    goto/16 :goto_0

    .line 715
    :cond_c
    int-to-char v7, v7

    .line 716
    const/16 v8, 0xd

    if-eq v7, v8, :cond_19

    const/16 v8, 0xa

    if-ne v7, v8, :cond_b

    move v7, v3

    move-object v3, v4

    .line 717
    goto/16 :goto_0

    .line 724
    :sswitch_9
    const/4 v7, 0x3

    if-ne v3, v7, :cond_d

    .line 725
    const/4 v3, 0x5

    move v7, v3

    move-object v3, v4

    .line 726
    goto/16 :goto_0

    .line 730
    :cond_d
    :sswitch_a
    const/4 v3, 0x0

    .line 731
    const/4 v0, 0x1

    .line 732
    if-gtz v2, :cond_e

    if-nez v2, :cond_10

    if-nez v1, :cond_10

    .line 733
    :cond_e
    const/4 v7, -0x1

    if-ne v1, v7, :cond_f

    move v1, v2

    .line 736
    :cond_f
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8, v2}, Ljava/lang/String;-><init>([CII)V

    .line 737
    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    :cond_10
    const/4 v1, -0x1

    .line 741
    const/4 v2, 0x0

    move v7, v3

    move-object v3, v4

    .line 742
    goto/16 :goto_0

    .line 744
    :sswitch_b
    const/4 v7, 0x4

    if-ne v3, v7, :cond_11

    move v1, v2

    .line 747
    :cond_11
    const/4 v3, 0x1

    move v7, v3

    move-object v3, v4

    .line 748
    goto/16 :goto_0

    .line 751
    :sswitch_c
    const/4 v7, -0x1

    if-ne v1, v7, :cond_9

    .line 752
    const/4 v1, 0x0

    move-object v3, v4

    move v7, v1

    move v1, v2

    .line 754
    goto/16 :goto_0

    .line 766
    :cond_12
    const/4 v7, -0x1

    if-ne v1, v7, :cond_13

    .line 767
    const/4 v3, 0x4

    move v7, v3

    move-object v3, v4

    .line 768
    goto/16 :goto_0

    :cond_13
    move v7, v3

    .line 771
    const/4 v0, 0x5

    if-eq v7, v0, :cond_14

    const/4 v0, 0x3

    if-ne v7, v0, :cond_6

    .line 772
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 785
    :cond_15
    const/4 v0, -0x1

    if-ne v1, v0, :cond_16

    if-lez v2, :cond_16

    move v1, v2

    .line 788
    :cond_16
    if-ltz v1, :cond_18

    .line 789
    new-instance v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Ljava/lang/String;-><init>([CII)V

    .line 790
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 791
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 792
    const/4 v1, 0x1

    if-ne v7, v1, :cond_17

    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    :cond_17
    invoke-virtual {p1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    :cond_18
    return-void

    :cond_19
    move v7, v3

    move-object v3, v4

    goto/16 :goto_0

    :cond_1a
    move v3, v7

    goto/16 :goto_2

    :cond_1b
    move-object v4, v3

    goto/16 :goto_1

    .line 678
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x62 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
    .end sparse-switch

    .line 706
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_9
        0xd -> :sswitch_a
        0x21 -> :sswitch_8
        0x23 -> :sswitch_8
        0x3a -> :sswitch_c
        0x3d -> :sswitch_c
        0x5c -> :sswitch_b
    .end sparse-switch
.end method

.method protected static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;ILcom/absolute/android/persistservice/v;Landroid/content/Context;)V
    .locals 11

    .prologue
    .line 349
    const/4 v9, 0x0

    .line 350
    const/4 v8, 0x0

    .line 351
    const/4 v7, 0x0

    .line 352
    const/4 v10, 0x0

    .line 360
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 363
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-static/range {p10 .. p10}, Lcom/absolute/android/persistservice/r;->a(Landroid/content/Context;)Lcom/absolute/android/sslutil/SslUtil;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p4, v4}, Lcom/absolute/android/sslutil/SslUtil;->trustOurHost(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 368
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-static/range {v1 .. v6}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v5

    .line 383
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    .line 385
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_5

    .line 388
    :try_start_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    .line 390
    const-string v1, "SHA256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 392
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 393
    :try_start_4
    new-instance v3, Ljava/security/DigestInputStream;

    invoke-direct {v3, v2, v1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 395
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    move-object/from16 v0, p6

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 396
    const/16 v4, 0x2000

    :try_start_6
    new-array v7, v4, [B

    .line 399
    const/4 v6, 0x0

    .line 400
    const/4 v4, 0x0

    .line 401
    :cond_0
    :goto_1
    invoke-virtual {v3, v7}, Ljava/security/DigestInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 402
    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 403
    if-eqz p7, :cond_0

    .line 404
    add-int/2addr v6, v8

    .line 406
    sub-int v8, v6, v4

    move/from16 v0, p8

    mul-int/lit16 v9, v0, 0x400

    if-lt v8, v9, :cond_0

    .line 414
    :try_start_7
    move-object/from16 v0, p7

    invoke-interface {v0, p0, p1, v10, v6}, Lcom/absolute/android/persistence/IABTDownloadReceiver;->onDownloadProgress(Ljava/lang/String;III)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v4, v6

    .line 420
    goto :goto_1

    .line 370
    :catch_0
    move-exception v2

    .line 378
    const/4 v4, 0x0

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    :try_start_8
    invoke-static/range {v1 .. v6}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v5

    goto :goto_0

    .line 416
    :catch_1
    move-exception v4

    .line 417
    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got exception invoking IABTDownloadReceiver.onDownloadProgress() for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p9

    invoke-virtual {v0, v8, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v4, v6

    .line 420
    goto :goto_1

    .line 426
    :cond_1
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 428
    invoke-static/range {p5 .. p5}, Lcom/absolute/android/crypt/HexUtilities;->GetBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_6

    .line 431
    new-instance v4, Lcom/absolute/android/persistservice/DownloadApkException;

    const-string v6, "Downloaded APK failed digest verification for algorithm: SHA256"

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v4
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 436
    :catch_2
    move-exception v4

    .line 438
    :goto_2
    :try_start_a
    new-instance v4, Lcom/absolute/android/persistservice/DownloadApkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloaded APK for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "failed - unsupported digest verification algorithm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SHA256"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 450
    :catchall_0
    move-exception v4

    move-object v7, v1

    move-object v8, v2

    move-object v1, v4

    move-object v2, v5

    .line 451
    :goto_3
    if-eqz v2, :cond_2

    .line 452
    :try_start_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 457
    :cond_2
    :goto_4
    if-eqz v7, :cond_3

    .line 458
    :try_start_c
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 463
    :cond_3
    :goto_5
    if-eqz v3, :cond_a

    .line 464
    :try_start_d
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 450
    :cond_4
    :goto_6
    throw v1

    .line 443
    :cond_5
    :try_start_e
    move-object/from16 v0, p9

    invoke-static {v5, v0}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/v;)Ljava/lang/String;

    move-result-object v3

    .line 444
    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Server returned error in response to download APK HTTP request for URL: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " response: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 450
    :catchall_1
    move-exception v1

    move-object v2, v5

    move-object v3, v9

    goto :goto_3

    .line 451
    :cond_6
    if-eqz v5, :cond_7

    .line 452
    :try_start_f
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 457
    :cond_7
    :goto_7
    if-eqz v1, :cond_8

    .line 458
    :try_start_10
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    .line 463
    :cond_8
    :goto_8
    if-eqz v3, :cond_b

    .line 464
    :try_start_11
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    .line 471
    :cond_9
    :goto_9
    return-void

    .line 454
    :catch_3
    move-exception v2

    goto :goto_4

    .line 466
    :cond_a
    if-eqz v8, :cond_4

    .line 467
    :try_start_12
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    goto :goto_6

    .line 469
    :catch_4
    move-exception v2

    goto :goto_6

    .line 454
    :catch_5
    move-exception v4

    goto :goto_7

    .line 466
    :cond_b
    if-eqz v2, :cond_9

    .line 467
    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto :goto_9

    .line 469
    :catch_6
    move-exception v1

    goto :goto_9

    .line 461
    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v2

    goto :goto_5

    .line 450
    :catchall_2
    move-exception v1

    move-object v2, v10

    move-object v3, v9

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v8, v2

    move-object v3, v9

    move-object v2, v5

    goto :goto_3

    :catchall_4
    move-exception v1

    move-object v8, v2

    move-object v2, v5

    goto :goto_3

    .line 436
    :catch_9
    move-exception v1

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    goto/16 :goto_2

    :catch_a
    move-exception v1

    move-object v1, v7

    move-object v3, v9

    goto/16 :goto_2

    :catch_b
    move-exception v1

    move-object v1, v7

    goto/16 :goto_2
.end method
