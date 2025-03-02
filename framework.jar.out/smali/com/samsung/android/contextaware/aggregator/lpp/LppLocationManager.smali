.class Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
.super Ljava/lang/Object;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$1;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$FindGps;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsNmeaListener;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;
    }
.end annotation


# static fields
.field private static final CHECK_GPS_WIFI_AVAILABILITY:I = 0x28

.field private static final FIRST_TIME_GPS_TIMEOUT:I = 0x28

.field private static final GPSBATCH_ENTRY_COUNT:I = 0x4

.field private static final GPS_BATCH_REQ_TIMEOUT:I = 0x5

.field private static final INDOOR_ENTRY_NO_GPS_COUNT:I = 0x3

.field private static final LOC_VALID_ACCURACY_GPS:I = 0x10

.field private static final LOC_VALID_ACCURACY_NW:I = 0x28

.field private static final LOC_VALID_TIME_GPS:I = 0x3

.field private static final NLP_TIMEOUT:I = 0x4

.field private static final OUTDOOR_ENTRY_GPS_COUNT:I = 0x3

.field private static final OUTDOOR_EXIT_ACCURACY:I = 0x32

.field private static final PASSIVE_INACTIVE_TIME:I = 0x14

.field public static final PASSIVE_LOC_ACC_VALIDITY:F = 32.0f

.field private static final PASSIVE_LOC_DIST_VALIDITY:D = 10.0

.field private static final PASSIVE_LOC_MIN_TIME:I = 0x5

.field private static final PASSIVE_LOC_VALIDITY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LppLocationManager"

.field static final vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;


# instance fields
.field count:I

.field private mContext:Landroid/content/Context;

.field private final mFindGps:Landroid/location/LocationListener;

.field private final mGpsStatusLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;

.field private mGpsTimeout:J

.field private mLastLoc:Landroid/location/Location;

.field private final mListLoc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mListPassiveLoc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

.field private mLocLnr:Landroid/location/LocationListener;

.field private mLocMgr:Landroid/location/LocationManager;

.field private mLocMostAccGps:Landroid/location/Location;

.field private mLocNw:Landroid/location/Location;

.field private mLooper:Landroid/os/Looper;

.field private mLppResolution:I

.field private mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

.field private mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

