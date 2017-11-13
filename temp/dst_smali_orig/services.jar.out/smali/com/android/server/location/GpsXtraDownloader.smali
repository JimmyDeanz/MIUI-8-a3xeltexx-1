.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I

.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final MAXIMUM_CONTENT_LENGTH_BYTES:J = 0xf4240L

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string v0, "GpsXtraDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .locals 10
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .local v1, "count":I
    const-string v8, "XTRA2_SERVER_1"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "server1":Ljava/lang/String;
    const-string v8, "XTRA2_SERVER_2"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "server2":Ljava/lang/String;
    const-string v8, "XTRA2_SERVER_3"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "server3":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_GPS_ConfigAgpsSetting"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "secSalesCode":Ljava/lang/String;
    const-string v8, "CHM"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "CTC"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "CHU"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "CHN"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez v5, :cond_1

    :cond_0
    const-string v8, "XTRA_SERVER_1"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "XTRA_SERVER_2"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "XTRA_SERVER_3"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_1
    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    if-eqz v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    if-eqz v7, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    const-string v8, "XTRA_USER_AGENT"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "agent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "Android"

    iput-object v8, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    :goto_0
    if-nez v1, :cond_6

    const-string v8, "GpsXtraDownloader"

    const-string v9, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    :goto_1
    return-void

    :cond_5
    iput-object v0, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    :cond_6
    new-array v8, v1, [Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v5, :cond_9

    iget-object v8, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v5, v8, v1

    :goto_2
    if-eqz v6, :cond_7

    iget-object v8, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v6, v8, v2

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    :cond_7
    if-eqz v7, :cond_8

    iget-object v8, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v7, v8, v2

    :goto_3
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .local v3, "random":Ljava/util/Random;
    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_1

    .end local v1    # "count":I
    .end local v3    # "random":Ljava/util/Random;
    .restart local v2    # "count":I
    :cond_8
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_3

    :cond_9
    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_2
.end method

.method static Inject_xtra_user_agent(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "operator"    # Ljava/lang/String;

    .prologue
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy_MM_dd"

    invoke-direct {v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    move-object v0, p0

    .local v0, "carrier":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .local v5, "manufacturer":Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .local v6, "modelname":Ljava/lang/String;
    const-string v9, "ril.modem.board"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "chipset_other_tech":Ljava/lang/String;
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .local v8, "version":Ljava/lang/String;
    const-string v2, "Android"

    .local v2, "deviceclass":Ljava/lang/String;
    sget-wide v10, Landroid/os/Build;->TIME:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "launched_time":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "full_name":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "GpsXtraDownloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Inject_xtra_user_agent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v3
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .locals 19
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    sget-boolean v12, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "GpsXtraDownloader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Downloading XTRA data from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    .local v4, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    const-string v12, "Accept"

    const-string v13, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {v4, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "x-wap-profile"

    const-string v13, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-virtual {v4, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget v12, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_GPS_ConfigAgpsSetting"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "secSalesCode":Ljava/lang/String;
    const-string v12, "SPR"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "BST"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "VMU"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "XAS"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    const-string v12, "SPR"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v8, "Sprint"

    .local v8, "mOperator":Ljava/lang/String;
    :goto_0
    const-string v12, "User-Agent"

    invoke-static {v8}, Lcom/android/server/location/GpsXtraDownloader;->Inject_xtra_user_agent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .end local v8    # "mOperator":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .local v10, "statusCode":I
    const/16 v12, 0xc8

    if-eq v10, v12, :cond_8

    sget-boolean v12, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v12, :cond_3

    const-string v12, "GpsXtraDownloader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "HTTP error downloading gps XTRA: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 v12, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v9    # "secSalesCode":Ljava/lang/String;
    .end local v10    # "statusCode":I
    :cond_4
    :goto_1
    return-object v12

    .restart local v9    # "secSalesCode":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v12, "BST"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v8, "Boost"

    .restart local v8    # "mOperator":Ljava/lang/String;
    goto :goto_0

    .end local v8    # "mOperator":Ljava/lang/String;
    :cond_6
    const-string v12, "VMU"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v8, "Virgin"

    .restart local v8    # "mOperator":Ljava/lang/String;
    goto :goto_0

    .end local v8    # "mOperator":Ljava/lang/String;
    :cond_7
    const-string v8, "[MVNO_Partner]"

    .restart local v8    # "mOperator":Ljava/lang/String;
    goto :goto_0

    .end local v8    # "mOperator":Ljava/lang/String;
    .restart local v10    # "statusCode":I
    :cond_8
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .local v6, "in":Ljava/io/InputStream;
    const/4 v13, 0x0

    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v3, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v12, 0x400

    new-array v2, v12, [B

    .local v2, "buffer":[B
    :cond_9
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "count":I
    const/4 v12, -0x1

    if-eq v5, v12, :cond_10

    const/4 v12, 0x0

    invoke-virtual {v3, v2, v12, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    int-to-long v14, v12

    const-wide/32 v16, 0xf4240

    cmp-long v12, v14, v16

    if-lez v12, :cond_9

    sget-boolean v12, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v12, :cond_a

    const-string v12, "GpsXtraDownloader"

    const-string v14, "XTRA file too large"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_a
    const/4 v12, 0x0

    if-eqz v6, :cond_b

    if-eqz v13, :cond_e

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catch_0
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .end local v2    # "buffer":[B
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "count":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v9    # "secSalesCode":Ljava/lang/String;
    .end local v10    # "statusCode":I
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .local v7, "ioe":Ljava/io/IOException;
    :try_start_5
    sget-boolean v12, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v12, :cond_c

    const-string v12, "GpsXtraDownloader"

    const-string v13, "Error downloading gps XTRA: "

    invoke-static {v12, v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    const/4 v12, 0x0

    goto :goto_1

    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v2    # "buffer":[B
    .restart local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "count":I
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v9    # "secSalesCode":Ljava/lang/String;
    .restart local v10    # "statusCode":I
    :cond_e
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .end local v2    # "buffer":[B
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "count":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v9    # "secSalesCode":Ljava/lang/String;
    .end local v10    # "statusCode":I
    :catchall_0
    move-exception v12

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    throw v12

    .restart local v2    # "buffer":[B
    .restart local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "count":I
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v9    # "secSalesCode":Ljava/lang/String;
    .restart local v10    # "statusCode":I
    :cond_10
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v12

    if-eqz v6, :cond_11

    if-eqz v13, :cond_12

    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_11
    :goto_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    :catch_2
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_12
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .end local v2    # "buffer":[B
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "count":I
    :catch_3
    move-exception v12

    :try_start_a
    throw v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v13

    move-object/from16 v18, v13

    move-object v13, v12

    move-object/from16 v12, v18

    :goto_4
    if-eqz v6, :cond_13

    if-eqz v13, :cond_14

    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_13
    :goto_5
    :try_start_c
    throw v12

    :catch_4
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_14
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    :catchall_2
    move-exception v12

    goto :goto_4
.end method

.method downloadXtraData()[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "result":[B
    iget v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v0

    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    :cond_1
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v2, v1, :cond_0

    :cond_2
    move-object v2, v0

    goto :goto_0
.end method
