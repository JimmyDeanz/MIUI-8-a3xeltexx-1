.class public Lcom/android/server/location/GpsLocationProvider_samsung;
.super Ljava/lang/Object;
.source "GpsLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider_samsung$4;,
        Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;,
        Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;
    }
.end annotation


# static fields
.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final AGPS_TYPE_SUPL_2:I = 0x3

.field private static final AGPS_TYPE_SUPL_2_0_1_AGNSS:I = 0x5

.field private static final AGPS_TYPE_SUPL_2_AGNSS:I = 0x4

.field private static final CSC_PROPERTIES_DIR:Ljava/lang/String; = "/data/system/gps"

.field private static final CSC_PROPERTIES_FILE:Ljava/lang/String; = "/data/system/gps/cscgps.conf"

.field private static final DEBUG:Z = true

.field private static final EXERCISE_LCD_OFF:I = 0x0

.field private static final EXERCISE_LCD_ON:I = 0x1

.field static final FLAG_AGPS_UDP_RECEIVED:I = 0x1

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final INTENT_AGPS_GET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_GET_PROFILE"

.field private static final INTENT_AGPS_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_PROFILE"

.field private static final INTENT_AGPS_SET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_SET_PROFILE"

.field private static final INTENT_AGPS_UDP_RECEIVED:Ljava/lang/String; = "android.intent.action.AGPS_UDP_RECEIVED"

.field private static final MAX_EXERCISE_DATA:I = 0x12c

.field private static final Num_Top_SV:I = 0x5

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final SEC_GPS_CONF_DIR:Ljava/lang/String; = "/data/system/gps"

.field private static final SEC_GPS_CONF_FILE:Ljava/lang/String; = "/data/system/gps/secgps.conf"

.field static final SUPL_INIT_KOR_SUPL_NI:I = 0x1

.field static final SUPL_INIT_USA_SUPL_NI:I = 0x2

.field static final SUPL_INIT_USA_TMO_SUPL_NI:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider_ex"

.field private static final VERBOSE:Z


# instance fields
.field private final RJILALPHA:Ljava/lang/String;

.field private final SERVER_PORT:I

