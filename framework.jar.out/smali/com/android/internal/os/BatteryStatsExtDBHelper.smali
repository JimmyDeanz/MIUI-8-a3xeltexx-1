.class public Lcom/android/internal/os/BatteryStatsExtDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BatteryStatsExtDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsExtDBHelper$1;,
        Lcom/android/internal/os/BatteryStatsExtDBHelper$TotalTableData;,
        Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;,
        Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x2

.field public static final ALL_ONLY_APP:I = 0x8

.field public static final ALL_ONLY_APP_CONSUMER_LIST:I = 0x80

.field public static final ALL_ONLY_APP_TOTAL:I = 0x20

.field private static final BATTERY_DELTA_QUERY_STRING:Ljava/lang/String; = "SELECT batterydelta,lcd_condition FROM BATTERYSTATS"

.field public static final BATTERY_PERCENTAGE:I = 0x40

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final DATABASE_NAME:Ljava/lang/String; = "batterystats_ext"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DEBUG_LOG:Z = true

.field private static final DELETE_QUERY_STRING:Ljava/lang/String; = "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'LAST_POWER\' AND name!=\'null\'"

.field private static final KEY_ALL_POWER:Ljava/lang/String; = "all_power"

.field private static final KEY_BATTERY_DELTA:Ljava/lang/String; = "battery_delta"

.field private static final KEY_CPU_TIME:Ljava/lang/String; = "cpu_time"

.field private static final KEY_END_TIME:Ljava/lang/String; = "end_time"

.field private static final KEY_LAST_TIME:Ljava/lang/String; = "last_time"

.field private static final KEY_LCD:Ljava/lang/String; = "lcd_condition"

.field private static final KEY_MOBILE_ACTIVE:Ljava/lang/String; = "mobile_active"

.field private static final KEY_MOBILE_PACKETS:Ljava/lang/String; = "mobile_packets"

.field private static final KEY_POWER:Ljava/lang/String; = "power"

.field private static final KEY_RESET_TIME:Ljava/lang/String; = "reset_time"

.field private static final KEY_START_TIME:Ljava/lang/String; = "start_time"

.field private static final KEY_TOTAL_POWER:Ljava/lang/String; = "total_power"

.field private static final KEY_UID:Ljava/lang/String; = "uid"

.field private static final KEY_WAKE_TIME:Ljava/lang/String; = "wake_time"

.field private static final KEY_WALARM:Ljava/lang/String; = "walarm"

.field private static final KEY_WIFI_PACKETS:Ljava/lang/String; = "wifi_packets"

.field public static final LCD_OFF:I = 0x4

.field public static final LCD_OFF_ONLY_APP:I = 0x10

.field private static final MAX_TIME_DIFF:J = 0x240c8400L

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_HOUR:J = 0x36ee80L

.field static final NAME_END:Ljava/lang/String; = "]"

.field static final NAME_START:Ljava/lang/String; = "["

.field static final QUERY_DAILYSTAT_NAME_STRING:Ljava/lang/String; = "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'LAST_POWER\' AND name!=\'null\' AND name!=\'BATTERYSTATS\'"

.field private static final SCREEN_OFF:I = 0x8

.field private static final SCREEN_ON:I = 0x4

.field private static final SIGNATURE_END:Ljava/lang/String; = ")"

.field private static final SIGNATURE_START:Ljava/lang/String; = "("

.field static final TABLE_BATTERYSTATS:Ljava/lang/String; = "BATTERYSTATS"

.field static final TABLE_LAST_POWER:Ljava/lang/String; = "LAST_POWER"

.field private static final TAG:Ljava/lang/String; = "BatteryStatsExtDBHelper"

.field private static final TIME_DIFF_THRESHOLD:J = 0x7d0L

.field private static final TYPE_ALL:Ljava/lang/String; = "ALL"

.field private static final TYPE_SCREEN:Ljava/lang/String; = "SCREEN"

.field private static mBatteryStatsExtDBHelper:Lcom/android/internal/os/BatteryStatsExtDBHelper;

.field private static mContext:Landroid/content/Context;

.field public static sBatteryCapacity:D

.field private static sRealTimeSnapshot:J

.field private static sSystemTimeSnapshot:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    const-string v0, "batterystats_ext"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 159
    sput-object p1, Lcom/android/internal/os/BatteryStatsExtDBHelper;->mContext:Landroid/content/Context;

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/os/BatteryStatsExtDBHelper;->sSystemTimeSnapshot:J

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/os/BatteryStatsExtDBHelper;->sRealTimeSnapshot:J

    .line 162
    return-void
.end method

.method private calculateTimeChange()J
    .locals 14

    .prologue
    .line 787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 788
    .local v2, "actualSystemTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 789
    .local v0, "actualRealtime":J
    sget-wide v10, Lcom/android/internal/os/BatteryStatsExtDBHelper;->sRealTimeSnapshot:J

    sub-long v10, v0, v10

    sget-wide v12, Lcom/android/internal/os/BatteryStatsExtDBHelper;->sSystemTimeSnapshot:J

    add-long v4, v10, v12

    .line 791
    .local v4, "expectedSystemTime":J
    sub-long v8, v2, v4

    .line 792
    .local v8, "timeDiff":J
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 793
    .local v6, "time":J
    sput-wide v0, Lcom/android/internal/os/BatteryStatsExtDBHelper;->sRealTimeSnapshot:J

    .line 794
    sput-wide v2, Lcom/android/internal/os/BatteryStatsExtDBHelper;->sSystemTimeSnapshot:J

    .line 796
    const-wide/16 v10, 0x7d0

    cmp-long v10, v6, v10

    if-lez v10, :cond_0

    .line 801
    .end local v8    # "timeDiff":J
    :goto_0
    return-wide v8

    .restart local v8    # "timeDiff":J
    :cond_0
    const-wide/16 v8, 0x0

    goto :goto_0
