.class Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
.super Ljava/lang/Object;
.source "BatteryStatsExtDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsExtDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidPowerInfo"
.end annotation


# instance fields
.field private cpuTime:J

.field private mobileActive:J

.field private mobilePackets:J

.field private power:D

.field private wakeLockTime:J

.field private walarm:I

.field private wifiPackets:J


# direct methods
.method private constructor <init>(DJJJJJI)V
    .locals 1
    .param p1, "power"    # D
    .param p3, "cpuTime"    # J
    .param p5, "wakeLockTime"    # J
    .param p7, "mobileActive"    # J
    .param p9, "mobilePackets"    # J
    .param p11, "wifiPackets"    # J
    .param p13, "walarm"    # I

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D

    .line 256
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->cpuTime:J

    .line 257
    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wakeLockTime:J

    .line 258
    iput-wide p7, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobileActive:J

    .line 259
    iput-wide p9, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobilePackets:J

    .line 260
    iput-wide p11, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wifiPackets:J

    .line 261
    iput p13, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->walarm:I

    .line 262
    return-void
.end method

.method synthetic constructor <init>(DJJJJJILcom/android/internal/os/BatteryStatsExtDBHelper$1;)V
    .locals 1
    .param p1, "x0"    # D
    .param p3, "x1"    # J
    .param p5, "x2"    # J
    .param p7, "x3"    # J
    .param p9, "x4"    # J
    .param p11, "x5"    # J
    .param p13, "x6"    # I
    .param p14, "x7"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$1;

    .prologue
    .line 244
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;-><init>(DJJJJJI)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;D)D
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .param p1, "x1"    # D

    .prologue
    .line 244
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D

    return-wide p1
.end method

.method static synthetic access$118(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;D)D
    .locals 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .param p1, "x1"    # D

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->cpuTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .param p1, "x1"    # J

    .prologue
    .line 244
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->cpuTime:J

    return-wide p1
.end method

.method static synthetic access$214(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J
    .locals 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .param p1, "x1"    # J

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->cpuTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->cpuTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wakeLockTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .param p1, "x1"    # J

    .prologue
    .line 244
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wakeLockTime:J

    return-wide p1
.end method

.method static synthetic access$314(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J
    .locals 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .param p1, "x1"    # J

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wakeLockTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wakeLockTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobileActive:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .param p1, "x1"    # J

    .prologue
    .line 244
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobileActive:J

    return-wide p1
.end method

.method static synthetic access$414(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J
    .locals 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .param p1, "x1"    # J

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobileActive:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobileActive:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobilePackets:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .param p1, "x1"    # J

    .prologue
    .line 244
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobilePackets:J

    return-wide p1
.end method

.method static synthetic access$514(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J
    .locals 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .param p1, "x1"    # J

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobilePackets:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobilePackets:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wifiPackets:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .param p1, "x1"    # J

    .prologue
    .line 244
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wifiPackets:J

    return-wide p1
.end method

.method static synthetic access$614(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J
    .locals 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .param p1, "x1"    # J

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wifiPackets:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wifiPackets:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    .prologue
    .line 244
    iget v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->walarm:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .param p1, "x1"    # I

    .prologue
    .line 244
    iput p1, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->walarm:I

    return p1
.end method

.method static synthetic access$712(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .param p1, "x1"    # I

    .prologue
    .line 244
    iget v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->walarm:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->walarm:I

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 266
    const-string/jumbo v0, "power %f cpu %d wake %d mobileActive %d mobilePakcets %d wifiPackets %d walarm %d"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->cpuTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wakeLockTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobileActive:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobilePackets:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wifiPackets:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->walarm:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
