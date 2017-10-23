.class Lcom/android/internal/os/BatteryStatsExtDBHelper$TotalTableData;
.super Ljava/lang/Object;
.source "BatteryStatsExtDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsExtDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TotalTableData"
.end annotation


# instance fields
.field private oneDayDelta:I

.field private oneDayPower:D

.field private totalDelta:I

.field private totalPower:D


# direct methods
.method private constructor <init>(DIDI)V
    .locals 0
    .param p1, "oneDayPower"    # D
    .param p3, "oneDayDelta"    # I
    .param p4, "totalPower"    # D
    .param p6, "totalDelta"    # I

    .prologue
    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$TotalTableData;->oneDayPower:D

    .line 625
    iput p3, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$TotalTableData;->oneDayDelta:I

    .line 626
    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$TotalTableData;->totalPower:D

    .line 627
    iput p6, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$TotalTableData;->totalDelta:I

    .line 628
    return-void
.end method

.method synthetic constructor <init>(DIDILcom/android/internal/os/BatteryStatsExtDBHelper$1;)V
    .locals 0
    .param p1, "x0"    # D
    .param p3, "x1"    # I
    .param p4, "x2"    # D
    .param p6, "x3"    # I
    .param p7, "x4"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$1;

    .prologue
    .line 617
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsExtDBHelper$TotalTableData;-><init>(DIDI)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 632
    const-string v0, "dayPower %f dayDelta %d totalPower %f totalDelta %d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$TotalTableData;->oneDayPower:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$TotalTableData;->oneDayDelta:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$TotalTableData;->totalPower:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/internal/os/BatteryStatsExtDBHelper$TotalTableData;->totalDelta:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
