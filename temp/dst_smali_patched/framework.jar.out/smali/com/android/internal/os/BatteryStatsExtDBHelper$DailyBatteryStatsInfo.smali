.class Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;
.super Ljava/lang/Object;
.source "BatteryStatsExtDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsExtDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DailyBatteryStatsInfo"
.end annotation


# instance fields
.field private all_power:D

.field private battery_delta:I

.field private end_time:J

.field private start_time:J


# direct methods
.method private constructor <init>(JJDI)V
    .locals 1
    .param p1, "start_time"    # J
    .param p3, "end_time"    # J
    .param p5, "all_power"    # D
    .param p7, "battery_delta"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->start_time:J

    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->end_time:J

    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->all_power:D

    iput p7, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->battery_delta:I

    return-void
.end method

.method synthetic constructor <init>(JJDILcom/android/internal/os/BatteryStatsExtDBHelper$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # D
    .param p7, "x3"    # I
    .param p8, "x4"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$1;

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;-><init>(JJDI)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->end_time:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->end_time:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->all_power:D

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;D)D
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;
    .param p1, "x1"    # D

    .prologue
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->all_power:D

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;

    .prologue
    iget v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->battery_delta:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->battery_delta:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->start_time:J

    return-wide v0
.end method
