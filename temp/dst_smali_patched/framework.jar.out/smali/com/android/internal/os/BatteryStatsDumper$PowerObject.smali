.class Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
.super Ljava/lang/Object;
.source "BatteryStatsDumper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PowerObject"
.end annotation


# instance fields
.field cpuTime:J

.field drainType:Lcom/android/internal/os/BatterySipper$DrainType;

.field mobileActive:J

.field mobilePackets:J

.field totalPower:D

.field uid:I

.field wakeLockTime:J

.field walarm:I

.field wifiPackets:J


# direct methods
.method private constructor <init>(Lcom/android/internal/os/BatterySipper$DrainType;IDJJJJJI)V
    .locals 5
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "uid"    # I
    .param p3, "totalPower"    # D
    .param p5, "cpuTime"    # J
    .param p7, "wakeLockTime"    # J
    .param p9, "mobileActive"    # J
    .param p11, "mobilePackets"    # J
    .param p13, "wifiPackets"    # J
    .param p15, "walarm"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iput p2, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->uid:I

    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->totalPower:D

    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->cpuTime:J

    iput-wide p7, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->wakeLockTime:J

    iput-wide p9, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->mobileActive:J

    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->mobilePackets:J

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->wifiPackets:J

    move/from16 v0, p15

    iput v0, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->walarm:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/BatterySipper$DrainType;IDJJJJJILcom/android/internal/os/BatteryStatsDumper$1;)V
    .locals 1
    .param p1, "x0"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "x1"    # I
    .param p3, "x2"    # D
    .param p5, "x3"    # J
    .param p7, "x4"    # J
    .param p9, "x5"    # J
    .param p11, "x6"    # J
    .param p13, "x7"    # J
    .param p15, "x8"    # I
    .param p16, "x9"    # Lcom/android/internal/os/BatteryStatsDumper$1;

    .prologue
    invoke-direct/range {p0 .. p15}, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;IDJJJJJI)V

    return-void
.end method
