.class Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
.super Ljava/lang/Object;
.source "BatteryStatsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastDatabaseInfo"
.end annotation


# instance fields
.field private networkUsage:J

.field private time:J

.field private totalPower:D


# direct methods
.method private constructor <init>(JDJ)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "totalPower"    # D
    .param p5, "networkUsage"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->time:J

    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->totalPower:D

    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->networkUsage:J

    return-void
.end method

.method synthetic constructor <init>(JDJLcom/android/internal/os/BatteryStatsDBHelper$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # D
    .param p5, "x2"    # J
    .param p7, "x3"    # Lcom/android/internal/os/BatteryStatsDBHelper$1;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;-><init>(JDJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->totalPower:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->networkUsage:J

    return-wide v0
.end method