.end method

.method private collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsExtDBHelper$TotalTableData;
    .locals 20
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J

    .prologue
    .line 639
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "start_time"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "end_time"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "all_power"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "battery_delta"

    aput-object v1, v2, v0

    .line 641
    .local v2, "columns":[Ljava/lang/String;
    const-string v1, "BATTERYSTATS"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 643
    .local v13, "cursor":Landroid/database/Cursor;
    const-wide/16 v5, 0x0

    .line 644
    .local v5, "oneDayPower":D
    const-wide/16 v8, 0x0

    .line 645
    .local v8, "totalPower":D
    const/4 v7, 0x0

    .line 646
    .local v7, "oneDayDelta":I
    const/4 v10, 0x0

    .line 648
    .local v10, "totalDelta":I
    invoke-interface {v13}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    const-string/jumbo v0, "start_time"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 650
    .local v15, "timeColumn":I
    const-string v0, "all_power"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 651
    .local v14, "powerColumn":I
    const-string v0, "battery_delta"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 652
    .local v12, "batteryColumn":I
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 654
    .local v16, "time":J
    sub-long v0, p2, v16

    const-wide/32 v18, 0x5265c00

    cmp-long v0, v0, v18

    if-gez v0, :cond_0

    .line 655
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    add-double/2addr v5, v0

    .line 656
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v7, v0

    .line 660
    invoke-interface {v13}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_0

    .line 663
    .end local v16    # "time":J
    :cond_0
    move-wide v8, v5

    .line 664
    move v10, v7

    .line 665
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 666
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    add-double/2addr v8, v0

    .line 667
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v10, v0

    .line 668
    invoke-interface {v13}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_1

    .line 671
    .end local v12    # "batteryColumn":I
    .end local v14    # "powerColumn":I
    .end local v15    # "timeColumn":I
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 672
    new-instance v4, Lcom/android/internal/os/BatteryStatsExtDBHelper$TotalTableData;

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/os/BatteryStatsExtDBHelper$TotalTableData;-><init>(DIDILcom/android/internal/os/BatteryStatsExtDBHelper$1;)V

    return-object v4
.end method

.method private createDayTable(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "time"    # J

    .prologue
    .line 217
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "closestDay":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->createDayTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private createDayTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "strDailyStat"    # Ljava/lang/String;

    .prologue
    .line 199
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE IF NOT EXISTS ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " String"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DOUBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cpu_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LONG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "wake_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LONG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mobile_active"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LONG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mobile_packets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LONG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "wifi_packets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LONG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "walarm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "CREATE_POWER_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    const/4 v2, 0x1

    .end local v0    # "CREATE_POWER_TABLE":Ljava/lang/String;
    :goto_0
    return v2

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Landroid/database/SQLException;
    const-string v2, "BatteryStatsExtDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Table not created for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized deleteFutureData(J)V
    .locals 15
    .param p1, "curTime"    # J

    .prologue
    .line 565
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 566
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v10, "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'LAST_POWER\' AND name!=\'null\' AND name!=\'BATTERYSTATS\'"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    .local v0, "QUERY_GET_TABLES_NAME":Ljava/lang/String;
    const/4 v1, 0x0

    .line 571
    .local v1, "c":Landroid/database/Cursor;
    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v2, v0, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 572
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 573
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    if-nez v12, :cond_3

    .line 574
    const-string/jumbo v12, "name"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 575
    .local v11, "tableName":Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 576
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 581
    .end local v11    # "tableName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 582
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 584
    if-eqz v1, :cond_1

    .line 585
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 589
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const-wide/16 v12, 0x7d0

    add-long v6, p1, v12

    .line 591
    .local v6, "maxTime":J
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 592
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 594
    :try_start_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 596
    .restart local v11    # "tableName":Ljava/lang/String;
    :try_start_5
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 597
    .local v8, "startTime":J
    cmp-long v12, v8, v6

    if-lez v12, :cond_2

    .line 598
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DROP TABLE IF EXISTS ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 599
    .end local v8    # "startTime":J
    :catch_1
    move-exception v3

    .line 600
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v12, "BatteryStatsExtDBHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NumberFormatException "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 604
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v11    # "tableName":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 605
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 607
    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 610
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v12, 0x1

    new-array v5, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    .line 611
    .local v5, "requestingColumn":[Ljava/lang/String;
    const-string v12, "[BATTERYSTATS]"

    const-string/jumbo v13, "start_time > ?"

    invoke-virtual {v2, v12, v13, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 614
    const-string v12, "BatteryStatsExtDBHelper"

    const-string v13, "deleteFutureData"

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 615
    monitor-exit p0

    return-void

    .line 584
    .end local v5    # "requestingColumn":[Ljava/lang/String;
    .end local v6    # "maxTime":J
    :cond_3
    if-eqz v1, :cond_1

    .line 585
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 565
    .end local v0    # "QUERY_GET_TABLES_NAME":Ljava/lang/String;
    .end local v1    # "c":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 584
    .restart local v0    # "QUERY_GET_TABLES_NAME":Ljava/lang/String;
    .restart local v1    # "c":Landroid/database/Cursor;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v12

    if-eqz v1, :cond_4

    .line 585
    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 603
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "maxTime":J
    :cond_5
    :try_start_b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 607
    :try_start_c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_2
    move-exception v12

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method private getDailyTotalEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "strDay"    # Ljava/lang/String;

    .prologue
    .line 417
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "start_time"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "end_time"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "all_power"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "battery_delta"

    aput-object v1, v2, v0

    .line 419
    .local v2, "columns":[Ljava/lang/String;
    const-string v1, "BATTERYSTATS"

    const-string/jumbo v3, "start_time = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 422
    .local v12, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 423
    .local v3, "data":Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    new-instance v3, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;

    .end local v3    # "data":Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;
    const-string/jumbo v0, "start_time"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v0, "end_time"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v0, "all_power"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const-string v0, "battery_delta"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;-><init>(JJDILcom/android/internal/os/BatteryStatsExtDBHelper$1;)V

    .line 431
    .restart local v3    # "data":Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 432
    return-object v3
.end method

.method private getDayTableName(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "time"    # J

    .prologue
    .line 461
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "start_time"

    aput-object v1, v2, v0

    .line 465
    .local v2, "columns":[Ljava/lang/String;
    move-wide/from16 v10, p2

    .line 466
    .local v10, "ret":J
    const-string v1, "BATTERYSTATS"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 469
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    const-string/jumbo v0, "start_time"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 472
    .local v12, "start_time":J
    const-string v0, "BatteryStatsExtDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start_time: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-wide/32 v0, 0x5265c00

    add-long/2addr v0, v12

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    .line 475
    move-wide v10, v12

    .line 478
    .end local v12    # "start_time":J
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 480
    const-string v0, "BatteryStatsExtDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDayTableName "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsExtDBHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    const-class v1, Lcom/android/internal/os/BatteryStatsExtDBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/os/BatteryStatsExtDBHelper;->mBatteryStatsExtDBHelper:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/android/internal/os/BatteryStatsExtDBHelper;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsExtDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/os/BatteryStatsExtDBHelper;->mBatteryStatsExtDBHelper:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    .line 168
    :cond_0
    sget-object v0, Lcom/android/internal/os/BatteryStatsExtDBHelper;->mBatteryStatsExtDBHelper:Lcom/android/internal/os/BatteryStatsExtDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLastDailyTotalEntry(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 397
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "start_time"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "end_time"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "all_power"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "battery_delta"

    aput-object v1, v2, v0

    .line 399
    .local v2, "columns":[Ljava/lang/String;
    const-string v1, "BATTERYSTATS"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 401
    .local v12, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 402
    .local v3, "lastData":Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    new-instance v3, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;

    .end local v3    # "lastData":Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;
    const-string/jumbo v0, "start_time"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v0, "end_time"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v0, "all_power"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const-string v0, "battery_delta"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;-><init>(JJDILcom/android/internal/os/BatteryStatsExtDBHelper$1;)V

    .line 410
    .restart local v3    # "lastData":Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 411
    return-object v3
.end method

.method private getLastEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .locals 21
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 274
    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "total_power"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "cpu_time"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "wake_time"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "mobile_active"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "mobile_packets"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "wifi_packets"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "walarm"

    aput-object v3, v4, v2

    .line 277
    .local v4, "columns":[Ljava/lang/String;
    const-string v3, "LAST_POWER"

    const-string/jumbo v5, "uid = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 280
    .local v20, "cursor":Landroid/database/Cursor;
    const-string v2, "BatteryStatsExtDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastEntry UID : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const/4 v5, 0x0

    .line 283
    .local v5, "lastData":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    new-instance v5, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    .end local v5    # "lastData":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    const-string/jumbo v2, "total_power"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const-string v2, "cpu_time"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string/jumbo v2, "wake_time"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string/jumbo v2, "mobile_active"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-string/jumbo v2, "mobile_packets"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-string/jumbo v2, "wifi_packets"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string/jumbo v2, "walarm"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x0

    invoke-direct/range {v5 .. v19}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;-><init>(DJJJJJILcom/android/internal/os/BatteryStatsExtDBHelper$1;)V

    .line 292
    .restart local v5    # "lastData":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    const-string v2, "BatteryStatsExtDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastEntry UID : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 295
    return-object v5
.end method

.method private getUidDailyStat(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .locals 21
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "strDay"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .prologue
    .line 331
    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "power"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "cpu_time"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "wake_time"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "mobile_active"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "mobile_packets"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "wifi_packets"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "walarm"

    aput-object v3, v4, v2

    .line 334
    .local v4, "columns":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "uid = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 337
    .local v20, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 338
    .local v5, "lastData":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    new-instance v5, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    .end local v5    # "lastData":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    const-string/jumbo v2, "power"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const-string v2, "cpu_time"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string/jumbo v2, "wake_time"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string/jumbo v2, "mobile_active"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-string/jumbo v2, "mobile_packets"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-string/jumbo v2, "wifi_packets"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string/jumbo v2, "walarm"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x0

    invoke-direct/range {v5 .. v19}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;-><init>(DJJJJJILcom/android/internal/os/BatteryStatsExtDBHelper$1;)V

    .line 347
    .restart local v5    # "lastData":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    :cond_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 348
    return-object v5
.end method

.method private maintainWeekData(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 20
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J

    .prologue
    .line 490
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v11, "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'LAST_POWER\' AND name!=\'null\' AND name!=\'BATTERYSTATS\'"

    .line 493
    .local v2, "QUERY_GET_TABLES_NAME":Ljava/lang/String;
    const/4 v3, 0x0

    .line 495
    .local v3, "c":Landroid/database/Cursor;
    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 496
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 497
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v15

    if-nez v15, :cond_4

    .line 498
    const-string/jumbo v15, "name"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 499
    .local v14, "tableName":Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    .line 500
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 505
    .end local v14    # "tableName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 506
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    if-eqz v3, :cond_1

    .line 509
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 513
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const-wide/16 v16, 0x0

    const-wide/32 v18, 0x240c8400

    sub-long v18, p2, v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 514
    .local v8, "minTime":J
    const-wide/16 v16, 0x7d0

    add-long v6, p2, v16

    .line 516
    .local v6, "maxTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 517
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 519
    :try_start_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 521
    .restart local v14    # "tableName":Ljava/lang/String;
    :try_start_3
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 522
    .local v12, "startTime":J
    cmp-long v15, v12, v6

    if-gtz v15, :cond_3

    cmp-long v15, v12, v8

    if-gtz v15, :cond_2

    .line 523
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DROP TABLE IF EXISTS ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 524
    .end local v12    # "startTime":J
    :catch_1
    move-exception v4

    .line 525
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v15, "BatteryStatsExtDBHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NumberFormatException "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 529
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v14    # "tableName":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 530
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 532
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 535
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v15, 0x2

    new-array v10, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v10, v15

    const/4 v15, 0x1

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v10, v15

    .line 536
    .local v10, "requestingColumn":[Ljava/lang/String;
    const-string v15, "[BATTERYSTATS]"

    const-string/jumbo v16, "start_time > ? OR start_time <= ?"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 539
    const-string v15, "BatteryStatsExtDBHelper"

    const-string/jumbo v16, "maintainWeekData"

    invoke-static/range {v15 .. v16}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    return-void

    .line 508
    .end local v6    # "maxTime":J
    .end local v8    # "minTime":J
    .end local v10    # "requestingColumn":[Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_1

    .line 509
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 508
    :catchall_0
    move-exception v15

    if-eqz v3, :cond_5

    .line 509
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v15

    .line 528
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "maxTime":J
    .restart local v8    # "minTime":J
    :cond_6
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 532
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v15

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v15
.end method

.method private static printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method private renameDatabaseTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RENAME TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "RENAME_DATABASE_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 859
    return-void
.end method

.method private declared-synchronized updateDailyBatteryDelta(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JDI)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "strDay"    # Ljava/lang/String;
    .param p3, "time"    # J
    .param p5, "all_power"    # D
    .param p7, "battery_delta"    # I

    .prologue
    .line 544
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->maintainWeekData(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 546
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getDailyTotalEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;

    move-result-object v1

    .line 547
    .local v1, "totalEntry":Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;
    if-eqz v1, :cond_0

    .line 548
    # setter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->end_time:J
    invoke-static {v1, p3, p4}, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->access$1002(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;J)J

    .line 549
    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->all_power:D
    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->access$1100(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;)D

    move-result-wide v2

    add-double v2, v2, p5

    # setter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->all_power:D
    invoke-static {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->access$1102(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;D)D

    .line 550
    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->battery_delta:I
    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->access$1200(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;)I

    move-result v0

    add-int v0, v0, p7

    # setter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->battery_delta:I
    invoke-static {v1, v0}, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->access$1202(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;I)I

    .line 556
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->updateDailyTotalDataBase(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    monitor-exit p0

    return-void

    .line 553
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;

    .end local v1    # "totalEntry":Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;
    const/4 v9, 0x0

    move-wide v2, p3

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;-><init>(JJDILcom/android/internal/os/BatteryStatsExtDBHelper$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1    # "totalEntry":Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;
    goto :goto_0

    .line 544
    .end local v1    # "totalEntry":Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateDailyTotalDataBase(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "info"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 436
    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v0, "start_time"

    aput-object v0, v2, v10

    .line 438
    .local v2, "columns":[Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 439
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "start_time"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->start_time:J
    invoke-static {p2}, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->access$900(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 440
    const-string v0, "end_time"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->end_time:J
    invoke-static {p2}, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->access$1000(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 441
    const-string v0, "all_power"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->all_power:D
    invoke-static {p2}, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->access$1100(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 442
    const-string v0, "battery_delta"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->battery_delta:I
    invoke-static {p2}, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->access$1200(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    const-string v1, "BATTERYSTATS"

    const-string/jumbo v3, "start_time = ?"

    new-array v4, v11, [Ljava/lang/String;

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->start_time:J
    invoke-static {p2}, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->access$900(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 446
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 447
    :cond_0
    const-string v0, "BATTERYSTATS"

    invoke-virtual {p1, v0, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 448
    const-string v0, "BatteryStatsExtDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserted BATTERYSTATS : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->start_time:J
    invoke-static {p2}, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->access$900(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 456
    return-void

    .line 450
    :cond_1
    const-string v0, "BATTERYSTATS"

    const-string/jumbo v1, "start_time = ?"

    new-array v3, v11, [Ljava/lang/String;

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->start_time:J
    invoke-static {p2}, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->access$900(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-virtual {p1, v0, v9, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 452
    const-string v0, "BatteryStatsExtDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated BATTERYSTATS : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->start_time:J
    invoke-static {p2}, Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;->access$900(Lcom/android/internal/os/BatteryStatsExtDBHelper$DailyBatteryStatsInfo;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateLastDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "time"    # J
    .param p5, "info"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    .prologue
    .line 299
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "uid"

    aput-object v1, v2, v0

    .line 301
    .local v2, "columns":[Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 302
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "uid"

    invoke-virtual {v9, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "last_time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 304
    const-string/jumbo v0, "total_power"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D
    invoke-static/range {p5 .. p5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$100(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 305
    const-string v0, "cpu_time"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->cpuTime:J
    invoke-static/range {p5 .. p5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$200(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 306
    const-string/jumbo v0, "wake_time"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wakeLockTime:J
    invoke-static/range {p5 .. p5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$300(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 307
    const-string/jumbo v0, "mobile_active"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobileActive:J
    invoke-static/range {p5 .. p5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$400(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 308
    const-string/jumbo v0, "mobile_packets"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobilePackets:J
    invoke-static/range {p5 .. p5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$500(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 309
    const-string/jumbo v0, "wifi_packets"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wifiPackets:J
    invoke-static/range {p5 .. p5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$600(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 310
    const-string/jumbo v0, "walarm"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->walarm:I
    invoke-static/range {p5 .. p5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$700(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v1, "LAST_POWER"

    const-string/jumbo v3, "uid = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 314
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 315
    :cond_0
    const-string/jumbo v0, "reset_time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 316
    const-string v0, "LAST_POWER"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 317
    const-string v0, "BatteryStatsExtDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserted UID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "LAST_POWER"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 325
    return-void

    .line 319
    :cond_1
    const-string v0, "LAST_POWER"

    const-string/jumbo v1, "uid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p1, v0, v9, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 321
    const-string v0, "BatteryStatsExtDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated UID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "LAST_POWER"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUidDailyStat(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "strDay"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "info"    # Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    .prologue
    .line 353
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "uid"

    aput-object v1, v2, v0

    .line 355
    .local v2, "columns":[Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 356
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "uid"

    invoke-virtual {v9, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string/jumbo v0, "power"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D
    invoke-static {p4}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$100(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 358
    const-string v0, "cpu_time"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->cpuTime:J
    invoke-static {p4}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$200(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 359
    const-string/jumbo v0, "wake_time"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wakeLockTime:J
    invoke-static {p4}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$300(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 360
    const-string/jumbo v0, "mobile_active"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobileActive:J
    invoke-static {p4}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$400(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 361
    const-string/jumbo v0, "mobile_packets"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobilePackets:J
    invoke-static {p4}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$500(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 362
    const-string/jumbo v0, "wifi_packets"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wifiPackets:J
    invoke-static {p4}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$600(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 363
    const-string/jumbo v0, "walarm"

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->walarm:I
    invoke-static {p4}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$700(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "uid = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 367
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 368
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 369
    const-string v0, "BatteryStatsExtDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserted UID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " day="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v0, "BatteryStatsExtDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 380
    return-void

    .line 373
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {p1, v0, v9, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 375
    const-string v0, "BatteryStatsExtDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated UID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " day="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v0, "BatteryStatsExtDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized addStatsToDB(ZZJLjava/util/ArrayList;IIDI)V
    .locals 39
    .param p1, "writeForScreenChange"    # Z
    .param p2, "screenOn"    # Z
    .param p3, "time"    # J
    .param p6, "battery_delta"    # I
    .param p7, "currentBatteryPercent"    # I
    .param p8, "all_power"    # D
    .param p10, "dischargeLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsDumper$PowerObject;",
            ">;IIDI)V"
        }
    .end annotation

    .prologue
    .line 680
    .local p5, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsDumper$PowerObject;>;"
    monitor-enter p0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const/16 v36, 0x1

    .line 681
    .local v36, "screenCondition":Z
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 682
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    if-eqz v36, :cond_2

    const/16 v35, 0x4

    .line 691
    .local v35, "lcdCondition":I
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getDayTableName(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v37

    .line 692
    .local v37, "strDay":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->createDayTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-nez v6, :cond_3

    .line 782
    :try_start_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 784
    .end local v37    # "strDay":Ljava/lang/String;
    :goto_2
    monitor-exit p0

    return-void

    .line 680
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v35    # "lcdCondition":I
    .end local v36    # "screenCondition":Z
    :cond_0
    const/16 v36, 0x0

    goto :goto_0

    :cond_1
    move/from16 v36, p2

    goto :goto_0

    .line 684
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v36    # "screenCondition":Z
    :cond_2
    const/16 v35, 0x8

    goto :goto_1

    .line 696
    .restart local v35    # "lcdCondition":I
    .restart local v37    # "strDay":Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;

    .line 697
    .local v31, "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    const-string v6, "BatteryStatsExtDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Writing for UID : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v31

    iget v10, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->uid:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->uid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getLastEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    move-result-object v34

    .line 699
    .local v34, "lastData":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    new-instance v5, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v5 .. v19}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;-><init>(DJJJJJILcom/android/internal/os/BatteryStatsExtDBHelper$1;)V

    .line 701
    .local v5, "delta":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    if-eqz v34, :cond_7

    .line 702
    const-string v6, "BatteryStatsExtDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Written to db : lastpower = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D
    invoke-static/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$100(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)D

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    move-object/from16 v0, v31

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->totalPower:D

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D
    invoke-static/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$100(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)D

    move-result-wide v16

    sub-double v28, v14, v16

    .line 704
    .local v28, "diff":D
    const-wide/16 v14, 0x0

    cmpl-double v6, v28, v14

    if-ltz v6, :cond_6

    .line 705
    move-wide/from16 v0, v28

    # setter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D
    invoke-static {v5, v0, v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$102(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;D)D

    .line 706
    const-string v8, "BatteryStatsExtDBHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Written to db : power[diff] = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v36, :cond_5

    const-string v6, " on"

    :goto_4
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-wide/16 v14, 0x0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->cpuTime:J

    move-wide/from16 v16, v0

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->cpuTime:J
    invoke-static/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$200(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v18

    sub-long v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    # setter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->cpuTime:J
    invoke-static {v5, v14, v15}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$202(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J

    .line 709
    const-wide/16 v14, 0x0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->wakeLockTime:J

    move-wide/from16 v16, v0

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wakeLockTime:J
    invoke-static/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$300(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v18

    sub-long v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    # setter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wakeLockTime:J
    invoke-static {v5, v14, v15}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$302(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J

    .line 710
    const-wide/16 v14, 0x0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->mobileActive:J

    move-wide/from16 v16, v0

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobileActive:J
    invoke-static/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$400(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v18

    sub-long v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    # setter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobileActive:J
    invoke-static {v5, v14, v15}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$402(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J

    .line 711
    const-wide/16 v14, 0x0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->mobilePackets:J

    move-wide/from16 v16, v0

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobilePackets:J
    invoke-static/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$500(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v18

    sub-long v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    # setter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobilePackets:J
    invoke-static {v5, v14, v15}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$502(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J

    .line 712
    const-wide/16 v14, 0x0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->wifiPackets:J

    move-wide/from16 v16, v0

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wifiPackets:J
    invoke-static/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$600(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v18

    sub-long v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    # setter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wifiPackets:J
    invoke-static {v5, v14, v15}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$602(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J

    .line 713
    const/4 v6, 0x0

    move-object/from16 v0, v31

    iget v8, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->walarm:I

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->walarm:I
    invoke-static/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$700(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)I

    move-result v10

    sub-int/2addr v8, v10

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    # setter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->walarm:I
    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$702(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;I)I

    .line 725
    .end local v28    # "diff":D
    :goto_5
    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->uid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v4, v1, v6}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getUidDailyStat(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    move-result-object v7

    .line 727
    .local v7, "uidPowerInfo":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    if-eqz v7, :cond_8

    .line 728
    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$100(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)D

    move-result-wide v14

    # += operator for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D
    invoke-static {v7, v14, v15}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$118(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;D)D

    .line 729
    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->cpuTime:J
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$200(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v14

    # += operator for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->cpuTime:J
    invoke-static {v7, v14, v15}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$214(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J

    .line 730
    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wakeLockTime:J
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$300(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v14

    # += operator for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wakeLockTime:J
    invoke-static {v7, v14, v15}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$314(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J

    .line 731
    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobileActive:J
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$400(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v14

    # += operator for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobileActive:J
    invoke-static {v7, v14, v15}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$414(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J

    .line 732
    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobilePackets:J
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$500(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v14

    # += operator for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobilePackets:J
    invoke-static {v7, v14, v15}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$514(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J

    .line 733
    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wifiPackets:J
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$600(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v14

    # += operator for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wifiPackets:J
    invoke-static {v7, v14, v15}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$614(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;J)J

    .line 734
    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->walarm:I
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$700(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)I

    move-result v6

    # += operator for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->walarm:I
    invoke-static {v7, v6}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$712(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;I)I

    .line 742
    :goto_6
    if-eqz v7, :cond_4

    .line 743
    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->uid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v4, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->updateUidDailyStat(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)V

    .line 745
    :cond_4
    new-instance v9, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    move-object/from16 v0, v31

    iget-wide v10, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->totalPower:D

    move-object/from16 v0, v31

    iget-wide v12, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->cpuTime:J

    move-object/from16 v0, v31

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->wakeLockTime:J

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->mobileActive:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->mobilePackets:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->wifiPackets:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->walarm:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v9 .. v23}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;-><init>(DJJJJJILcom/android/internal/os/BatteryStatsExtDBHelper$1;)V

    .line 749
    .local v9, "newLastData":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->uid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-object v12, v4

    move-wide/from16 v14, p3

    move-object/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->updateLastDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_3

    .line 779
    .end local v5    # "delta":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .end local v7    # "uidPowerInfo":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .end local v9    # "newLastData":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .end local v31    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v32    # "i$":Ljava/util/Iterator;
    .end local v34    # "lastData":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .end local v37    # "strDay":Ljava/lang/String;
    :catch_0
    move-exception v30

    .line 780
    .local v30, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v6, "BatteryStatsExtDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addStatsToDB IllegalStateException : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v30 .. v30}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 782
    :try_start_5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 680
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v30    # "e":Ljava/lang/IllegalStateException;
    .end local v35    # "lcdCondition":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 706
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "delta":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .restart local v28    # "diff":D
    .restart local v31    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .restart local v32    # "i$":Ljava/util/Iterator;
    .restart local v34    # "lastData":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .restart local v35    # "lcdCondition":I
    .restart local v37    # "strDay":Ljava/lang/String;
    :cond_5
    :try_start_6
    const-string v6, " off"

    goto/16 :goto_4

    .line 717
    :cond_6
    const-string v6, "BatteryStatsExtDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "### Strange!!! maybe reset?  power= "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v31

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->totalPower:D

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_5

    .line 782
    .end local v5    # "delta":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .end local v28    # "diff":D
    .end local v31    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v32    # "i$":Ljava/util/Iterator;
    .end local v34    # "lastData":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .end local v37    # "strDay":Ljava/lang/String;
    :catchall_1
    move-exception v6

    :try_start_7
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 722
    .restart local v5    # "delta":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .restart local v31    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .restart local v32    # "i$":Ljava/util/Iterator;
    .restart local v34    # "lastData":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .restart local v37    # "strDay":Ljava/lang/String;
    :cond_7
    :try_start_8
    const-string v6, "BatteryStatsExtDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "### NO Last entry... power = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v31

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->totalPower:D

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 737
    .restart local v7    # "uidPowerInfo":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    :cond_8
    new-instance v7, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    .end local v7    # "uidPowerInfo":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$100(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)D

    move-result-wide v8

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->cpuTime:J
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$200(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v10

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wakeLockTime:J
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$300(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v12

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobileActive:J
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$400(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v14

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->mobilePackets:J
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$500(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v16

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->wifiPackets:J
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$600(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)J

    move-result-wide v18

    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->walarm:I
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$700(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)I

    move-result v20

    const/16 v21, 0x0

    invoke-direct/range {v7 .. v21}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;-><init>(DJJJJJILcom/android/internal/os/BatteryStatsExtDBHelper$1;)V

    .restart local v7    # "uidPowerInfo":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    goto/16 :goto_6

    .line 757
    .end local v5    # "delta":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .end local v7    # "uidPowerInfo":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .end local v31    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v34    # "lastData":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    :cond_9
    const-string v6, "ALL"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getLastEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    move-result-object v33

    .line 758
    .local v33, "lastAllData":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    new-instance v11, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v11 .. v25}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;-><init>(DJJJJJILcom/android/internal/os/BatteryStatsExtDBHelper$1;)V

    .line 760
    .local v11, "delta_all":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    if-eqz v33, :cond_b

    .line 761
    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D
    invoke-static/range {v33 .. v33}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$100(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)D

    move-result-wide v14

    sub-double v28, p8, v14

    .line 762
    .restart local v28    # "diff":D
    const-wide/16 v14, 0x0

    cmpl-double v6, v28, v14

    if-ltz v6, :cond_a

    .line 763
    move-wide/from16 v0, v28

    # setter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D
    invoke-static {v11, v0, v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$102(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;D)D

    .line 764
    const-string v6, "BatteryStatsExtDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Written to db : power[diff] = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    .end local v28    # "diff":D
    :goto_7
    # getter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D
    invoke-static {v11}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$100(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)D

    move-result-wide v18

    move-object/from16 v13, p0

    move-object v14, v4

    move-object/from16 v15, v37

    move-wide/from16 v16, p3

    move/from16 v20, p6

    invoke-direct/range {v13 .. v20}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->updateDailyBatteryDelta(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JDI)V

    .line 775
    new-instance v13, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-wide/from16 v14, p8

    invoke-direct/range {v13 .. v27}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;-><init>(DJJJJJILcom/android/internal/os/BatteryStatsExtDBHelper$1;)V

    .line 776
    .local v13, "newTotalData":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    const-string v17, "ALL"

    move-object/from16 v15, p0

    move-object/from16 v16, v4

    move-wide/from16 v18, p3

    move-object/from16 v20, v13

    invoke-direct/range {v15 .. v20}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->updateLastDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;)V

    .line 778
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 782
    :try_start_9
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 766
    .end local v13    # "newTotalData":Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;
    .restart local v28    # "diff":D
    :cond_a
    const-wide/16 v14, 0x0

    :try_start_a
    # setter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D
    invoke-static {v11, v14, v15}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$102(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;D)D

    goto :goto_7

    .line 769
    .end local v28    # "diff":D
    :cond_b
    const-wide/16 v14, 0x0

    # setter for: Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->power:D
    invoke-static {v11, v14, v15}, Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;->access$102(Lcom/android/internal/os/BatteryStatsExtDBHelper$UidPowerInfo;D)D

    .line 770
    const-string v6, "BatteryStatsExtDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "### No last Entry  power[ALL] = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_7
.end method

.method public declared-synchronized deleteRecordsExceptLatest(I)V
    .locals 3
    .param p1, "maxNumOfItems"    # I

    .prologue
    .line 967
    monitor-enter p0

    :try_start_0
    const-string v0, "BatteryStatsExtDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteRecordsExceptLatest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->deleteFutureData(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    monitor-exit p0

    return-void

    .line 967
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteTableForUid(I)V
    .locals 12
    .param p1, "uid"    # I

    .prologue
    .line 805
    monitor-enter p0

    :try_start_0
    const-string v8, "BatteryStatsExtDBHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleting table for UID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 808
    .local v5, "strUid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 809
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v6, "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'LAST_POWER\' AND name!=\'null\' AND name!=\'BATTERYSTATS\'"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    .local v0, "QUERY_GET_TABLES_NAME":Ljava/lang/String;
    const/4 v1, 0x0

    .line 814
    .local v1, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v2, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 815
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 816
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_2

    .line 817
    const-string/jumbo v8, "name"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 818
    .local v7, "tableName":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 819
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 824
    .end local v7    # "tableName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 825
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 827
    if-eqz v1, :cond_1

    .line 828
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 832
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 833
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 836
    :try_start_4
    const-string v8, "[LAST_POWER]"

    const-string/jumbo v9, "uid = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-virtual {v2, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 839
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_4

    .line 840
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 842
    .restart local v7    # "tableName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "uid = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-virtual {v2, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 839
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 827
    .end local v4    # "i":I
    .end local v7    # "tableName":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_1

    .line 828
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 805
    .end local v0    # "QUERY_GET_TABLES_NAME":Ljava/lang/String;
    .end local v1    # "c":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "strUid":Ljava/lang/String;
    .end local v6    # "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 827
    .restart local v0    # "QUERY_GET_TABLES_NAME":Ljava/lang/String;
    .restart local v1    # "c":Landroid/database/Cursor;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "strUid":Ljava/lang/String;
    .restart local v6    # "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v8

    if-eqz v1, :cond_3

    .line 828
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 844
    .restart local v4    # "i":I
    :cond_4
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 849
    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 851
    .end local v4    # "i":I
    :goto_3
    monitor-exit p0

    return-void

    .line 846
    :catch_1
    move-exception v3

    .line 847
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 849
    :try_start_a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public declared-synchronized dumpUsageList(JZLjava/io/PrintWriter;)V
    .locals 0
    .param p1, "duration"    # J
    .param p3, "needOffList"    # Z
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 975
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public dumpUsageList(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v2, 0x0

    .line 980
    const-string v0, "1 day batterystats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->dumpUsageList(JZLjava/io/PrintWriter;)V

    .line 984
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 986
    const-string v0, "7 days batterystats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    const-wide/32 v0, 0x240c8400

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->dumpUsageList(JZLjava/io/PrintWriter;)V

    .line 989
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 990
    return-void
.end method

.method public declared-synchronized handleTimeChange()V
    .locals 22

    .prologue
    .line 862
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->calculateTimeChange()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 863
    .local v8, "delta":J
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-nez v19, :cond_0

    .line 962
    :goto_0
    monitor-exit p0

    return-void

    .line 867
    :cond_0
    const-wide/32 v20, 0x240c8400

    cmp-long v19, v8, v20

    if-ltz v19, :cond_1

    .line 869
    :try_start_1
    const-string v19, "BatteryStatsExtDBHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Time delta is too big "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " init db"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 872
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 874
    const/16 v19, 0x1

    const/16 v20, 0x1

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 875
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 879
    :try_start_3
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 862
    .end local v6    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "delta":J
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 876
    .restart local v6    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "delta":J
    :catch_0
    move-exception v10

    .line 877
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 879
    :try_start_5
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v19

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v19

    .line 884
    .end local v6    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 885
    .restart local v6    # "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v16, "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'LAST_POWER\' AND name!=\'null\' AND name!=\'BATTERYSTATS\'"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 888
    .local v4, "QUERY_GET_TABLES_NAME":Ljava/lang/String;
    const/4 v5, 0x0

    .line 890
    .local v5, "c":Landroid/database/Cursor;
    const/16 v19, 0x0

    :try_start_6
    move-object/from16 v0, v19

    invoke-virtual {v6, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 891
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 892
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v19

    if-nez v19, :cond_4

    .line 893
    const-string/jumbo v19, "name"

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 894
    .local v17, "tableName":Ljava/lang/String;
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_2

    .line 895
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 900
    .end local v17    # "tableName":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 901
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 903
    if-eqz v5, :cond_3

    .line 904
    :try_start_8
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 908
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-lez v19, :cond_6

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 911
    .local v7, "deltaStr":Ljava/lang/String;
    :goto_3
    const-string v19, "BatteryStatsExtDBHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Time diff = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 913
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 915
    :try_start_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "UPDATE BATTERYSTATS SET start_time=start_time"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", end_time=end_time"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 917
    .local v18, "updateString":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 918
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "UPDATE LAST_POWER SET reset_time=reset_time"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", last_time=last_time"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 920
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 922
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-gez v19, :cond_7

    .line 925
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 927
    .restart local v17    # "tableName":Ljava/lang/String;
    :try_start_a
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 928
    .local v14, "newTime":J
    add-long/2addr v14, v8

    .line 930
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    .line 931
    .local v13, "newTableName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v1, v13}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->renameDatabaseTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    .line 932
    .end local v13    # "newTableName":Ljava/lang/String;
    .end local v14    # "newTime":J
    :catch_2
    move-exception v10

    .line 933
    .local v10, "e":Ljava/lang/NumberFormatException;
    :try_start_b
    const-string v19, "BatteryStatsExtDBHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "NumberFormatException "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_4

    .line 955
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v17    # "tableName":Ljava/lang/String;
    .end local v18    # "updateString":Ljava/lang/String;
    :catch_3
    move-exception v10

    .line 956
    .local v10, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 958
    :try_start_d
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 961
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_5
    const-string v19, "BatteryStatsExtDBHelper"

    const-string v20, "Updated db with new timestamps"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 903
    .end local v7    # "deltaStr":Ljava/lang/String;
    :cond_4
    if-eqz v5, :cond_3

    .line 904
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 903
    :catchall_2
    move-exception v19

    if-eqz v5, :cond_5

    .line 904
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v19

    .line 908
    :cond_6
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v7

    goto/16 :goto_3

    .line 940
    .restart local v7    # "deltaStr":Ljava/lang/String;
    .restart local v18    # "updateString":Ljava/lang/String;
    :cond_7
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v11, v19, -0x1

    .local v11, "i":I
    :goto_6
    if-ltz v11, :cond_8

    .line 941
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 943
    .restart local v17    # "tableName":Ljava/lang/String;
    :try_start_f
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 944
    .restart local v14    # "newTime":J
    add-long/2addr v14, v8

    .line 946
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    .line 947
    .restart local v13    # "newTableName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v1, v13}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->renameDatabaseTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 940
    .end local v13    # "newTableName":Ljava/lang/String;
    .end local v14    # "newTime":J
    :goto_7
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    .line 948
    :catch_4
    move-exception v10

    .line 949
    .local v10, "e":Ljava/lang/NumberFormatException;
    :try_start_10
    const-string v19, "BatteryStatsExtDBHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "NumberFormatException "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_7

    .line 958
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .end local v11    # "i":I
    .end local v17    # "tableName":Ljava/lang/String;
    .end local v18    # "updateString":Ljava/lang/String;
    :catchall_3
    move-exception v19

    :try_start_11
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v19
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 953
    .restart local v18    # "updateString":Ljava/lang/String;
    :cond_8
    :try_start_12
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 958
    :try_start_13
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_5
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 175
    const-string v0, "CREATE TABLE BATTERYSTATS(start_time LONG,end_time LONG,all_power DOUBLE,battery_delta INTEGER)"

    .line 180
    .local v0, "CREATE_BATTERYSTAT_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    const-string v1, "CREATE TABLE [LAST_POWER](uid String,reset_time LONG,last_time LONG,total_power DOUBLE,cpu_time LONG,wake_time LONG,mobile_active LONG,mobile_packets LONG,wifi_packets LONG,walarm INTEGER)"

    .line 193
    .local v1, "CREATE_LAST_POWER_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 225
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v3, "tables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "SELECT * FROM sqlite_master WHERE type=\'table\';"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 227
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 228
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    .line 229
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "tableName":Ljava/lang/String;
    const-string v4, "android_metadata"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "sqlite_sequence"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 231
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 235
    .end local v2    # "tableName":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 237
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 238
    .restart local v2    # "tableName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 242
    .end local v2    # "tableName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 243
    return-void
.end method