.field private mTimeRequest:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->values()[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$FindGps;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$FindGps;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mFindGps:Landroid/location/LocationListener;

    .line 56
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    .line 57
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    .line 58
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;

    .line 59
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    .line 60
    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListPassiveLoc:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mGpsStatusLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;

    .line 69
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    .line 70
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    .line 1665
    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->count:I

    .line 1783
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mFindGps:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
    .param p1, "x1"    # Landroid/location/LocationManager;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocLnr:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
    .param p1, "x1"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mTimeRequest:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mGpsTimeout:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mGpsStatusLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 31
    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I

    return v0
.end method

.method static synthetic access$5600(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListPassiveLoc:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$7902(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$8000(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->locValidCheckNw(Landroid/location/Location;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8100(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->locValidCheckGps(Landroid/location/Location;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8200(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->setMostAccLocGps(Landroid/location/Location;)V

    return-void
.end method

.method private locValidCheckGps(Landroid/location/Location;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 6
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 1826
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mTimeRequest:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1828
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "time is not enough - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mTimeRequest:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_TIME:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    .line 1838
    :goto_0
    return-object v0

    .line 1832
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1834
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS: Accuracy is not good:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_ACC:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    goto :goto_0

    .line 1838
    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->VALID:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    goto :goto_0
.end method

.method private locValidCheckNw(Landroid/location/Location;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 3
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 1843
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1845
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "N/W: Accuracy is not good:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_ACC:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    .line 1849
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->VALID:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    goto :goto_0
.end method

.method private setMostAccLocGps(Landroid/location/Location;)V
    .locals 2
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 1814
    const-string v0, "LppLocationManager"

    const-string/jumbo v1, "setMostAccLoc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 1817
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    .line 1822
    :cond_0
    :goto_0
    return-void

    .line 1818
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1820
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public static validPassDist(DDDD)Z
    .locals 24
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D

    .prologue
    .line 1598
    const-wide v2, 0x40b8e30000000000L    # 6371.0

    .line 1599
    .local v2, "R":D
    sub-double v18, p4, p0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 1600
    .local v10, "dLat":D
    sub-double v18, p6, p2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 1601
    .local v12, "dLon":D
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 1602
    .local v14, "latR1":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 1603
    .local v16, "latR2":D
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v18, v10, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v20, v10, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v20, v12, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v22, v12, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v4, v18, v20

    .line 1605
    .local v4, "a":D
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    mul-double v6, v18, v20

    .line 1606
    .local v6, "c":D
    mul-double v18, v2, v6

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v8, v18, v20

    .line 1608
    .local v8, "d":D
    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    cmpg-double v18, v8, v18

    if-gez v18, :cond_0

    .line 1609
    const-string v18, "LppLocationManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "distance not valid:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    const/16 v18, 0x0

    .line 1613
    :goto_0
    return v18

    .line 1612
    :cond_0
    const-string v18, "LppLocationManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "distance valid:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const/16 v18, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getLastHeight()D
    .locals 2

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    .line 1873
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLastLoc()Landroid/location/Location;
    .locals 1

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    return-object v0
.end method

.method public getLastLocLat()D
    .locals 2

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 1857
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLastLocLon()D
    .locals 2

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    .line 1865
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public locRequest(I)V
    .locals 6
    .param p1, "movingStatus"    # I

    .prologue
    .line 1668
    const-string v1, "LppLocationManager"

    const-string v2, "LocRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->count:I

    .line 1674
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    if-eqz v1, :cond_0

    .line 1676
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->getLastLoc()Landroid/location/Location;
    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$7700(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/Location;

    move-result-object v0

    .line 1677
    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->getState()Lcom/android/internal/util/IState;
    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$7800(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mGpsBatch:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;
    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$5000(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 1680
    const-string v1, "LppLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "passive loc found!: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1682
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1683
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;->locUpdate(Ljava/util/ArrayList;)V

    .line 1701
    .end local v0    # "loc":Landroid/location/Location;
    :cond_0
    :goto_0
    return-void

    .line 1687
    .restart local v0    # "loc":Landroid/location/Location;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 1689
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->STATIONARY:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    .line 1698
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    .line 1699
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->sendMessage(I)V

    goto :goto_0

    .line 1690
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 1692
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->WALK:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    goto :goto_1

    .line 1693
    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1695
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->VEHICLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    goto :goto_1
.end method

.method public sendStatus(Ljava/lang/String;)V
    .locals 3
    .param p1, "strDisp"    # Ljava/lang/String;

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LppLocMan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;->status(Ljava/lang/String;)V

    .line 1884
    return-void
.end method

.method public setLppResolution(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I

    .line 173
    return-void
.end method

.method public start(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;)V
    .locals 4
    .param p1, "config"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;
    .param p2, "mLMLnr"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    .prologue
    .line 117
    const-string v1, "LppLocationManager"

    const-string/jumbo v2, "start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-nez p1, :cond_0

    .line 120
    const-string v1, "LppLocationManager"

    const-string v2, "config null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    .line 126
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 127
    const-string v1, "LppLocationManager"

    const-string v2, "context null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAE_LPPLOCMGR"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 134
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLooper:Landroid/os/Looper;

    .line 135
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLooper:Landroid/os/Looper;

    if-nez v1, :cond_2

    .line 136
    const-string v1, "LppLocationManager"

    const-string v2, "looper null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;

    .line 141
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;

    if-nez v1, :cond_3

    .line 142
    const-string v1, "LppLocationManager"

    const-string/jumbo v2, "mLocMgr is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_3
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$1;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocLnr:Landroid/location/LocationListener;

    .line 146
    iput-object p2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    .line 147
    iget v1, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mGpsTimeout:J

    .line 149
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    const-string v2, "LppLocationManager"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    .line 150
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->start()V

    .line 151
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->START:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    .line 153
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    const-string v2, "LppLocationManager"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    .line 154
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "LppLocationManager"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->STOP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->exit()V
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)V

    .line 169
    :cond_1
    return-void
.end method