.field private exerciseAltitude:[F

.field private exerciseLatitude:[D

.field private exerciseLongtitude:[D

.field private exercisePedoDistance:[D

.field private exercisePedoSpeed:[D

.field private exercisePedoStepCount:[J

.field private exercisePressure:[F

.field private exerciseSpeed:[F

.field private exerciseTimestamp:[J

.field private googleSuplAddr:Ljava/lang/String;

.field private googleSuplPort:I

.field private isNativeInitCalled:Z

.field private isUDPListen:Z

.field private ktPositionMode:I

.field mConnMgr:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mCurrentMobileType:I

.field private mExerciseLocationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mExerciseLocationProvider:Landroid/location/IExerciseLocationProvider;

.field private mExerciseStarted:Z

.field private mIsKtGps:Z

.field private mIsSKAF:Z

.field private mIsSetAutoSuplServer:Z

.field private mKTSuplServerHost:Ljava/lang/String;

.field private mKTSuplServerPort:I

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mPositionModeFromCSC:Ljava/lang/String;

.field mProperties:Ljava/util/Properties;

.field mProperties_secgps:Ljava/util/Properties;

.field private mResolveAddrs:[Ljava/net/InetAddress;

.field public mStarted:Z

.field private mSuplAddress:Ljava/lang/String;

.field private mSuplPort:I

.field private mSuplServerFromCSC:I

.field private mSuplSslMode:I

.field private mSuplSslType:I

.field private mSuplType:I

.field private mccTLS:I

.field private mncTLS1:I

.field private mncTLS2:I

.field private prevLppMask:I

.field private retAddr:[Ljava/net/InetAddress;

.field private sktSuplAddr:Ljava/lang/String;

.field private sktSuplPort:I

.field private socket:Ljava/net/DatagramSocket;

.field private suplFqdn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "GpsLocationProvider_ex"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider_samsung;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x1c6b

    const/16 v2, 0x12c

    const/4 v1, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->SERVER_PORT:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->socket:Ljava/net/DatagramSocket;

    .line 96
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isUDPListen:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    .line 103
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    .line 104
    const-string/jumbo v0, "wpde.nate.com"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplAddr:Ljava/lang/String;

    .line 105
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplPort:I

    .line 106
    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    .line 107
    const/16 v0, 0x1c6c

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplPort:I

    .line 110
    const/16 v0, 0x12e

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mccTLS:I

    .line 111
    const/16 v0, 0xdc

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mncTLS1:I

    .line 112
    const/16 v0, 0xdd

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mncTLS2:I

    .line 115
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    .line 117
    const-string v0, "MSBASED"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 118
    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 119
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    .line 120
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    .line 121
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    .line 122
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    .line 123
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 125
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mCurrentMobileType:I

    .line 155
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    .line 173
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseTimestamp:[J

    .line 174
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseLatitude:[D

    .line 175
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseLongtitude:[D

    .line 176
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseAltitude:[F

    .line 177
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePressure:[F

    .line 178
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseSpeed:[F

    .line 179
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoDistance:[D

    .line 180
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoSpeed:[D

    .line 181
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoStepCount:[J

    .line 184
    const-string v0, "Jio 4G"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->RJILALPHA:Ljava/lang/String;

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->prevLppMask:I

    .line 1723
    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider_samsung$3;-><init>(Lcom/android/server/location/GpsLocationProvider_samsung;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationProvider:Landroid/location/IExerciseLocationProvider;

    .line 188
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseStarted:Z

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GpsLocationProvider_samsung;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider_samsung;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isUDPListen:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/location/GpsLocationProvider_samsung;)[Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider_samsung;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/location/GpsLocationProvider_samsung;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider_samsung;
    .param p1, "x1"    # [Ljava/net/InetAddress;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider_samsung;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->suplFqdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)[Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider_samsung;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->retAddr:[Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/location/GpsLocationProvider_samsung;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider_samsung;
    .param p1, "x1"    # [Ljava/net/InetAddress;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->retAddr:[Ljava/net/InetAddress;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/location/GpsLocationProvider_samsung;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider_samsung;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_set_supl_host_ip(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider_samsung;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkUDPSuplInit()V
    .locals 3

    .prologue
    .line 1532
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "start UDP socket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider_samsung$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider_samsung$1;-><init>(Lcom/android/server/location/GpsLocationProvider_samsung;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1565
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1566
    return-void
.end method

.method private deleteSecGpsConf()V
    .locals 4

    .prologue
    .line 1287
    const-string v2, "GpsLocationProvider_ex"

    const-string/jumbo v3, "deleteSecGpsConf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/gps/secgps.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1291
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1292
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1293
    const-string v2, "GpsLocationProvider_ex"

    const-string/jumbo v3, "secgps.conf deleted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1298
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "GpsLocationProvider_ex"

    const-string v3, " could not delete secgps.conf file : /data/system/gps/secgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private extChnSelectPositionMode()I
    .locals 5

    .prologue
    .line 471
    const-string v3, "GpsLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v1, 0x0

    .line 474
    .local v1, "chnPositionMode":I
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_1

    .line 475
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 476
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->extension_CMCCxtraDownloadRequest()Z

    move-result v0

    .line 478
    .local v0, "agpsSwitchOff":Z
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    if-eqz v0, :cond_4

    .line 479
    :cond_0
    const-string v3, "GpsLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() postionMode == STANDALONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v1, 0x0

    .line 487
    .end local v0    # "agpsSwitchOff":Z
    .end local v2    # "phone":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v3, v4, :cond_2

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v3, v4, :cond_2

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_3

    .line 488
    :cond_2
    const/4 v1, 0x0

    .line 489
    const-string v3, "GpsLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode, set with STANDALONE for CU and OPEN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_3
    return v1

    .line 482
    .restart local v0    # "agpsSwitchOff":Z
    .restart local v2    # "phone":Landroid/telephony/TelephonyManager;
    :cond_4
    const-string v3, "GpsLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() postionMode == MS_BASED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private extSelectUseGooglePositionMode(I)I
    .locals 13
    .param p1, "_mPositionMode"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 446
    move v12, p1

    .line 447
    .local v12, "mPositionMode":I
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "extSelectUseGooglePositionMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v12, 0x1

    .line 449
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, " SKT GPS mode : SUPL 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    .line 461
    :goto_0
    return v12

    .line 453
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_1

    .line 454
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, " KT GPS mode : SUPL2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 457
    :cond_1
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "extSelectUseGooglePositionMode() : Google SUPL 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 459
    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const/16 v8, 0x1c6b

    move-object v5, p0

    move v10, v4

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method private getLppBitmask()I
    .locals 6

    .prologue
    .line 712
    const/4 v2, -0x1

    .line 713
    .local v2, "ret":I
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "op1":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, "op2":Ljava/lang/String;
    const-string v3, "GpsLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Op1 is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const-string v3, "GpsLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Op2 is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const-string v3, "Jio 4G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Jio 4G"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 718
    :cond_0
    const-string v3, "GpsLocationProvider_ex"

    const-string v4, "JIO 4G operator"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v2, 0x7

    .line 724
    :cond_1
    :goto_0
    return v2

    .line 720
    :cond_2
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_1

    .line 721
    const-string v3, "GpsLocationProvider_ex"

    const-string v4, "No Operator LPP Disable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSKAFEnable()Z
    .locals 3

    .prologue
    .line 402
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    return v0
.end method

.method private getSuplServerFromCSC()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 990
    const-string v8, "GpsLocationProvider_ex"

    const-string/jumbo v9, "getSuplServerFromCSC"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iput v11, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 994
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/system/gps/cscgps.conf"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 995
    .local v5, "file":Ljava/io/File;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 996
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " file doesn\'t exist : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    .end local v5    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 999
    :catch_0
    move-exception v4

    .line 1000
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not access file : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 1005
    .local v6, "mProperties_cscgps":Ljava/util/Properties;
    :try_start_1
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/system/gps/cscgps.conf"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1006
    .restart local v5    # "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1008
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v6, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1014
    if-eqz v7, :cond_2

    .line 1015
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1024
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const-string v8, "CSC_SUPL_SUPLSERVERFROMCSC"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1025
    .local v1, "SuplServerFromCSC_s":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    .line 1027
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1034
    :cond_3
    :goto_2
    iget v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 1035
    const-string v8, "CSC_SUPL_OPMODE"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 1036
    const-string v8, "CSC_SUPL_HOST"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 1038
    const-string v8, "CSC_SUPL_VER"

    const-string v9, "1"

    invoke-virtual {v6, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1039
    .local v3, "SuplType_s":Ljava/lang/String;
    const-string v8, "CSC_SUPL_PORT"

    const-string v9, "7276"

    invoke-virtual {v6, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, "SuplPort_s":Ljava/lang/String;
    const-string v8, "CSC_SUPL_SSL"

    const-string v9, "0"

    invoke-virtual {v6, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1043
    .local v2, "SuplSslMode_s":Ljava/lang/String;
    :try_start_5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    .line 1044
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    .line 1045
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_7

    .line 1053
    .end local v0    # "SuplPort_s":Ljava/lang/String;
    .end local v2    # "SuplSslMode_s":Ljava/lang/String;
    .end local v3    # "SuplType_s":Ljava/lang/String;
    :cond_4
    :goto_3
    const-string v8, "GpsLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getProperty] mSuplServerFromCSC : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1016
    .end local v1    # "SuplServerFromCSC_s":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .line 1017
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 1020
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    .line 1021
    .local v4, "e":Ljava/io/IOException;
    const-string v8, "GpsLocationProvider_ex"

    const-string/jumbo v9, "could not open file /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1009
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    .line 1010
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not load file : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1014
    if-eqz v7, :cond_0

    .line 1015
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 1016
    :catch_4
    move-exception v4

    .line 1017
    :try_start_9
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 1013
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 1014
    if-eqz v7, :cond_5

    .line 1015
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 1018
    :cond_5
    :goto_4
    :try_start_b
    throw v8

    .line 1016
    :catch_5
    move-exception v4

    .line 1017
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v9, "GpsLocationProvider_ex"

    const-string v10, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_4

    .line 1028
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "SuplServerFromCSC_s":Ljava/lang/String;
    :catch_6
    move-exception v4

    .line 1029
    .local v4, "e":Ljava/lang/NumberFormatException;
    iput v11, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 1030
    const-string v8, "GpsLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " [NumberFormatException] mSuplServerFromCSC :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1047
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "SuplPort_s":Ljava/lang/String;
    .restart local v2    # "SuplSslMode_s":Ljava/lang/String;
    .restart local v3    # "SuplType_s":Ljava/lang/String;
    :catch_7
    move-exception v4

    .line 1048
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    iput v11, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 1049
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, "[NumberFormatException] failed to convert supl information"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public static getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;
    .locals 3

    .prologue
    .line 306
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 308
    :cond_0
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_1
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    .line 312
    .local v1, "vendor":Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;
    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 313
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    .line 353
    :cond_2
    :goto_0
    return-object v1

    .line 314
    :cond_3
    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 315
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 316
    :cond_4
    const-string v2, "DCM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 317
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 318
    :cond_5
    const-string v2, "KDI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 319
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 320
    :cond_6
    const-string v2, "TLS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 321
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_TLS:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 322
    :cond_7
    const-string v2, "BMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 323
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_BMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 324
    :cond_8
    const-string v2, "RWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 325
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_RWC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 326
    :cond_9
    const-string v2, "XAC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 327
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 328
    :cond_a
    const-string v2, "SKT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "SKC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "SKO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 329
    :cond_b
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 330
    :cond_c
    const-string v2, "LGT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "LUC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "LUO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 331
    :cond_d
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 332
    :cond_e
    const-string v2, "KTT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "KTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "KTO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 333
    :cond_f
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 334
    :cond_10
    const-string v2, "CHM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 335
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 336
    :cond_11
    const-string v2, "CTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 337
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 338
    :cond_12
    const-string v2, "CHU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 339
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 340
    :cond_13
    const-string v2, "CHN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 345
    const-string v2, "CHC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 346
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 347
    :cond_14
    const-string v2, "MNX"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 348
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 349
    :cond_15
    const-string v2, "IUS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 350
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 351
    :cond_16
    const-string v2, "SWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 352
    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->SUI_SWC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    goto/16 :goto_0
.end method

.method public static isUSAMarket()Z
    .locals 5

    .prologue
    .line 357
    const/4 v1, 0x0

    .line 358
    .local v1, "rc":Z
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 360
    :cond_0
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    :cond_1
    const-string v2, "GpsLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUSAMarket : code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 365
    const/4 v1, 0x1

    .line 380
    :goto_0
    const-string v2, "GpsLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUSAMarket rc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return v1

    .line 366
    :cond_2
    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 367
    const/4 v1, 0x1

    goto :goto_0

    .line 368
    :cond_3
    const-string v2, "TLS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 369
    const/4 v1, 0x1

    goto :goto_0

    .line 370
    :cond_4
    const-string v2, "BMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 371
    const/4 v1, 0x1

    goto :goto_0

    .line 372
    :cond_5
    const-string v2, "RWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 373
    const/4 v1, 0x1

    goto :goto_0

    .line 374
    :cond_6
    const-string v2, "XAR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 375
    const/4 v1, 0x1

    goto :goto_0

    .line 376
    :cond_7
    const-string v2, "XAC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 377
    const/4 v1, 0x1

    goto :goto_0

    .line 379
    :cond_8
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeAutoSuplUrl()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 244
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    .local v3, "szUrl":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 246
    .local v4, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "SimOperator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 249
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 250
    .local v1, "mcc":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 251
    .local v2, "mnc":I
    const-string/jumbo v5, "h-slp.mnc"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".mcc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".pub.3gppnetwork.org"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "makeAutoSuplUrl :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 256
    .end local v1    # "mcc":I
    .end local v2    # "mnc":I
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private native native_agps_ni_message_for_emergency_supl([BI)V
.end method

.method private native native_agps_set_supl_host_ip(Ljava/lang/String;)V
.end method

.method private native native_agps_xtra_set(I)V
.end method

.method private native native_cleanup_extention()V
.end method

.method private native native_exercise_fulsh()I
.end method

.method private native native_exercise_start()I
.end method

.method private native native_exercise_stop()I
.end method

.method private native native_gnss_control(I)V
.end method

.method private native native_init_extention()Z
.end method

.method private native native_inject_sensor_data(DD)V
.end method

.method private native native_readExerciseData([J[D[D[F[F[F[D[D[JI)I
.end method

.method private native native_set_agps_server_extension(ILjava/lang/String;IIII)V
.end method

.method private native native_set_exercise_mode(II)I
.end method

.method private native native_set_lcd_mode(I)I
.end method

.method private native native_set_lpp_support(I)V
.end method

.method private setCscParameters(Landroid/os/Bundle;Z)V
    .locals 16
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "mEnabled"    # Z

    .prologue
    .line 552
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "setCscParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    if-nez p1, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    const/4 v13, 0x0

    .line 559
    .local v13, "isDeleted":Z
    :try_start_0
    new-instance v12, Ljava/io/File;

    const-string v1, "/data/system/gps/cscgps.conf"

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    .local v12, "file":Ljava/io/File;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 561
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 562
    const/4 v13, 0x1

    .line 564
    :cond_2
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isDeleted :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 570
    .end local v12    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 571
    const-string v1, "MSBASED"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 572
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    .line 573
    const-string/jumbo v1, "supl.google.com"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 574
    const/16 v1, 0x1c6b

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    .line 575
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    .line 576
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    .line 577
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Default SUPL CSC] mEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSuplAddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSuplType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSuplPort : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSuplSslMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    if-eqz p2, :cond_4

    .line 579
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 583
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 584
    const-string v8, "TRUE"

    .line 585
    .local v8, "CscParamIsEmpty":Ljava/lang/String;
    const-string/jumbo v1, "is_empty"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 586
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CscParamIsEmpty : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string v1, "TRUE"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 592
    const-string/jumbo v1, "operation_mode"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 593
    const-string/jumbo v1, "hslp_addr"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 594
    const-string/jumbo v1, "hslp_port"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    .line 595
    const-string/jumbo v1, "ssl"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    .line 596
    const-string/jumbo v1, "ssl_cert"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    .line 597
    const-string/jumbo v1, "supl_ver"

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 599
    .local v9, "SuplVer":I
    packed-switch v9, :pswitch_data_0

    .line 605
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    .line 608
    :goto_2
    new-instance v14, Ljava/util/Properties;

    invoke-direct {v14}, Ljava/util/Properties;-><init>()V

    .line 609
    .local v14, "mProperties_cscgps":Ljava/util/Properties;
    const-string v1, "MSBASED"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 610
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SUPL CSC] mSuplAddress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSuplType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSuplPort "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSuplSslMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    if-eqz p2, :cond_5

    .line 613
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 615
    :cond_5
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 617
    const-string v1, "CSC_SUPL_OPMODE"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 618
    const-string v1, "CSC_SUPL_HOST"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 619
    const-string v1, "CSC_SUPL_VER"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 620
    const-string v1, "CSC_SUPL_PORT"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 621
    const-string v1, "CSC_SUPL_SSL"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 624
    :cond_6
    const-string v1, "CSC_SUPL_SUPLSERVERFROMCSC"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 627
    :try_start_1
    new-instance v10, Ljava/io/File;

    const-string v1, "/data/system/gps"

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 628
    .local v10, "dir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    .line 629
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 631
    :cond_7
    new-instance v12, Ljava/io/File;

    const-string v1, "/data/system/gps/cscgps.conf"

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    .restart local v12    # "file":Ljava/io/File;
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    .line 633
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 635
    :cond_8
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 637
    .local v15, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    const-string v1, "Saved CSC GPS Information"

    invoke-virtual {v14, v15, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 638
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, "Saved: /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 643
    if-eqz v15, :cond_0

    .line 644
    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 645
    :catch_0
    move-exception v11

    .line 646
    .local v11, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 649
    .end local v10    # "dir":Ljava/io/File;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "file":Ljava/io/File;
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v11

    .line 650
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, " could not create file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 566
    .end local v8    # "CscParamIsEmpty":Ljava/lang/String;
    .end local v9    # "SuplVer":I
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "mProperties_cscgps":Ljava/util/Properties;
    :catch_2
    move-exception v11

    .line 567
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, " could not delete cscgps.conf file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 600
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v8    # "CscParamIsEmpty":Ljava/lang/String;
    .restart local v9    # "SuplVer":I
    :pswitch_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    goto/16 :goto_2

    .line 602
    :pswitch_1
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    goto/16 :goto_2

    .line 639
    .restart local v10    # "dir":Ljava/io/File;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v14    # "mProperties_cscgps":Ljava/util/Properties;
    .restart local v15    # "stream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v11

    .line 640
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, " could not store file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 643
    if-eqz v15, :cond_0

    .line 644
    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 645
    :catch_4
    move-exception v11

    .line 646
    :try_start_7
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 642
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 643
    if-eqz v15, :cond_9

    .line 644
    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 647
    :cond_9
    :goto_3
    :try_start_9
    throw v1

    .line 645
    :catch_5
    move-exception v11

    .line 646
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v2, "GpsLocationProvider_ex"

    const-string v3, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDcmSuplIot(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 431
    if-eqz p1, :cond_0

    .line 432
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Docomo SUPL IOT test = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server = dcm-supl.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v1, 0x4

    const-string/jumbo v2, "dcm-supl.com"

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Docomo SUPL IOT test = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLppSupport(ZI)V
    .locals 4
    .param p1, "mEnabled"    # Z
    .param p2, "bitmask"    # I

    .prologue
    .line 734
    const-string v1, "GpsLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLppSupport("

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

    .line 741
    move v0, p1

    .line 742
    .local v0, "enabled":Z
    if-nez p1, :cond_0

    .line 743
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_init_extention()Z

    move-result v0

    .line 744
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "native_init_extention "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_lpp_support(I)V

    .line 748
    :cond_1
    if-nez p1, :cond_2

    .line 749
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_cleanup_extention()V

    .line 750
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "native_cleanup "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_2
    return-void
.end method

.method private setSKAFEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    .line 392
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void
.end method

.method private setSecGpsConf(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1238
    if-nez p1, :cond_1

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1241
    .local v5, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 1243
    .local v4, "keyArray":[Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1244
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v4

    if-ge v3, v7, :cond_3

    .line 1245
    aget-object v7, v4, v3

    if-eqz v7, :cond_2

    .line 1246
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    aget-object v8, v4, v3

    aget-object v9, v4, v3

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1244
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1251
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/system/gps"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1252
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1253
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1255
    :cond_4
    new-instance v2, Ljava/io/File;

    const-string v7, "/data/system/gps/secgps.conf"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1256
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1257
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1259
    :cond_5
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1261
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v8, "SECGPS Configuration"

    invoke-virtual {v7, v6, v8}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1262
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, "Saved: /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1267
    if-eqz v6, :cond_0

    .line 1268
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1269
    :catch_0
    move-exception v1

    .line 1270
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1273
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 1274
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, " could not create file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1263
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 1264
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, " could not store file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1267
    if-eqz v6, :cond_0

    .line 1268
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 1269
    :catch_3
    move-exception v1

    .line 1270
    :try_start_6
    const-string v7, "GpsLocationProvider_ex"

    const-string v8, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 1266
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 1267
    if-eqz v6, :cond_6

    .line 1268
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1271
    :cond_6
    :goto_2
    :try_start_8
    throw v7

    .line 1269
    :catch_4
    move-exception v1

    .line 1270
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "GpsLocationProvider_ex"

    const-string v9, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2
.end method

.method private setServer(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 210
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "setServer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v2, ""

    .line 213
    .local v2, "mServerAddr":Ljava/lang/String;
    const-string v3, ""

    .line 215
    .local v3, "mServerPort":Ljava/lang/String;
    const-string v5, "ServerAddr"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    const-string v5, "ServerPort"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setServer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string v6, "SUPL_HOST"

    invoke-virtual {v5, v6, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string v6, "SUPL_PORT"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v5, "/etc/gps.conf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string v6, "Generated by GpsLocationProvider."

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 231
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 226
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 228
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "Could not open GPS configuration file in save : /etc/gps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSktSuplVer()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 413
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSktSuplVer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "AGPS_TYPE_SUPL_2_0_1_AGNSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->sktSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 422
    return-void
.end method

.method private setSuplByNw()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 263
    const/4 v3, 0x0

    .line 264
    .local v3, "suplServerAutoConfig":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 265
    .local v4, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "simOperator":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 267
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 268
    .local v0, "mcc":I
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 269
    .local v1, "mnc":I
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v5

    sget-object v6, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mccTLS:I

    if-ne v0, v5, :cond_1

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mncTLS1:I

    if-eq v1, v5, :cond_0

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mncTLS2:I

    if-ne v1, v5, :cond_1

    .line 271
    :cond_0
    const-string/jumbo v3, "supl.telusmobility.com"

    .line 272
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSuplByNw :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v0    # "mcc":I
    .end local v1    # "mnc":I
    :cond_1
    :goto_0
    return-object v3

    .line 276
    :cond_2
    const-string/jumbo v3, "supl.google.com"

    .line 277
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSuplByNw :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public extension_CMCCxtraDownloadRequest()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 502
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v4, v5, :cond_0

    move v2, v3

    .line 541
    :goto_0
    return v2

    .line 505
    :cond_0
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "agps_function_switch"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 507
    .local v1, "isAgpsSwitchMode":I
    const/4 v2, 0x0

    .line 508
    .local v2, "result":Z
    const-string v4, "GpsLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "extension_CMCCxtraDownloadRequest, isAgpsSwitchMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    packed-switch v1, :pswitch_data_0

    .line 531
    const/4 v2, 0x1

    .line 532
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest, AGPS setting : AGPS OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :goto_1
    if-ne v2, v7, :cond_3

    .line 536
    invoke-direct {p0, v3}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    goto :goto_0

    .line 512
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_2

    .line 513
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 514
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 515
    const/4 v2, 0x1

    .line 516
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 518
    :cond_1
    const/4 v2, 0x0

    .line 519
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 522
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_2
    const/4 v2, 0x1

    .line 523
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, PS error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 527
    :pswitch_1
    const/4 v2, 0x0

    .line 528
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest, AGPS setting : All Network"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 538
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_xtra_set(I)V

    goto :goto_0

    .line 510
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extension_agps_ni_message([BI)V
    .locals 0
    .param p1, "supl_init"    # [B
    .param p2, "length"    # I

    .prologue
    .line 1658
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_ni_message_for_emergency_supl([BI)V

    .line 1659
    return-void
.end method

.method public extension_checkSmsSuplInit(Z)I
    .locals 4
    .param p1, "mEnabled"    # Z

    .prologue
    const/4 v3, 0x1

    .line 836
    const/4 v0, 0x0

    .line 837
    .local v0, "result":I
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_1

    .line 839
    :cond_0
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, "checkSmsSuplInit : Sms Message for SUPL Init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_1
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_2

    .line 842
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    .line 844
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, "Change SLP address for SUPL_INIT in SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_2
    if-nez p1, :cond_4

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_4

    .line 848
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    if-nez v1, :cond_4

    .line 850
    or-int/lit8 v0, v0, 0x1

    .line 851
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    .line 854
    :cond_4
    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_7

    .line 856
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    if-nez v1, :cond_7

    .line 858
    or-int/lit8 v0, v0, 0x2

    .line 859
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    .line 863
    :cond_7
    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_8

    or-int/lit8 v0, v0, 0x4

    .line 865
    :cond_8
    return v0
.end method

.method public extension_checkWapPushMsg(Z)Z
    .locals 3
    .param p1, "mEnabled"    # Z

    .prologue
    .line 761
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "extension_checkWapPushMsg(), mEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_1

    .line 763
    :cond_0
    const/4 v0, 0x1

    .line 765
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public extension_checkWapSuplInit(ZLandroid/net/ConnectivityManager;)I
    .locals 13
    .param p1, "mEnabled"    # Z
    .param p2, "mConnMgr"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 875
    const/4 v10, 0x0

    .line 876
    .local v10, "result":I
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_3

    .line 878
    :cond_0
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "checkWapSuplInit : WapPush Message for SUPL Init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 881
    .local v8, "isAgpsSwitchMode":I
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkWapSuplInit NI: isAgpsSwitchMode=AGPS_FUNCTION_SWITCH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "++checkWapSuplInit : New NI notification LCD on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 885
    .local v9, "pm":Landroid/os/PowerManager;
    const v0, 0x1000001a

    const-string v1, "New message notification LCD on"

    invoke-virtual {v9, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    .line 887
    .local v12, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 888
    const-wide/16 v0, 0x1388

    invoke-virtual {v12, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 889
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "--checkWapSuplInit : New NI notification LCD on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    .line 892
    if-eqz p2, :cond_1

    .line 893
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 894
    .local v7, "info":Landroid/net/NetworkInfo;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 895
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "checkWapSuplInit NI : agps on only for hom network info.isRoaming() == true "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 940
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .end local v8    # "isAgpsSwitchMode":I
    .end local v9    # "pm":Landroid/os/PowerManager;
    .end local v10    # "result":I
    .end local v12    # "wl":Landroid/os/PowerManager$WakeLock;
    .local v11, "result":I
    :goto_0
    return v11

    .line 899
    .end local v11    # "result":I
    .restart local v8    # "isAgpsSwitchMode":I
    .restart local v9    # "pm":Landroid/os/PowerManager;
    .restart local v10    # "result":I
    .restart local v12    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_1
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "checkWapSuplInit NI :: agps on only for hom network. PS error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 900
    .end local v10    # "result":I
    .restart local v11    # "result":I
    goto :goto_0

    .line 902
    .end local v11    # "result":I
    .restart local v10    # "result":I
    :cond_2
    const/4 v0, 0x2

    if-ne v8, v0, :cond_c

    .line 903
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "checkWapSuplInit NI :: agps on for all network. launch NI session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    .end local v8    # "isAgpsSwitchMode":I
    .end local v9    # "pm":Landroid/os/PowerManager;
    .end local v12    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_3
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_4

    .line 912
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    .line 913
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "Change SLP address for SUPL_INIT in WAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_4
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_5

    .line 917
    const/4 v1, 0x3

    const-string v2, "221.148.242.107"

    const/16 v3, 0x1c6b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 918
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "Change SLP address for SUPL_INIT in WAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_5
    if-nez p1, :cond_7

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_7

    .line 923
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    if-nez v0, :cond_7

    .line 925
    or-int/lit8 v10, v10, 0x1

    .line 926
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    .line 929
    :cond_7
    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_9

    :cond_8
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_a

    .line 931
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    if-nez v0, :cond_a

    .line 933
    or-int/lit8 v10, v10, 0x2

    .line 934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    .line 938
    :cond_a
    if-nez p1, :cond_b

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_b

    or-int/lit8 v10, v10, 0x4

    :cond_b
    move v11, v10

    .line 940
    .end local v10    # "result":I
    .restart local v11    # "result":I
    goto/16 :goto_0

    .line 905
    .end local v11    # "result":I
    .restart local v8    # "isAgpsSwitchMode":I
    .restart local v9    # "pm":Landroid/os/PowerManager;
    .restart local v10    # "result":I
    .restart local v12    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_c
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkWapSuplInit NI : //agps off isAgpsSwitchMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 906
    .end local v10    # "result":I
    .restart local v11    # "result":I
    goto/16 :goto_0
.end method

.method public extension_listenForBroadcasts(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .locals 4
    .param p1, "mBroadcastReciever"    # Landroid/content/BroadcastReceiver;
    .param p2, "mHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 776
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_1

    .line 777
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 778
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 779
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 780
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 781
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 782
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 786
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 787
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 788
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 789
    return-void
.end method

.method public extension_mBroadcastReciever(Landroid/content/Intent;Z)Landroid/os/Bundle;
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "mEnabled"    # Z

    .prologue
    .line 662
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 664
    .local v5, "result":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 666
    .local v6, "result_mask":I
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v8, v9, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v8, v9, :cond_1

    .line 667
    :cond_0
    const-string v8, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 668
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider_samsung;->setServer(Landroid/content/Intent;)V

    .line 678
    :cond_1
    :goto_0
    const-string v8, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 679
    or-int/lit8 v6, v6, 0x1

    .line 680
    const-string/jumbo v8, "packet_data"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "packet_data"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 681
    const-string/jumbo v8, "packet_length"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "packet_length"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 683
    :cond_2
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez p2, :cond_3

    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseStarted:Z

    if-eqz v8, :cond_4

    .line 684
    :cond_3
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_lcd_mode(I)I

    .line 686
    :cond_4
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez p2, :cond_5

    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseStarted:Z

    if-eqz v8, :cond_6

    .line 687
    :cond_5
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_lcd_mode(I)I

    .line 689
    :cond_6
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 690
    const-string/jumbo v8, "ss"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 691
    .local v7, "simState":Ljava/lang/String;
    const-string v8, "GpsLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIM_STATE_CHANGED received : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v8, "LOADED"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 693
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getLppBitmask()I

    move-result v3

    .line 694
    .local v3, "mask":I
    iget v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->prevLppMask:I

    if-eq v3, v8, :cond_7

    .line 695
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->prevLppMask:I

    .line 696
    invoke-direct {p0, p2, v3}, Lcom/android/server/location/GpsLocationProvider_samsung;->setLppSupport(ZI)V

    .line 700
    .end local v3    # "mask":I
    .end local v7    # "simState":Ljava/lang/String;
    :cond_7
    const-string/jumbo v8, "result_mask"

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 701
    return-object v5

    .line 669
    :cond_8
    const-string v8, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 670
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string v9, "SUPL_HOST"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "mSuplServerHost":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string v9, "SUPL_PORT"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 672
    .local v4, "portString":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.AGPS_PROFILE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    .local v1, "getAgpsProfile":Landroid/content/Intent;
    const-string v8, "ServerAddr"

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    const-string v8, "ServerPort"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public extension_printSvStatus([I[I[FI)V
    .locals 11
    .param p1, "mSvs"    # [I
    .param p2, "mSvMasks"    # [I
    .param p3, "mSnrs"    # [F
    .param p4, "svCount"    # I

    .prologue
    const/4 v10, 0x5

    .line 798
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v3, "inViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 801
    .local v1, "inUsedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p4, :cond_6

    .line 802
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 803
    aget v7, p3, v0

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    const/4 v7, 0x2

    aget v7, p2, v7

    const/4 v8, 0x1

    aget v9, p1, v0

    add-int/lit8 v9, v9, -0x1

    shl-int/2addr v8, v9

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    aget v7, p3, v0

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 806
    :cond_1
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 807
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 809
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 810
    .local v6, "sbInView":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 812
    .local v5, "sbInUsed":Ljava/lang/StringBuffer;
    const/4 v4, 0x5

    .line 813
    .local v4, "inViewSize":I
    const/4 v2, 0x5

    .line 814
    .local v2, "inUsedSize":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v10, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 815
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v10, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 817
    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    .line 818
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 817
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 819
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_5

    .line 820
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 819
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 822
    :cond_5
    const-string v7, "GpsLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SV Count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / TOP5(v) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / TOP5(u) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    .end local v0    # "i":I
    .end local v2    # "inUsedSize":I
    .end local v4    # "inViewSize":I
    .end local v5    # "sbInUsed":Ljava/lang/StringBuffer;
    .end local v6    # "sbInView":Ljava/lang/StringBuffer;
    :cond_6
    return-void
.end method

.method public extension_reloadMakeAutoSuplUrl(Z)V
    .locals 7
    .param p1, "mNetworkAvailable"    # Z

    .prologue
    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 969
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_1

    .line 970
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 971
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    .line 972
    .local v2, "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 973
    const/4 v1, 0x4

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 974
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    .line 986
    .end local v2    # "suplServerAutoConfig":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 977
    :cond_1
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_0

    .line 978
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 979
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSuplByNw()Ljava/lang/String;

    move-result-object v2

    .line 980
    .restart local v2    # "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 981
    const/4 v1, 0x3

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 982
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    goto :goto_0
.end method

.method public extension_reportAGpsStatus()V
    .locals 3

    .prologue
    .line 1645
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;

    .line 1647
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1651
    :goto_0
    return-void

    .line 1648
    :catch_0
    move-exception v0

    .line 1649
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, "IllegalArgumentException occured"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceAddStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1437
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1439
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1442
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceAddStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1447
    :cond_0
    :goto_0
    return-void

    .line 1443
    :catch_0
    move-exception v0

    .line 1444
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofencePauseStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1475
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1477
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1480
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofencePauseStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    :cond_0
    :goto_0
    return-void

    .line 1481
    :catch_0
    move-exception v0

    .line 1482
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceRemoveStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1456
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1458
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1461
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceRemoveStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    :cond_0
    :goto_0
    return-void

    .line 1462
    :catch_0
    move-exception v0

    .line 1463
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceResumeStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1494
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1496
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1499
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceResumeStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    :cond_0
    :goto_0
    return-void

    .line 1500
    :catch_0
    move-exception v0

    .line 1501
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceStatus(IIDDDFFFJ)V
    .locals 15
    .param p1, "status"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J

    .prologue
    .line 1418
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 1420
    .local v1, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    .line 1423
    :try_start_0
    invoke-interface/range {v1 .. v14}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceStatus(IIDDDFFFJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1428
    :cond_0
    :goto_0
    return-void

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceTransition(IIDDDFFFJIJ)V
    .locals 21
    .param p1, "geofenceId"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J
    .param p14, "transition"    # I
    .param p15, "transitionTimestamp"    # J

    .prologue
    .line 1396
    const-string/jumbo v4, "sec_location"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v3

    .line 1398
    .local v3, "mLocService":Lcom/samsung/location/ISLocationManager;
    if-eqz v3, :cond_0

    const/16 v4, 0x2710

    move/from16 v0, p1

    if-le v0, v4, :cond_0

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move/from16 v17, p14

    move-wide/from16 v18, p15

    .line 1401
    :try_start_0
    invoke-interface/range {v3 .. v19}, Lcom/samsung/location/ISLocationManager;->reportGpsGeofenceTransition(IIDDDFFFJIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1407
    :cond_0
    :goto_0
    return-void

    .line 1403
    :catch_0
    move-exception v2

    .line 1404
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "GpsLocationProvider_ex"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;Z)Z
    .locals 10
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "mEnabled"    # Z

    .prologue
    const/4 v7, -0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1132
    const/4 v4, 0x0

    .line 1133
    .local v4, "result":Z
    const-string/jumbo v5, "set_csc_parameters"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1134
    invoke-direct {p0, p2, p3}, Lcom/android/server/location/GpsLocationProvider_samsung;->setCscParameters(Landroid/os/Bundle;Z)V

    .line 1135
    const/4 v4, 0x1

    :cond_0
    :goto_0
    move v5, v4

    .line 1226
    :goto_1
    return v5

    .line 1136
    :cond_1
    const-string v5, "com.skt.intent.action.AGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1137
    const-string/jumbo v5, "opType"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1138
    .local v3, "opType":Ljava/lang/String;
    const-string v5, "cmdType"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, "cmdType":Ljava/lang/String;
    const-string/jumbo v5, "on"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1141
    const-string/jumbo v5, "msAssisted"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "msBased"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1142
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1150
    :cond_3
    :goto_2
    const/4 v4, 0x1

    .line 1151
    goto :goto_0

    .line 1145
    :cond_4
    const-string/jumbo v5, "off"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1146
    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1147
    const-string/jumbo v5, "sys.sktgps"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1151
    .end local v0    # "cmdType":Ljava/lang/String;
    .end local v3    # "opType":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "setOllehServer"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1152
    const-string/jumbo v5, "host"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1153
    .local v2, "hostURL":Ljava/lang/String;
    const-string/jumbo v5, "port"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1154
    .local v1, "hostPort":I
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    .line 1155
    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    .line 1156
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    .line 1157
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "host :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " port ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mKTSuplServerPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/4 v4, 0x1

    .line 1159
    goto/16 :goto_0

    .end local v1    # "hostPort":I
    .end local v2    # "hostURL":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "setNativeServer"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1160
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "setNativeServer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    .line 1162
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1163
    :cond_7
    const-string v5, "activateGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1164
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "activateGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "Current user id : -2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "gps"

    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 1168
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1169
    :cond_8
    const-string/jumbo v5, "deactivateGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1170
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "deactivateGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "gps"

    invoke-static {v5, v6, v9, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 1173
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1174
    :cond_9
    const-string v5, "activateNLP"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1175
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "activateNLP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "network"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1177
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1178
    :cond_a
    const-string/jumbo v5, "deactivateNLP"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1179
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "deactivateNLP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "network"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1181
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1182
    :cond_b
    const-string v5, "activateAGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1183
    const-string v5, "GpsLocationProvider_ex"

    const-string v6, "activateAGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "assisted_gps_enabled"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1185
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1186
    :cond_c
    const-string/jumbo v5, "deactivateAGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1187
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "deactivateAGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "assisted_gps_enabled"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1189
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1190
    :cond_d
    const-string/jumbo v5, "setMode"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1191
    const-string/jumbo v5, "mode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    .line 1192
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMode ktPositionMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1194
    :cond_e
    const-string/jumbo v5, "getMode"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1195
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMode ktPositionMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const-string/jumbo v5, "mode"

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1197
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1198
    :cond_f
    const-string/jumbo v5, "set_use_udp"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1199
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_use_udp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "use_udp"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const-string/jumbo v5, "use_udp"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_11

    .line 1201
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isUDPListen:Z

    if-nez v5, :cond_10

    .line 1202
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isUDPListen:Z

    .line 1203
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->checkUDPSuplInit()V

    .line 1208
    :cond_10
    :goto_3
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1206
    :cond_11
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isUDPListen:Z

    goto :goto_3

    .line 1209
    :cond_12
    const-string/jumbo v5, "set_dcm_iot"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1210
    const-string v5, "GpsLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_dcm_iot : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "dcm_iot"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const-string/jumbo v5, "dcm_iot"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->setDcmSuplIot(Z)V

    .line 1212
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1213
    :cond_13
    const-string/jumbo v5, "request_running"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1214
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mStarted:Z

    goto/16 :goto_1

    .line 1215
    :cond_14
    const-string/jumbo v5, "set_lpp_support"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1216
    const-string/jumbo v5, "set_lpp"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, p3, v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->setLppSupport(ZI)V

    goto/16 :goto_0

    .line 1217
    :cond_15
    const-string/jumbo v5, "setSecGpsConf"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1218
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "setSecGpsConf"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSecGpsConf(Landroid/os/Bundle;)V

    .line 1220
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1221
    :cond_16
    const-string/jumbo v5, "deleteSecGpsConf"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1222
    const-string v5, "GpsLocationProvider_ex"

    const-string/jumbo v6, "deleteSecGpsConf"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->deleteSecGpsConf()V

    .line 1224
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public extension_sendGpsTime(JJ)V
    .locals 0
    .param p1, "mLastFixTime"    # J
    .param p3, "timestamp"    # J

    .prologue
    .line 1385
    return-void
.end method

.method public extension_setStartNavigatingModes(ILandroid/net/ConnectivityManager;Z)I
    .locals 4
    .param p1, "mPositionMode"    # I
    .param p2, "mConnMgr"    # Landroid/net/ConnectivityManager;
    .param p3, "singleShot"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1308
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_1

    .line 1309
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider_samsung;->extSelectUseGooglePositionMode(I)I

    move-result p1

    .line 1313
    :cond_1
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_3

    .line 1314
    :cond_2
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->extChnSelectPositionMode()I

    move-result p1

    .line 1315
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHN startNavigating mPositionMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getWifiOnlyModel()Z

    move-result v0

    if-ne v0, v3, :cond_4

    .line 1319
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "mPositionMode set to GPS_POSITION_MODE_STANDALONE because of WiFi only model."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    const/4 p1, 0x0

    .line 1323
    :cond_4
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->isUSAMarket()Z

    move-result v0

    if-ne v0, v3, :cond_5

    .line 1324
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_gnss_control(I)V

    .line 1328
    :cond_5
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1329
    const-string/jumbo v0, "sys.sktgps"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    :cond_6
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_8

    .line 1334
    :cond_7
    if-eqz p3, :cond_8

    .line 1335
    const/4 p1, 0x2

    .line 1336
    const-string v0, "GpsLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startNavigating extension_setStartNavigatingModes For JAPAN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_8
    return p1
.end method

.method public extension_set_supl_server()V
    .locals 13

    .prologue
    .line 1063
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSuplServerFromCSC()V

    .line 1065
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1066
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplType:I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslMode:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplSslType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    sget-object v0, Lcom/android/server/location/GpsLocationProvider_samsung$4;->$SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1119
    const/4 v7, 0x3

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1070
    :pswitch_0
    const/4 v1, 0x3

    const-string/jumbo v2, "lbs.geo.t-mobile.com"

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1073
    :pswitch_1
    const/4 v2, 0x0

    .line 1074
    .local v2, "suplServerAutoConfig":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    .line 1075
    if-eqz v2, :cond_0

    .line 1076
    const/4 v1, 0x4

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1083
    .end local v2    # "suplServerAutoConfig":Ljava/lang/String;
    :pswitch_2
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1087
    :pswitch_3
    const/4 v4, 0x1

    const-string v5, "182.248.165.210"

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1090
    :pswitch_4
    const/4 v4, 0x3

    const-string/jumbo v5, "supl.telusmobility.com"

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1094
    :pswitch_5
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1097
    :pswitch_6
    const/4 v5, 0x0

    .line 1098
    .local v5, "suplServerNwConfig":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSuplByNw()Ljava/lang/String;

    move-result-object v5

    .line 1099
    if-eqz v5, :cond_2

    .line 1100
    const/4 v4, 0x3

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1103
    :cond_2
    const/4 v7, 0x3

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mSuplPort:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1107
    .end local v5    # "suplServerNwConfig":Ljava/lang/String;
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSktSuplVer()V

    goto/16 :goto_0

    .line 1111
    :pswitch_8
    const/4 v7, 0x1

    const-string v8, "221.176.0.55"

    const/16 v9, 0x1c6b

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1115
    :pswitch_9
    const/4 v7, 0x3

    const-string/jumbo v8, "supl.iusacell.com"

    const/16 v9, 0x1c6b

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1068
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public extension_set_xtra_downloaded_time()V
    .locals 5

    .prologue
    .line 950
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v4, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v1, v4, :cond_0

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung;->getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v1, v4, :cond_1

    .line 953
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 954
    .local v2, "timestamp":J
    const-string/jumbo v1, "persist.sys.xtra_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.angryGps.XtraSettings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 956
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 958
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "timestamp":J
    :cond_1
    return-void
.end method

.method public extension_stopNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1350
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1352
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "stopNavigating : isSKAF changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const-string/jumbo v0, "sys.sktgps"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_1

    .line 1356
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mIsKtGps:Z

    .line 1357
    const-string v0, "GpsLocationProvider_ex"

    const-string/jumbo v1, "mIsKtGps is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_1
    return-void
.end method

.method public flushExerciseLocation()V
    .locals 0

    .prologue
    .line 1837
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_exercise_fulsh()I

    .line 1838
    return-void
.end method

.method public getExerciseLocationProvider()Landroid/location/IExerciseLocationProvider;
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationProvider:Landroid/location/IExerciseLocationProvider;

    return-object v0
.end method

.method public getInitCalledByNI()Z
    .locals 1

    .prologue
    .line 1522
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->isNativeInitCalled:Z

    return v0
.end method

.method public getWifiOnlyModel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1513
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public init_GpsLocationPrivider_samsung(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "mProperties"    # Ljava/util/Properties;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    .line 194
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    .line 195
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 196
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public provideSuplFqdn(Ljava/lang/String;)V
    .locals 5
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->suplFqdn:Ljava/lang/String;

    .line 1576
    const-string v2, "GpsLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "provideSuplFqdn :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->suplFqdn:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->suplFqdn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1579
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1580
    .local v0, "builder":Landroid/net/NetworkRequest$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1581
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 1582
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    const-string v2, "GpsLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "networkRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    new-instance v2, Lcom/android/server/location/GpsLocationProvider_samsung$2;

    invoke-direct {v2, p0}, Lcom/android/server/location/GpsLocationProvider_samsung$2;-><init>(Lcom/android/server/location/GpsLocationProvider_samsung;)V

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1639
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v1, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1642
    .end local v0    # "builder":Landroid/net/NetworkRequest$Builder;
    .end local v1    # "networkRequest":Landroid/net/NetworkRequest;
    :cond_0
    return-void
.end method

.method public removeExerciseLocation()V
    .locals 1

    .prologue
    .line 1690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseStarted:Z

    .line 1691
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_exercise_stop()I

    .line 1692
    return-void
.end method

.method public reportExerciseData(I)V
    .locals 17
    .param p1, "numOfBatch"    # I

    .prologue
    .line 1782
    const-string v1, "GpsLocationProvider_ex"

    const-string/jumbo v2, "reportExerciseData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseTimestamp:[J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseLatitude:[D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseLongtitude:[D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseAltitude:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePressure:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseSpeed:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoSpeed:[D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoDistance:[D

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoStepCount:[J

    move-object/from16 v1, p0

    move/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_readExerciseData([J[D[D[F[F[F[D[D[JI)I

    .line 1787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1788
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1789
    .local v15, "size":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v15, :cond_0

    .line 1790
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1792
    .local v14, "listener":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :try_start_1
    iget-object v1, v14, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;->mListener:Landroid/location/IExerciseLocationListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseTimestamp:[J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseLatitude:[D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseLongtitude:[D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseAltitude:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePressure:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exerciseSpeed:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoDistance:[D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoSpeed:[D

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->exercisePedoStepCount:[J

    move/from16 v11, p1

    invoke-interface/range {v1 .. v11}, Landroid/location/IExerciseLocationListener;->onLocationChanged([J[D[D[F[F[F[D[D[JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1789
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1795
    :catch_0
    move-exception v12

    .line 1796
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "GpsLocationProvider_ex"

    const-string v2, "RemoteException in requestExerciseLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1799
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 1802
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v14    # "listener":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :cond_0
    monitor-exit v16

    .line 1803
    return-void

    .line 1802
    .end local v13    # "i":I
    .end local v15    # "size":I
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public reportExerciseStatus(I)V
    .locals 7
    .param p1, "exercise_status"    # I

    .prologue
    .line 1812
    const-string v4, "GpsLocationProvider_ex"

    const-string/jumbo v5, "reportExerciseStatus"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1815
    :try_start_0
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1816
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1817
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1819
    .local v2, "listener":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :try_start_1
    iget-object v4, v2, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;->mListener:Landroid/location/IExerciseLocationListener;

    invoke-interface {v4, p1}, Landroid/location/IExerciseLocationListener;->onStatusChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1816
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1820
    :catch_0
    move-exception v0

    .line 1821
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "GpsLocationProvider_ex"

    const-string v6, "RemoteException in requestExerciseStatus"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1824
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1827
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
    :cond_0
    monitor-exit v5

    .line 1828
    return-void

    .line 1827
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public requestExerciseLocation(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "updateRateMs"    # I

    .prologue
    .line 1671
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1672
    const-string v0, "GpsLocationProvider_ex"

    const-string v1, "GPS is not enabled. native_exercise_init() will be called by exercise."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_init_extention()Z

    .line 1674
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_cleanup_extention()V

    .line 1676
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseStarted:Z

    if-nez v0, :cond_1

    .line 1677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseStarted:Z

    .line 1678
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_set_exercise_mode(II)I

    .line 1679
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;->native_exercise_start()I

    .line 1681
    :cond_1
    return-void
.end method
