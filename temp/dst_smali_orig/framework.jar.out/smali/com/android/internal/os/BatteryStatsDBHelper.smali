.class public Lcom/android/internal/os/BatteryStatsDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BatteryStatsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;,
        Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;,
        Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    }
.end annotation


# static fields
.field public static final ACTION_BATTERY_ABUSE:Ljava/lang/String; = "sec.intent.action.BATTERY_ABUSE"

.field public static final ALL:I = 0x2

.field public static final ALL_ONLY_APP:I = 0x8

.field public static final ALL_ONLY_APP_CONSUMER_LIST:I = 0x80

.field public static final ALL_ONLY_APP_TOTAL:I = 0x20

.field static final BATTERY_DELTA:Ljava/lang/String; = "Battery_Delta"

.field private static final BATTERY_DELTA_QUERY_STRING:Ljava/lang/String; = "SELECT batterydelta,lcd_condition FROM Battery_Delta"

.field public static final BATTERY_PERCENTAGE:I = 0x40

.field private static final COLLECTION_QUERY_STRING:Ljava/lang/String; = "SELECT lcd_condition,time,power FROM"

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DATABASE_NAME:Ljava/lang/String; = "powerManager"

.field private static final DATABASE_VERSION:I = 0x8

.field private static final DEBUG_LOG:Z = false

.field private static final DELETE_QUERY_STRING:Ljava/lang/String; = "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\'"

.field private static final KEY_ABUSIVE_TYPE:Ljava/lang/String; = "abusive_type"

.field private static final KEY_BATTERY_DELTA:Ljava/lang/String; = "batterydelta"

.field private static final KEY_BATTERY_PERC:Ljava/lang/String; = "batterypercent"

.field private static final KEY_CPU_TIME:Ljava/lang/String; = "cpu_time"

.field private static final KEY_LCD:Ljava/lang/String; = "lcd_condition"

.field private static final KEY_METADATA:Ljava/lang/String; = "meta_data"

.field private static final KEY_NETWORK_USAGE:Ljava/lang/String; = "network_usage"

.field private static final KEY_NOTIFIED_TIME:Ljava/lang/String; = "notified_time"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final KEY_PERCENTAGE:Ljava/lang/String; = "percentage"

.field private static final KEY_POWER:Ljava/lang/String; = "power"

.field private static final KEY_TIME:Ljava/lang/String; = "time"

.field private static final KEY_TOTALPOWER:Ljava/lang/String; = "totalpower"

.field private static final KEY_UID:Ljava/lang/String; = "uid"

.field private static final KEY_WALARM:Ljava/lang/String; = "walarm"

.field private static final LAST_ENTRY_QUERY_STRING:Ljava/lang/String; = "SELECT time,totalpower,network_usage FROM"

.field private static final LAST_TOTAL_ENTRY_QUERY_STRING:Ljava/lang/String; = "SELECT time,totalpower,batterypercent FROM [all]"

.field public static final LCD_OFF:I = 0x4

.field public static final LCD_OFF_ONLY_APP:I = 0x10

.field private static final MAX_TIME_DIFF:J = 0x5265c00L

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_HOUR:J = 0x36ee80L

.field static final NAME_END:Ljava/lang/String; = "]"

.field static final NAME_START:Ljava/lang/String; = "["

.field private static final NETWORK_USAGE:I = 0x20

.field private static final ONE_HR_BATTERY_THRESHOLD:Ljava/lang/String; = "one_hr_battery_threshold"

.field private static final ONE_HR_HEALING_CAMP_THRESHOLD:Ljava/lang/String; = "one_hr_healingcamp_threshold"

.field static final PACKAGE_QUERY_STRING:Ljava/lang/String; = "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

.field private static final PERC_QUERY_STRING:Ljava/lang/String; = "SELECT lcd_condition,time,batterypercent FROM Battery_Delta"

.field static final POWER_CONSUMING_PACKAGES:Ljava/lang/String; = "power_consuming_packages"

.field private static final RATE_QUERY_STRING:Ljava/lang/String; = "SELECT usage_time,power FROM"

.field private static final SCREEN_OFF:I = 0x8

.field private static final SCREEN_ON:I = 0x4

.field private static final SETTING_KEY:Ljava/lang/String; = "key"

.field private static final SETTING_VALUE:Ljava/lang/String; = "value"

.field private static final SIGNATURE_END:Ljava/lang/String; = ")"

.field private static final SIGNATURE_START:Ljava/lang/String; = "("

.field private static final SYSTEM_APP:I = 0x10

.field private static final TAG:Ljava/lang/String; = "BatteryStatsDBHelper"

.field private static final TIME_DIFF_THRESHOLD:J = 0x7d0L

.field private static final TOTAL_POWER:Ljava/lang/String; = "all"

.field private static final TYPE_BLE:Ljava/lang/String; = "ble"

.field private static final TYPE_GPS:Ljava/lang/String; = "gps"

.field private static final TYPE_WAKELOCK:Ljava/lang/String; = "wakelock"

.field private static mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

.field private static mContext:Landroid/content/Context;

.field private static notifiedPowerDrainingApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static sBatteryCapacity:D

.field private static sRealTimeSnapshot:J

.field private static sSystemTimeSnapshot:J

.field private static unNotifiedAbuserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ONE_HOUR_THRESHOLD:D

.field private ONE_HOUR_THRESHOLD_HEALING_CAMP:D

.field private mFakeReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->unNotifiedAbuserMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    const-string v0, "content://com.samsung.android.sm/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "powerManager"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD_HEALING_CAMP:D

    new-instance v0, Lcom/android/internal/os/BatteryStatsDBHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsDBHelper$1;-><init>(Lcom/android/internal/os/BatteryStatsDBHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->mFakeReceiver:Landroid/content/BroadcastReceiver;

    sput-object p1, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sSystemTimeSnapshot:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sRealTimeSnapshot:J

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->registerReceiver()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized addBatteryDelta(ZJIILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "writeForScreenChange"    # Z
    .param p2, "time"    # J
    .param p4, "batteryDelta"    # I
    .param p5, "currentBatteryPercent"    # I
    .param p6, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    sget-boolean v3, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .local v1, "screenCondition":Z
    :goto_0
    if-eqz v1, :cond_2

    const/4 v0, 0x4

    .local v0, "lcdCondition":I
    :goto_1
    invoke-direct {p0, p6, p2, p3}, Lcom/android/internal/os/BatteryStatsDBHelper;->maintainDayData(Landroid/database/sqlite/SQLiteDatabase;J)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "lcd_condition"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "batterydelta"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "batterypercent"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "Battery_Delta"

    const/4 v4, 0x0

    invoke-virtual {p6, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "lcdCondition":I
    .end local v1    # "screenCondition":Z
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    sget-boolean v1, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .restart local v1    # "screenCondition":Z
    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    .end local v1    # "screenCondition":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private addPowerConsumingApps(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "abusiveType"    # Ljava/lang/String;
    .param p6, "metadata"    # Ljava/lang/String;
    .param p7, "percentage"    # D

    .prologue
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "packageName"

    aput-object v2, v3, v1

    .local v3, "columns":[Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .local v10, "values":Landroid/content/ContentValues;
    const-string v1, "time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "packageName"

    invoke-virtual {v10, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "percentage"

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "abusive_type"

    move-object/from16 v0, p5

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "meta_data"

    move-object/from16 v0, p6

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "power_consuming_packages"

    const-string v4, "packageName = ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "power_consuming_packages"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserted abuse of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    const-string v1, "power_consuming_packages"

    const-string v2, "packageName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    invoke-virtual {p1, v1, v10, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated abuse of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addPowerConsumingApps(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashMap;)V
    .locals 16
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "abuserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "packageName"

    aput-object v2, v3, v1

    .local v3, "columns":[Ljava/lang/String;
    const-string v9, "battery"

    .local v9, "abusiveType":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    .local v14, "packageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "packageName":Ljava/lang/String;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .local v15, "values":Landroid/content/ContentValues;
    const-string v1, "time"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "packageName"

    invoke-virtual {v15, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "percentage"

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v15, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "abusive_type"

    invoke-virtual {v15, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "power_consuming_packages"

    const-string v4, "packageName = ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v13, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "power_consuming_packages"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserted abuse of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    const-string v1, "power_consuming_packages"

    const-string v2, "packageName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v15, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated abuse of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "values":Landroid/content/ContentValues;
    :cond_2
    return-void
.end method

.method private calculateTimeChange()J
    .locals 14

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "actualSystemTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, "actualRealtime":J
    sget-wide v10, Lcom/android/internal/os/BatteryStatsDBHelper;->sRealTimeSnapshot:J

    sub-long v10, v0, v10

    sget-wide v12, Lcom/android/internal/os/BatteryStatsDBHelper;->sSystemTimeSnapshot:J

    add-long v4, v10, v12

    .local v4, "expectedSystemTime":J
    sub-long v8, v2, v4

    .local v8, "timeDiff":J
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .local v6, "time":J
    sput-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sRealTimeSnapshot:J

    sput-wide v2, Lcom/android/internal/os/BatteryStatsDBHelper;->sSystemTimeSnapshot:J

    const-wide/16 v10, 0x7d0

    cmp-long v10, v6, v10

    if-lez v10, :cond_0

    .end local v8    # "timeDiff":J
    :goto_0
    return-wide v8

    .restart local v8    # "timeDiff":J
    :cond_0
    const-wide/16 v8, 0x0

    goto :goto_0
.end method

.method private checkForPowerThreshold(Landroid/database/sqlite/SQLiteDatabase;JD)V
    .locals 44
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J
    .param p4, "power"    # D

    .prologue
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForPowerThreshold called : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .local v17, "c":Landroid/database/Cursor;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "checkForPowerThreshold:: no tables found, closing cursor"

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .local v16, "appSippersForLastHour":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/UidSipper;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .local v15, "appSippersFor24Hours":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/UidSipper;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->maintainNotifiedAppList(J)V

    sget-boolean v6, Lcom/android/internal/os/BatteryStatsDumper;->mIsOnBattery:Z

    if-nez v6, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p3}, Lcom/android/internal/os/BatteryStatsDBHelper;->collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    move-result-object v42

    .local v42, "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static/range {v42 .. v42}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmpl-double v6, v6, v10

    if-gtz v6, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "time"

    aput-object v7, v8, v6

    const/4 v6, 0x1

    const-string v7, "lcd_condition"

    aput-object v7, v8, v6

    const/4 v6, 0x2

    const-string v7, "power"

    aput-object v7, v8, v6

    .local v8, "requestingColumn":[Ljava/lang/String;
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "name"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .local v38, "strUid":Ljava/lang/String;
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In checkForPowerThreshold, uid = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .local v21, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToLast()Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DROP TABLE IF EXISTS ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_4
    const-string v6, "lcd_condition"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .local v26, "lcdColumn":I
    const-string v6, "time"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .local v39, "timeColumn":I
    const-string v6, "power"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .local v33, "powerColumn":I
    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_5

    const/16 v25, 0x1

    .local v25, "isSystemUid":Z
    :goto_2
    if-eqz v25, :cond_6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v25    # "isSystemUid":Z
    :cond_5
    const/16 v25, 0x0

    goto :goto_2

    .restart local v25    # "isSystemUid":Z
    :cond_6
    const/4 v14, 0x0

    .local v14, "appSipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v30, 0x0

    .local v30, "lcdOffPowerInLastHour":D
    :goto_3
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_8

    move-object/from16 v0, v21

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .local v40, "thisTime":J
    sub-long v6, p2, v40

    const-wide/32 v10, 0x36ee80

    cmp-long v6, v6, v10

    if-gez v6, :cond_8

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .local v18, "curPower":D
    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_7

    .end local v18    # "curPower":D
    :goto_4
    add-double v30, v30, v18

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_3

    .restart local v18    # "curPower":D
    :cond_7
    const-wide/16 v18, 0x0

    goto :goto_4

    .end local v18    # "curPower":D
    .end local v40    # "thisTime":J
    :cond_8
    const-wide/16 v6, 0x0

    cmpl-double v6, v30, v6

    if-lez v6, :cond_9

    new-instance v14, Lcom/android/internal/os/UidSipper;

    .end local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    move-object/from16 v0, v38

    invoke-direct {v14, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .restart local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    move-wide/from16 v0, v30

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move-wide/from16 v28, v30

    .local v28, "lcdOffPowerIn24Hours":D
    :goto_5
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_b

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .restart local v18    # "curPower":D
    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_a

    .end local v18    # "curPower":D
    :goto_6
    add-double v28, v28, v18

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_5

    .restart local v18    # "curPower":D
    :cond_a
    const-wide/16 v18, 0x0

    goto :goto_6

    .end local v18    # "curPower":D
    :cond_b
    const-wide/16 v6, 0x0

    cmpl-double v6, v28, v6

    if-lez v6, :cond_c

    new-instance v14, Lcom/android/internal/os/UidSipper;

    .end local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    move-object/from16 v0, v38

    invoke-direct {v14, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .restart local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    move-wide/from16 v0, v28

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .end local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v25    # "isSystemUid":Z
    .end local v26    # "lcdColumn":I
    .end local v28    # "lcdOffPowerIn24Hours":D
    .end local v30    # "lcdOffPowerInLastHour":D
    .end local v33    # "powerColumn":I
    .end local v38    # "strUid":Ljava/lang/String;
    .end local v39    # "timeColumn":I
    :cond_d
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_e
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .local v20, "currentAbuserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    sget-boolean v6, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-eqz v6, :cond_11

    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->unNotifiedAbuserMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    const/16 v36, 0x1

    .local v36, "sendBroadcast":Z
    :goto_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/internal/os/UidSipper;

    .local v37, "sipper":Lcom/android/internal/os/UidSipper;
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I
    invoke-static/range {v42 .. v42}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v27

    .local v27, "oneHourTotalDelta":I
    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/os/UidSipper;->getTotalPower()D

    move-result-wide v6

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static/range {v42 .. v42}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v10

    div-double/2addr v6, v10

    move/from16 v0, v27

    int-to-double v10, v0

    mul-double v34, v6, v10

    .local v34, "percentage":D
    move/from16 v0, v27

    int-to-double v6, v0

    cmpl-double v6, v34, v6

    if-lez v6, :cond_10

    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "Strange!!. Percentage is greater than battery delta"

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v34, v0

    :cond_10
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " has consumed "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v34

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD:D

    cmpl-double v6, v34, v6

    if-lez v6, :cond_f

    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UID:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " has consumed more than "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD:D

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "% battery in last 1 hour when LCD was off"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    .local v43, "uid":I
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->getDefaultPackageName(I)Ljava/lang/String;

    move-result-object v32

    .local v32, "packageName":Ljava/lang/String;
    if-eqz v32, :cond_f

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    sget-boolean v6, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-eqz v6, :cond_12

    or-int/lit8 v36, v36, 0x1

    :goto_9
    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->unNotifiedAbuserMap:Ljava/util/HashMap;

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    .end local v32    # "packageName":Ljava/lang/String;
    .end local v43    # "uid":I
    :catch_0
    move-exception v22

    .local v22, "e":Ljava/lang/NumberFormatException;
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NumberFormatException "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .end local v22    # "e":Ljava/lang/NumberFormatException;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v27    # "oneHourTotalDelta":I
    .end local v34    # "percentage":D
    .end local v36    # "sendBroadcast":Z
    .end local v37    # "sipper":Lcom/android/internal/os/UidSipper;
    :cond_11
    const/16 v36, 0x0

    goto/16 :goto_7

    .restart local v24    # "i$":Ljava/util/Iterator;
    .restart local v27    # "oneHourTotalDelta":I
    .restart local v32    # "packageName":Ljava/lang/String;
    .restart local v34    # "percentage":D
    .restart local v36    # "sendBroadcast":Z
    .restart local v37    # "sipper":Lcom/android/internal/os/UidSipper;
    .restart local v43    # "uid":I
    :cond_12
    :try_start_1
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " will be broadcasted abusive in screen on"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    .end local v27    # "oneHourTotalDelta":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "percentage":D
    .end local v37    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v43    # "uid":I
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsDBHelper;->addPowerConsumingApps(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashMap;)V

    sget-boolean v6, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-eqz v6, :cond_14

    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->unNotifiedAbuserMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/internal/os/BatteryStatsDBHelper;->markAsNotified(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashMap;)V

    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->unNotifiedAbuserMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    :cond_14
    if-eqz v36, :cond_15

    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "Sending Battery abuse broadcast"

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v23, Landroid/content/Intent;

    const-string v6, "sec.intent.action.BATTERY_ABUSE"

    move-object/from16 v0, v23

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v23, "i":Landroid/content/Intent;
    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v23    # "i":Landroid/content/Intent;
    :cond_15
    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "checkForPowerThreshold finished"

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .locals 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J

    .prologue
    const-string v1, "[all]"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v7, "time"

    aput-object v7, v2, v0

    const/4 v0, 0x1

    const-string v7, "power"

    aput-object v7, v2, v0

    const/4 v0, 0x2

    const-string v7, "batterydelta"

    aput-object v7, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, "cursor":Landroid/database/Cursor;
    const-wide/16 v1, 0x0

    .local v1, "oneHourPower":D
    const-wide/16 v4, 0x0

    .local v4, "oneDayPower":D
    const/4 v3, 0x0

    .local v3, "oneHourBatteryDelta":I
    const/4 v6, 0x0

    .local v6, "oneDayBatteryDelta":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .local v11, "timeColumn":I
    const-string v0, "power"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .local v10, "powerColumn":I
    const-string v0, "batterydelta"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .local v8, "batteryColumn":I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .local v12, "time":J
    sub-long v14, p2, v12

    const-wide/32 v16, 0x36ee80

    cmp-long v0, v14, v16

    if-gez v0, :cond_0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    add-double/2addr v1, v14

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v3, v0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_0

    .end local v12    # "time":J
    :cond_0
    move-wide v4, v1

    move v6, v3

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    add-double/2addr v4, v14

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v6, v0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_1

    .end local v8    # "batteryColumn":I
    .end local v10    # "powerColumn":I
    .end local v11    # "timeColumn":I
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    new-instance v0, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;-><init>(DIDILcom/android/internal/os/BatteryStatsDBHelper$1;)V

    return-object v0
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "TABLE_UID"    # Ljava/lang/String;

    .prologue
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

    const-string v3, "lcd_condition"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LONG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DOUBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "totalpower"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DOUBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "network_usage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LONG"

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

    const-string v3, "walarm"

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

    .local v0, "CREATE_POWER_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .end local v0    # "CREATE_POWER_TABLE":Ljava/lang/String;
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/database/SQLException;
    const-string v2, "BatteryStatsDBHelper"

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

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static deleteDatabase()Z
    .locals 3

    .prologue
    sget-object v1, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    const-string v2, "powerManager"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v0

    .local v0, "ret":Z
    if-eqz v0, :cond_0

    const-string v1, "BatteryStatsDBHelper"

    const-string v2, "Database has been deleted"

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v1, "BatteryStatsDBHelper"

    const-string v2, "Database was not deleted"

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteExceptDayData(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J
    .param p4, "tableName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x7d0

    add-long v0, p2, v6

    .local v0, "maxTime":J
    const-wide/32 v6, 0x5265c00

    sub-long v2, p2, v6

    .local v2, "minTime":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    const-wide/16 v2, 0x0

    :cond_0
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .local v4, "requestingColumn":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "time > ? OR time <= ?"

    invoke-virtual {p1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private deleteRecordsExceptLatest(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName_"    # Ljava/lang/String;
    .param p3, "maxNumOfItems"    # I

    .prologue
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "tableName":Ljava/lang/String;
    invoke-static {p1, v5}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .local v0, "numOfItems":J
    int-to-long v6, p3

    sub-long v2, v0, v6

    .local v2, "numOfRemoval":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE time IN (SELECT time FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " LIMIT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "query":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .end local v4    # "query":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getAppUsageStats()Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .local v9, "launchedPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    const-string v2, "usagestats"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .local v0, "mUsageStatsManager":Landroid/app/usage/UsageStatsManager;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .local v6, "cal":Ljava/util/Calendar;
    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-virtual {v6, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/4 v1, 0x4

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v11

    .local v11, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-nez v11, :cond_1

    :cond_0
    return-object v9

    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_0

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStats;

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .local v10, "pkgName":Ljava/lang/String;
    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LaunchedPackageSet contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private declared-synchronized getBatteryPercentageList()[B
    .locals 22

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .local v15, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v18, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .local v18, "result":Lcom/android/internal/os/UidSipperImpl;
    new-instance v2, Lcom/android/internal/os/UidSipper;

    const-string v8, "Battery"

    invoke-direct {v2, v8}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .local v2, "sipper":Lcom/android/internal/os/UidSipper;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .local v12, "curTime":J
    const-string v8, "SELECT lcd_condition,time,batterypercent FROM Battery_Delta"

    const/4 v9, 0x0

    invoke-virtual {v15, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .local v11, "cursor":Landroid/database/Cursor;
    const-string v8, "lcd_condition"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .local v16, "lcdColumn":I
    const-string v8, "time"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .local v19, "timeColumn":I
    const-string v8, "batterypercent"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .local v10, "batteryPercColumn":I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .local v3, "time":J
    sub-long v8, v12, v3

    const-wide/32 v20, 0x5265c00

    cmp-long v8, v8, v20

    if-ltz v8, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_2

    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    const/4 v5, 0x1

    .local v5, "lcdOn":Z
    :goto_1
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-double v6, v8

    .local v6, "batteryPerc":D
    const-wide/16 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v2    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v3    # "time":J
    .end local v5    # "lcdOn":Z
    .end local v6    # "batteryPerc":D
    .end local v10    # "batteryPercColumn":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "curTime":J
    .end local v15    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v16    # "lcdColumn":I
    .end local v18    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v19    # "timeColumn":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .restart local v2    # "sipper":Lcom/android/internal/os/UidSipper;
    .restart local v3    # "time":J
    .restart local v10    # "batteryPercColumn":I
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "curTime":J
    .restart local v15    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v16    # "lcdColumn":I
    .restart local v18    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v19    # "timeColumn":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .end local v3    # "time":J
    :cond_2
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v17

    .local v17, "out":Landroid/os/Parcel;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->marshall()[B

    move-result-object v14

    .local v14, "data":[B
    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v14
.end method

.method private declared-synchronized getConsumerListOnlyApp()[B
    .locals 34

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    .local v18, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v26, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v26 .. v26}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .local v26, "result":Lcom/android/internal/os/UidSipperImpl;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .local v14, "curTime":J
    const-string v8, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v9, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .local v11, "c":Landroid/database/Cursor;
    const-wide/16 v12, 0x0

    .local v12, "allUidTotalPower":D
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getAppUsageStats()Ljava/util/Set;

    move-result-object v20

    .local v20, "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "name"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .local v29, "val":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT lcd_condition,time,power FROM["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .local v27, "selectQuery":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .local v16, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v8, "lcd_condition"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .local v21, "lcdColumn":I
    const-string v8, "time"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .local v28, "timeColumn":I
    const-string v8, "power"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .local v25, "powerColumn":I
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .local v22, "lcdNtype":I
    and-int/lit8 v8, v22, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_0

    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "System app"

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "allUidTotalPower":D
    .end local v14    # "curTime":J
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v18    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v20    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "lcdColumn":I
    .end local v22    # "lcdNtype":I
    .end local v25    # "powerColumn":I
    .end local v26    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v27    # "selectQuery":Ljava/lang/String;
    .end local v28    # "timeColumn":I
    .end local v29    # "val":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "allUidTotalPower":D
    .restart local v14    # "curTime":J
    .restart local v16    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v20    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v21    # "lcdColumn":I
    .restart local v22    # "lcdNtype":I
    .restart local v25    # "powerColumn":I
    .restart local v26    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v27    # "selectQuery":Ljava/lang/String;
    .restart local v28    # "timeColumn":I
    .restart local v29    # "val":Ljava/lang/String;
    :cond_0
    :try_start_1
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .local v3, "time":J
    sub-long v8, v14, v3

    const-wide/32 v32, 0x5265c00

    cmp-long v8, v8, v32

    if-ltz v8, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    :cond_1
    new-instance v2, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .local v2, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v30, 0x0

    .local v30, "totalPower":D
    const-wide/16 v6, 0x0

    .local v6, "power":D
    const/16 v19, 0x0

    .local v19, "isUsingNetwork":Z
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_4

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    and-int/lit8 v8, v22, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    const/4 v5, 0x1

    .local v5, "lcdOn":Z
    :goto_2
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    add-double v30, v30, v6

    and-int/lit8 v8, v22, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_3
    or-int v19, v19, v8

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .end local v5    # "lcdOn":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .restart local v5    # "lcdOn":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .end local v5    # "lcdOn":Z
    :cond_4
    const-string v8, "BatteryStatsDBHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v32, " power:"

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v30

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v2, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    move-wide/from16 v0, v30

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    add-double v12, v12, v30

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v2}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    :cond_5
    :goto_4
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "added"

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_7
    if-eqz v19, :cond_5

    invoke-virtual {v2}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_4

    .end local v2    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v3    # "time":J
    .end local v6    # "power":D
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v19    # "isUsingNetwork":Z
    .end local v21    # "lcdColumn":I
    .end local v22    # "lcdNtype":I
    .end local v25    # "powerColumn":I
    .end local v27    # "selectQuery":Ljava/lang/String;
    .end local v28    # "timeColumn":I
    .end local v29    # "val":Ljava/lang/String;
    .end local v30    # "totalPower":D
    :cond_8
    const-wide/16 v8, 0x0

    cmpg-double v8, v12, v8

    if-gtz v8, :cond_9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :cond_9
    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .end local v20    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const-string v27, "SELECT  * FROM power_consuming_packages"

    .restart local v27    # "selectQuery":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .restart local v16    # "cursor":Landroid/database/Cursor;
    const-string v8, "time"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .restart local v28    # "timeColumn":I
    const-string v8, "packageName"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .local v10, "abuserNameColumn":I
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/UidSipperImpl;->initializeConsumerList()V

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_c

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .restart local v3    # "time":J
    sub-long v8, v14, v3

    const-wide/32 v32, 0x5265c00

    cmp-long v8, v8, v32

    if-ltz v8, :cond_b

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    :cond_b
    :goto_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_c

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .local v23, "names":Ljava/lang/String;
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/os/UidSipperImpl;->addConsumerPackages(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5

    .end local v3    # "time":J
    .end local v23    # "names":Ljava/lang/String;
    :cond_c
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v24

    .local v24, "out":Landroid/os/Parcel;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->marshall()[B

    move-result-object v17

    .local v17, "data":[B
    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v17
.end method

.method private getDefaultPackageName(I)Ljava/lang/String;
    .locals 21
    .param p1, "uid"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    .local v15, "packages":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "defaultPkgName":Ljava/lang/String;
    if-eqz v15, :cond_4

    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/String;

    .local v14, "packageLabels":[Ljava/lang/String;
    const/16 v18, 0x0

    const/16 v19, 0x0

    array-length v0, v15

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v15, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    aget-object v19, v14, v8

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_1

    const-string v18, "BatteryStatsDBHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Retrieving null app info for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v14, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .local v10, "label":Ljava/lang/CharSequence;
    if-eqz v10, :cond_2

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v8

    :cond_2
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v18, v0

    if-eqz v18, :cond_0

    aget-object v6, v15, v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "label":Ljava/lang/CharSequence;
    :cond_3
    array-length v0, v15

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/16 v18, 0x0

    aget-object v6, v15, v18

    .end local v8    # "i":I
    .end local v14    # "packageLabels":[Ljava/lang/String;
    :cond_4
    :goto_2
    const-string v18, "BatteryStatsDBHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "returned pkgname = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .restart local v8    # "i":I
    .restart local v14    # "packageLabels":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v18, "BatteryStatsDBHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error while retrieving app info for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v15, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    move-object v5, v15

    .local v5, "arr$":[Ljava/lang/String;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v11, :cond_4

    aget-object v17, v5, v9

    .local v17, "pkgName":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .local v16, "pi":Landroid/content/pm/PackageInfo;
    if-nez v16, :cond_7

    const-string v18, "BatteryStatsDBHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Retrieving null package info for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .end local v16    # "pi":Landroid/content/pm/PackageInfo;
    :cond_6
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .restart local v16    # "pi":Landroid/content/pm/PackageInfo;
    :cond_7
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    .local v13, "nm":Ljava/lang/CharSequence;
    if-eqz v13, :cond_6

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v6, v17

    :cond_8
    const-string v18, "BatteryStatsDBHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "name = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "nm":Ljava/lang/CharSequence;
    .end local v16    # "pi":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v7

    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v18, "BatteryStatsDBHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error while retrieving package info for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsDBHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/internal/os/BatteryStatsDBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    :cond_0
    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLastEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "strUid"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT time,totalpower,network_usage FROM["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "selectQuery":Ljava/lang/String;
    invoke-virtual {p1, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .local v1, "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    .end local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    const-string v2, "time"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "totalpower"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const-string v6, "network_usage"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;-><init>(JDJLcom/android/internal/os/BatteryStatsDBHelper$1;)V

    .restart local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method private getLastTotalEntry(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    const-string v2, "SELECT time,totalpower,batterypercent FROM [all]"

    invoke-virtual {p1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .local v1, "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;

    .end local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    const-string v2, "totalpower"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-string v4, "batterypercent"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;-><init>(DILcom/android/internal/os/BatteryStatsDBHelper$1;)V

    .restart local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method private declared-synchronized getScreenOffUsageList(Z)[B
    .locals 39
    .param p1, "needOffList"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v25

    .local v25, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v33, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v33 .. v33}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .local v33, "result":Lcom/android/internal/os/UidSipperImpl;
    const-string v10, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v11, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .local v20, "c":Landroid/database/Cursor;
    const-wide/16 v18, 0x0

    .local v18, "allUidTotalPower":D
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .local v22, "curTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getAppUsageStats()Ljava/util/Set;

    move-result-object v28

    .local v28, "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "name"

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .local v38, "val":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT lcd_condition,time,power FROM["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .local v34, "selectQuery":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .local v21, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v10, "lcd_condition"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .local v29, "lcdColumn":I
    const-string v10, "time"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .local v35, "timeColumn":I
    const-string v10, "power"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .local v32, "powerColumn":I
    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .local v5, "time":J
    sub-long v10, v22, v5

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    :cond_0
    new-instance v4, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v38

    invoke-direct {v4, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .local v4, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v36, 0x0

    .local v36, "totalPower":D
    const-wide/16 v8, 0x0

    .local v8, "power":D
    const/16 v30, 0x0

    .local v30, "lcdNtype":I
    const/16 v27, 0x0

    .local v27, "isUsingNetwork":Z
    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    and-int/lit8 v10, v10, 0x10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_2

    const/16 v26, 0x1

    .local v26, "isSystemApp":Z
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_7

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    if-nez p1, :cond_5

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    and-int/lit8 v10, v30, 0x4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    const/4 v7, 0x1

    .local v7, "lcdOn":Z
    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    add-double v36, v36, v8

    and-int/lit8 v10, v30, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    :goto_3
    or-int v27, v27, v10

    .end local v7    # "lcdOn":Z
    :cond_1
    :goto_4
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v5    # "time":J
    .end local v8    # "power":D
    .end local v18    # "allUidTotalPower":D
    .end local v20    # "c":Landroid/database/Cursor;
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v22    # "curTime":J
    .end local v25    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v26    # "isSystemApp":Z
    .end local v27    # "isUsingNetwork":Z
    .end local v28    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v29    # "lcdColumn":I
    .end local v30    # "lcdNtype":I
    .end local v32    # "powerColumn":I
    .end local v33    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v34    # "selectQuery":Ljava/lang/String;
    .end local v35    # "timeColumn":I
    .end local v36    # "totalPower":D
    .end local v38    # "val":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .restart local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .restart local v5    # "time":J
    .restart local v8    # "power":D
    .restart local v18    # "allUidTotalPower":D
    .restart local v20    # "c":Landroid/database/Cursor;
    .restart local v21    # "cursor":Landroid/database/Cursor;
    .restart local v22    # "curTime":J
    .restart local v25    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v27    # "isUsingNetwork":Z
    .restart local v28    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v29    # "lcdColumn":I
    .restart local v30    # "lcdNtype":I
    .restart local v32    # "powerColumn":I
    .restart local v33    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v34    # "selectQuery":Ljava/lang/String;
    .restart local v35    # "timeColumn":I
    .restart local v36    # "totalPower":D
    .restart local v38    # "val":Ljava/lang/String;
    :cond_2
    const/16 v26, 0x0

    goto :goto_1

    .restart local v26    # "isSystemApp":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .restart local v7    # "lcdOn":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .end local v7    # "lcdOn":Z
    :cond_5
    and-int/lit8 v10, v30, 0x8

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    :try_start_1
    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object v10, v4

    move-wide v11, v5

    move-wide v14, v8

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    add-double v36, v36, v8

    and-int/lit8 v10, v30, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_6

    const/4 v10, 0x1

    :goto_5
    or-int v27, v27, v10

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    goto :goto_5

    :cond_7
    const-string v10, "BatteryStatsDBHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " power:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v36

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v4, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    add-double v18, v18, v36

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v4}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    :cond_8
    :goto_6
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "added"

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_a
    if-eqz v27, :cond_8

    if-nez v26, :cond_8

    invoke-virtual {v4}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_6

    .end local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v5    # "time":J
    .end local v8    # "power":D
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v26    # "isSystemApp":Z
    .end local v27    # "isUsingNetwork":Z
    .end local v29    # "lcdColumn":I
    .end local v30    # "lcdNtype":I
    .end local v32    # "powerColumn":I
    .end local v34    # "selectQuery":Ljava/lang/String;
    .end local v35    # "timeColumn":I
    .end local v36    # "totalPower":D
    .end local v38    # "val":Ljava/lang/String;
    :cond_b
    const-wide/16 v10, 0x0

    cmpg-double v10, v18, v10

    if-gtz v10, :cond_c

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    :cond_c
    move-object/from16 v0, v33

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .end local v22    # "curTime":J
    .end local v28    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v31

    .local v31, "out":Landroid/os/Parcel;
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    invoke-virtual/range {v31 .. v31}, Landroid/os/Parcel;->marshall()[B

    move-result-object v24

    .local v24, "data":[B
    invoke-virtual/range {v31 .. v31}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v24
.end method

.method private declared-synchronized getScreenOffUsageListOnlyApp(Z)[B
    .locals 38
    .param p1, "needOffList"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v25

    .local v25, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v32, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v32 .. v32}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .local v32, "result":Lcom/android/internal/os/UidSipperImpl;
    const-string v10, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v11, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .local v20, "c":Landroid/database/Cursor;
    const-wide/16 v18, 0x0

    .local v18, "allUidTotalPower":D
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .local v22, "curTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getAppUsageStats()Ljava/util/Set;

    move-result-object v27

    .local v27, "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "name"

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .local v35, "val":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT lcd_condition,time,power FROM["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .local v33, "selectQuery":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .local v21, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v10, "lcd_condition"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .local v28, "lcdColumn":I
    const-string v10, "time"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .local v34, "timeColumn":I
    const-string v10, "power"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .local v31, "powerColumn":I
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .local v29, "lcdNtype":I
    and-int/lit8 v10, v29, 0x10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_0

    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "System app"

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v18    # "allUidTotalPower":D
    .end local v20    # "c":Landroid/database/Cursor;
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v22    # "curTime":J
    .end local v25    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v27    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v28    # "lcdColumn":I
    .end local v29    # "lcdNtype":I
    .end local v31    # "powerColumn":I
    .end local v32    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v33    # "selectQuery":Ljava/lang/String;
    .end local v34    # "timeColumn":I
    .end local v35    # "val":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .restart local v18    # "allUidTotalPower":D
    .restart local v20    # "c":Landroid/database/Cursor;
    .restart local v21    # "cursor":Landroid/database/Cursor;
    .restart local v22    # "curTime":J
    .restart local v25    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v27    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v28    # "lcdColumn":I
    .restart local v29    # "lcdNtype":I
    .restart local v31    # "powerColumn":I
    .restart local v32    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v33    # "selectQuery":Ljava/lang/String;
    .restart local v34    # "timeColumn":I
    .restart local v35    # "val":Ljava/lang/String;
    :cond_0
    :try_start_1
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .local v5, "time":J
    sub-long v10, v22, v5

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-ltz v10, :cond_1

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    :cond_1
    new-instance v4, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .local v4, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v36, 0x0

    .local v36, "totalPower":D
    const-wide/16 v8, 0x0

    .local v8, "power":D
    const/16 v26, 0x0

    .local v26, "isUsingNetwork":Z
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_7

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-nez p1, :cond_5

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    and-int/lit8 v10, v29, 0x4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    const/4 v7, 0x1

    .local v7, "lcdOn":Z
    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    add-double v36, v36, v8

    and-int/lit8 v10, v29, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    :goto_3
    or-int v26, v26, v10

    .end local v7    # "lcdOn":Z
    :cond_2
    :goto_4
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .restart local v7    # "lcdOn":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .end local v7    # "lcdOn":Z
    :cond_5
    const/16 v10, 0x8

    move/from16 v0, v29

    if-ne v0, v10, :cond_2

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object v10, v4

    move-wide v11, v5

    move-wide v14, v8

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    add-double v36, v36, v8

    and-int/lit8 v10, v29, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_6

    const/4 v10, 0x1

    :goto_5
    or-int v26, v26, v10

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    goto :goto_5

    :cond_7
    const-string v10, "BatteryStatsDBHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " power:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v36

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v4, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    add-double v18, v18, v36

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v4}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    :cond_8
    :goto_6
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "added"

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_a
    if-eqz v26, :cond_8

    invoke-virtual {v4}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_6

    .end local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v5    # "time":J
    .end local v8    # "power":D
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v26    # "isUsingNetwork":Z
    .end local v28    # "lcdColumn":I
    .end local v29    # "lcdNtype":I
    .end local v31    # "powerColumn":I
    .end local v33    # "selectQuery":Ljava/lang/String;
    .end local v34    # "timeColumn":I
    .end local v35    # "val":Ljava/lang/String;
    .end local v36    # "totalPower":D
    :cond_b
    const-wide/16 v10, 0x0

    cmpg-double v10, v18, v10

    if-gtz v10, :cond_c

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    :cond_c
    move-object/from16 v0, v32

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .end local v22    # "curTime":J
    .end local v27    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v30

    .local v30, "out":Landroid/os/Parcel;
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    invoke-virtual/range {v30 .. v30}, Landroid/os/Parcel;->marshall()[B

    move-result-object v24

    .local v24, "data":[B
    invoke-virtual/range {v30 .. v30}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v24
.end method

.method private declared-synchronized getTotalUsageList()[B
    .locals 28

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    .local v16, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v21, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .local v21, "result":Lcom/android/internal/os/UidSipperImpl;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .local v12, "curTime":J
    const-string v22, "SELECT lcd_condition,time,power FROM[all]"

    .local v22, "selectQuery":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .local v14, "cursor":Landroid/database/Cursor;
    const-string v10, "lcd_condition"

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .local v17, "lcdColumn":I
    const-string v10, "time"

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .local v23, "timeColumn":I
    const-string v10, "power"

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .local v20, "powerColumn":I
    new-instance v4, Lcom/android/internal/os/UidSipper;

    const-string v10, "all"

    invoke-direct {v4, v10}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .local v4, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v24, 0x0

    .local v24, "totalPower":D
    const-wide/16 v8, 0x0

    .local v8, "power":D
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_2

    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .local v5, "time":J
    sub-long v10, v12, v5

    const-wide/32 v26, 0x5265c00

    cmp-long v10, v10, v26

    if-ltz v10, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    :cond_0
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_2

    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .local v18, "lcdNtype":I
    const/4 v10, 0x4

    move/from16 v0, v18

    if-ne v0, v10, :cond_1

    const/4 v7, 0x1

    .local v7, "lcdOn":Z
    :goto_1
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    add-double v24, v24, v8

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v5    # "time":J
    .end local v7    # "lcdOn":Z
    .end local v8    # "power":D
    .end local v12    # "curTime":J
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v16    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v17    # "lcdColumn":I
    .end local v18    # "lcdNtype":I
    .end local v20    # "powerColumn":I
    .end local v21    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v22    # "selectQuery":Ljava/lang/String;
    .end local v23    # "timeColumn":I
    .end local v24    # "totalPower":D
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .restart local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .restart local v5    # "time":J
    .restart local v8    # "power":D
    .restart local v12    # "curTime":J
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17    # "lcdColumn":I
    .restart local v18    # "lcdNtype":I
    .restart local v20    # "powerColumn":I
    .restart local v21    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v22    # "selectQuery":Ljava/lang/String;
    .restart local v23    # "timeColumn":I
    .restart local v24    # "totalPower":D
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .end local v5    # "time":J
    .end local v18    # "lcdNtype":I
    :cond_2
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    const-string v10, "BatteryStatsDBHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Final set to all = "

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v19

    .local v19, "out":Landroid/os/Parcel;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->marshall()[B

    move-result-object v15

    .local v15, "data":[B
    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v15
.end method

.method private maintainDayData(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J

    .prologue
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking for old data before adding this new one at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name != \'android_metadata\' AND name != \'null\'"

    .local v0, "QUERY_GET_TABLES_NAME":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v6, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name != \'android_metadata\' AND name != \'null\'"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "name"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "tableName":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v5    # "tableName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .restart local v5    # "tableName":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/internal/os/BatteryStatsDBHelper;->deleteExceptDayData(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "tableName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    :cond_3
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v6

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v6
.end method

.method private maintainNotifiedAppList(J)V
    .locals 11
    .param p1, "curTime"    # J

    .prologue
    const-string v3, "BatteryStatsDBHelper"

    const-string v6, " maintainNotifiedAppList called "

    invoke-static {v3, v6}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .local v4, "thisTime":J
    sub-long v6, p1, v4

    const-wide/32 v8, 0x36ee80

    cmp-long v3, v6, v8

    if-ltz v3, :cond_0

    const-string v3, "BatteryStatsDBHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing package name from notified list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "thisTime":J
    :cond_1
    return-void
.end method

.method public static makemAh(D)Ljava/lang/String;
    .locals 6
    .param p0, "power"    # D

    .prologue
    const-wide/16 v2, 0x0

    cmpl-double v1, p0, v2

    if-nez v1, :cond_0

    const-string v1, "0"

    :goto_0
    return-object v1

    :cond_0
    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v1, p0, v2

    if-gez v1, :cond_1

    const-string v0, "%.8f"

    .local v0, "format":Ljava/lang/String;
    :goto_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v0    # "format":Ljava/lang/String;
    :cond_1
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, p0, v2

    if-gez v1, :cond_2

    const-string v0, "%.7f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "format":Ljava/lang/String;
    :cond_2
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, p0, v2

    if-gez v1, :cond_3

    const-string v0, "%.6f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "format":Ljava/lang/String;
    :cond_3
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, p0, v2

    if-gez v1, :cond_4

    const-string v0, "%.5f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "format":Ljava/lang/String;
    :cond_4
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, p0, v2

    if-gez v1, :cond_5

    const-string v0, "%.4f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "format":Ljava/lang/String;
    :cond_5
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_6

    const-string v0, "%.3f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "format":Ljava/lang/String;
    :cond_6
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_7

    const-string v0, "%.2f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "format":Ljava/lang/String;
    :cond_7
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_8

    const-string v0, "%.1f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "format":Ljava/lang/String;
    :cond_8
    const-string v0, "%.0f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1
.end method

.method private markAsNotified(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashMap;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "abuserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "notiValues":Landroid/content/ContentValues;
    const-string v4, "notified_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .local v3, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "packageName":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "power_consuming_packages"

    const-string v5, "packageName = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {p1, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "BatteryStatsDBHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updated abuse notification time for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "send.battery.drain.broadcast"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->mFakeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public declared-synchronized abusiveDetectionFromHCamp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "metaData"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .local v6, "time":J
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    move-result-object v2

    .local v2, "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmpl-double v0, v4, v10

    if-gtz v0, :cond_0

    const-string v0, "BatteryStatsDBHelper"

    const-string v3, "abusiveDetectionFromHCamp:: no total power"

    invoke-static {v0, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .end local v6    # "time":J
    :goto_0
    monitor-exit p0

    return-void

    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .restart local v6    # "time":J
    :cond_0
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    :try_start_1
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->checkPowerAbuseLocked(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v9, Landroid/content/Intent;

    const-string v0, "sec.intent.action.BATTERY_ABUSE"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v9, "i":Landroid/content/Intent;
    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .end local v6    # "time":J
    .end local v9    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abusiveDetectionFromHCamp exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized abusiveDetectionFromHCamp(Ljava/util/List;Ljava/lang/String;)V
    .locals 18
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .local v8, "time":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    move-result-object v4

    .local v4, "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpl-double v2, v14, v16

    if-gtz v2, :cond_0

    const-string v2, "BatteryStatsDBHelper"

    const-string v6, "abusiveDetectionFromHCamp:: no total power"

    invoke-static {v2, v6}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .end local v8    # "time":J
    :goto_0
    monitor-exit p0

    return-void

    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .restart local v8    # "time":J
    :cond_0
    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    .local v12, "size":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v12, :cond_1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "meta":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "packageName":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aget-object v5, v2, v6

    const-string v2, "BatteryStatsDBHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "abusiveDetectionFromHCamp:: packageName:"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " meta:"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->checkPowerAbuseLocked(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "meta":Ljava/lang/String;
    :cond_1
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "i":I
    const-string v2, "sec.intent.action.BATTERY_ABUSE"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v11, "i":Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .end local v8    # "time":J
    .end local v11    # "i":Landroid/content/Intent;
    .end local v12    # "size":I
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "BatteryStatsDBHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "abusiveDetectionFromHCamp exception : "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized addStatsToDB(ZZJLjava/util/ArrayList;IIDI)V
    .locals 37
    .param p1, "writeForScreenChange"    # Z
    .param p2, "screenOn"    # Z
    .param p3, "time"    # J
    .param p6, "batteryDelta"    # I
    .param p7, "currentBatteryPercent"    # I
    .param p8, "curTotalPower"    # D
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
    .local p5, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsDumper$PowerObject;>;"
    monitor-enter p0

    if-eqz p1, :cond_4

    if-nez p2, :cond_3

    const/16 v27, 0x1

    .local v27, "screenCondition":Z
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v27, :cond_5

    const/16 v23, 0x4

    .local v23, "lcdCondition":I
    :goto_1
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;

    .local v19, "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->totalPower:D

    move-wide/from16 v34, v0

    .local v34, "totalPower":D
    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->mobilePackets:J

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->wifiPackets:J

    add-long v28, v2, v4

    .local v28, "networkUsage":J
    move-object/from16 v0, v19

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->cpuTime:J

    .local v14, "cpuTime":J
    move/from16 v20, v23

    .local v20, "finalLcdCondition":I
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->getLastEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    move-result-object v22

    .local v22, "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    if-eqz v22, :cond_8

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->totalPower:D
    invoke-static/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->access$200(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)D

    move-result-wide v24

    .local v24, "lastTotalPower":D
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : lastTotalPower = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    sub-double v16, v34, v24

    .local v16, "diff":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_7

    move-wide/from16 v32, v16

    .local v32, "power":D
    const-string v3, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power[diff] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v32

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v27, :cond_6

    const-string v2, " on"

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->networkUsage:J
    invoke-static/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->access$300(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)J

    move-result-wide v2

    sub-long v30, v28, v2

    .local v30, "networkUseDiff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v30, v2

    if-eqz v2, :cond_1

    or-int/lit8 v20, v20, 0x20

    .end local v16    # "diff":D
    .end local v24    # "lastTotalPower":D
    .end local v30    # "networkUseDiff":J
    :cond_1
    :goto_5
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->uid:I

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_2

    or-int/lit8 v20, v20, 0x10

    :cond_2
    new-instance v36, Landroid/content/ContentValues;

    invoke-direct/range {v36 .. v36}, Landroid/content/ContentValues;-><init>()V

    .local v36, "values":Landroid/content/ContentValues;
    const-string v2, "lcd_condition"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "time"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "power"

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "totalpower"

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "network_usage"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "cpu_time"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "walarm"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->walarm:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v8, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .end local v14    # "cpuTime":J
    .end local v19    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v20    # "finalLcdCondition":I
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .end local v28    # "networkUsage":J
    .end local v32    # "power":D
    .end local v34    # "totalPower":D
    .end local v36    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v18

    .local v18, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStatsToDB IllegalStateException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v18    # "e":Ljava/lang/IllegalStateException;
    :goto_6
    monitor-exit p0

    return-void

    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v23    # "lcdCondition":I
    .end local v27    # "screenCondition":Z
    :cond_3
    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_4
    move/from16 v27, p2

    goto/16 :goto_0

    .restart local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v27    # "screenCondition":Z
    :cond_5
    const/16 v23, 0x8

    goto/16 :goto_1

    .restart local v14    # "cpuTime":J
    .restart local v16    # "diff":D
    .restart local v19    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .restart local v20    # "finalLcdCondition":I
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v22    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .restart local v23    # "lcdCondition":I
    .restart local v24    # "lastTotalPower":D
    .restart local v28    # "networkUsage":J
    .restart local v32    # "power":D
    .restart local v34    # "totalPower":D
    :cond_6
    :try_start_4
    const-string v2, " off"

    goto/16 :goto_3

    .end local v32    # "power":D
    :cond_7
    const-wide/16 v32, 0x0

    .restart local v32    # "power":D
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power[strange] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v34

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    .end local v14    # "cpuTime":J
    .end local v16    # "diff":D
    .end local v19    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v20    # "finalLcdCondition":I
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .end local v24    # "lastTotalPower":D
    .end local v28    # "networkUsage":J
    .end local v32    # "power":D
    .end local v34    # "totalPower":D
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v23    # "lcdCondition":I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "cpuTime":J
    .restart local v19    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .restart local v20    # "finalLcdCondition":I
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v22    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .restart local v23    # "lcdCondition":I
    .restart local v28    # "networkUsage":J
    .restart local v34    # "totalPower":D
    :cond_8
    const-wide/16 v32, 0x0

    .restart local v32    # "power":D
    const-wide/16 v2, 0x0

    cmp-long v2, v28, v2

    if-eqz v2, :cond_9

    or-int/lit8 v20, v20, 0x20

    :cond_9
    :try_start_6
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power[noLastSipper] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v34

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .end local v14    # "cpuTime":J
    .end local v19    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v20    # "finalLcdCondition":I
    .end local v22    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .end local v28    # "networkUsage":J
    .end local v32    # "power":D
    .end local v34    # "totalPower":D
    :cond_a
    const-string v2, "BatteryStatsDBHelper"

    const-string v3, "Writing for db : Total = all"

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/os/BatteryStatsDBHelper;->getLastTotalEntry(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;

    move-result-object v26

    .local v26, "mLastEntry":Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    const-wide/16 v32, 0x0

    .restart local v32    # "power":D
    const/4 v13, 0x0

    .local v13, "delta":I
    if-eqz v26, :cond_c

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->totalPower:D
    invoke-static/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->access$400(Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;)D

    move-result-wide v2

    sub-double v32, p8, v2

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->batteryLevel:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->access$500(Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;)I

    move-result v2

    sub-int v13, p10, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v32, v2

    if-gez v2, :cond_b

    const-wide/16 v32, 0x0

    :cond_b
    if-gez v13, :cond_c

    const/4 v13, 0x0

    :cond_c
    new-instance v36, Landroid/content/ContentValues;

    invoke-direct/range {v36 .. v36}, Landroid/content/ContentValues;-><init>()V

    .restart local v36    # "values":Landroid/content/ContentValues;
    const-string v2, "time"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "power"

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "totalpower"

    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "batterydelta"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "batterypercent"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "[all]"

    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v8, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v32

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsDBHelper;->addBatteryDelta(ZJIILandroid/database/sqlite/SQLiteDatabase;)V

    move-object/from16 v7, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p8

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/os/BatteryStatsDBHelper;->checkForPowerThreshold(Landroid/database/sqlite/SQLiteDatabase;JD)V

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_6
.end method

.method checkPowerAbuseLocked(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 24
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "totalTableDataSet"    # Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "metaData"    # Ljava/lang/String;
    .param p6, "curTime"    # J

    .prologue
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPowerAbuse called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v23

    .local v23, "uid":I
    const/4 v2, -0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_0

    .end local v23    # "uid":I
    :goto_0
    return-void

    .restart local v23    # "uid":I
    :cond_0
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .local v19, "strUid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "time"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "lcd_condition"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "power"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .local v11, "cursor":Landroid/database/Cursor;
    const-string v2, "lcd_condition"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .local v15, "lcdColumn":I
    const-string v2, "time"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .local v22, "timeColumn":I
    const-string v2, "power"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .local v18, "powerColumn":I
    const-wide/16 v16, 0x0

    .local v16, "lcdOffPowerInLastHour":D
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_2

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .local v20, "thisTime":J
    sub-long v2, p6, v20

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .local v12, "curPower":D
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .end local v12    # "curPower":D
    :goto_2
    add-double v16, v16, v12

    invoke-interface {v11}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v15    # "lcdColumn":I
    .end local v16    # "lcdOffPowerInLastHour":D
    .end local v18    # "powerColumn":I
    .end local v19    # "strUid":Ljava/lang/String;
    .end local v20    # "thisTime":J
    .end local v22    # "timeColumn":I
    .end local v23    # "uid":I
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPowerAbuse SQLiteException exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .end local v14    # "e":Ljava/lang/Exception;
    :goto_3
    const-string v2, "BatteryStatsDBHelper"

    const-string v3, "checkPowerAbuse finished"

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "curPower":D
    .restart local v15    # "lcdColumn":I
    .restart local v16    # "lcdOffPowerInLastHour":D
    .restart local v18    # "powerColumn":I
    .restart local v19    # "strUid":Ljava/lang/String;
    .restart local v20    # "thisTime":J
    .restart local v22    # "timeColumn":I
    .restart local v23    # "uid":I
    :cond_1
    const-wide/16 v12, 0x0

    goto :goto_2

    .end local v12    # "curPower":D
    .end local v20    # "thisTime":J
    :cond_2
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v2

    div-double v2, v16, v2

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I
    invoke-static/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v4

    int-to-double v4, v4

    mul-double v9, v2, v4

    .local v9, "percentage":D
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I
    invoke-static/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v2, v9, v2

    if-lez v2, :cond_3

    const-string v2, "BatteryStatsDBHelper"

    const-string v3, "Strange!!. Percentage is greater than battery delta"

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I
    invoke-static/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v2

    int-to-double v9, v2

    :cond_3
    const-string v2, "wakelock"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "gps"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD_HEALING_CAMP:D

    cmpg-double v2, v9, v2

    if-gez v2, :cond_6

    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "percentage i.e. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is less than ONE_HOUR_THRESHOLD for healing camp i.e. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD_HEALING_CAMP:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "ble"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting percentage to 1 as type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    :cond_6
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has consumed more than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD_HEALING_CAMP:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% battery in last 1 hour when LCD was off and found abusive by Hcamp type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " meta:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "total power in lastonehour:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "percentage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p6

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/os/BatteryStatsDBHelper;->addPowerConsumingApps(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public declared-synchronized deleteRecordsExceptLatest(I)V
    .locals 9
    .param p1, "maxNumOfItems"    # I

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v7, 0x8

    const/16 v8, 0x8

    :try_start_1
    invoke-virtual {p0, v2, v7, v8}, Lcom/android/internal/os/BatteryStatsDBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v7

    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name != \'android_metadata\' AND name != \'null\'"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .local v0, "QUERY_GET_TABLES_NAME":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "c":Landroid/database/Cursor;
    :try_start_6
    const-string v7, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name != \'android_metadata\' AND name != \'null\'"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "name"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "tableName":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .end local v6    # "tableName":Ljava/lang/String;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_2

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .restart local v6    # "tableName":Ljava/lang/String;
    invoke-direct {p0, v2, v6, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->deleteRecordsExceptLatest(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "tableName":Ljava/lang/String;
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_2
    move-exception v7

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_3
    move-exception v7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
.end method

.method declared-synchronized deleteTableForApp(Ljava/lang/String;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleting table for application: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "packageName"

    aput-object v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "requestingColumn":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string v1, "power_consuming_packages"

    const-string v3, "packageName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v11, v1
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v10    # "requestingColumn":[Ljava/lang/String;
    .local v11, "requestingColumn":[Ljava/lang/String;
    :try_start_2
    const-string v1, "power_consuming_packages"

    const-string v3, "packageName = ?"

    invoke-virtual {v0, v1, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v10, v11

    .end local v11    # "requestingColumn":[Ljava/lang/String;
    .restart local v10    # "requestingColumn":[Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_0

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_4
    const-string v1, "BatteryStatsDBHelper"

    const-string v3, "Package not found in the table power_consuming_packages"

    invoke-static {v1, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v9

    .local v9, "e":Landroid/database/SQLException;
    :goto_2
    :try_start_5
    const-string v1, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " deleteTableForApp SQLException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v8, :cond_0

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Landroid/database/SQLException;
    .end local v10    # "requestingColumn":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "requestingColumn":[Ljava/lang/String;
    :catchall_1
    move-exception v1

    :goto_3
    if-eqz v8, :cond_2

    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v10    # "requestingColumn":[Ljava/lang/String;
    .restart local v11    # "requestingColumn":[Ljava/lang/String;
    :catchall_2
    move-exception v1

    move-object v10, v11

    .end local v11    # "requestingColumn":[Ljava/lang/String;
    .restart local v10    # "requestingColumn":[Ljava/lang/String;
    goto :goto_3

    .end local v10    # "requestingColumn":[Ljava/lang/String;
    .restart local v11    # "requestingColumn":[Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v10, v11

    .end local v11    # "requestingColumn":[Ljava/lang/String;
    .restart local v10    # "requestingColumn":[Ljava/lang/String;
    goto :goto_2
.end method

.method declared-synchronized deleteTableForUid(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "BatteryStatsDBHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleting table for UID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "strUid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DROP TABLE IF EXISTS ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v3, "BatteryStatsDBHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " deleteTableForApp SQLException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Landroid/database/SQLException;
    .end local v2    # "strUid":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized dumpConsumingAppDetails(Ljava/io/PrintWriter;)V
    .locals 26
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss.SSS"

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v21, "sdf":Ljava/text/SimpleDateFormat;
    const-string v5, "power_consuming_packages"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .local v13, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    new-array v12, v5, [Ljava/lang/String;

    .local v12, "abuserList":[Ljava/lang/String;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "time"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .local v24, "timeColumn":I
    const-string v5, "packageName"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .local v17, "packageColumn":I
    const-string v5, "percentage"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .local v18, "percentageColumn":I
    const-string v5, "notified_time"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .local v16, "notifiedTimeColumn":I
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v12, v5, [Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .local v20, "sb":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, "index":I
    const-string v5, "Abusive app list:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v15, v14

    .end local v14    # "index":I
    .local v15, "index":I
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v5, "Package name: "

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .local v19, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " consumed "

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " was found abusive at: "

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v24

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and last notified at: "

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "index":I
    .restart local v14    # "index":I
    aput-object v19, v12, v15

    move v15, v14

    .end local v14    # "index":I
    .restart local v15    # "index":I
    goto :goto_0

    .end local v15    # "index":I
    .end local v16    # "notifiedTimeColumn":I
    .end local v17    # "packageColumn":I
    .end local v18    # "percentageColumn":I
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    .end local v24    # "timeColumn":I
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .local v22, "time":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    move-result-object v25

    .local v25, "totalData":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oneHourPower: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mAh, oneDayPower: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneDay:D
    invoke-static/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$1100(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mAh, oneHourBatteryDelta: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%, oneDayBatteryDelta: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneDay:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$1200(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "One Hour Threshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "One Hour Threshold for Healing Camp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD_HEALING_CAMP:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/os/BatteryStatsDBHelper;->dumpConsumingAppDetails(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "abuserList":[Ljava/lang/String;
    .end local v13    # "cursor":Landroid/database/Cursor;
    .end local v21    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v22    # "time":J
    .end local v25    # "totalData":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized dumpConsumingAppDetails(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 37
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "abuserList"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss.SSS"

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v24, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v10, p2

    .local v10, "arr$":[Ljava/lang/String;
    array-length v15, v10

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v15, :cond_2

    aget-object v16, v10, v12

    .local v16, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "lcd_condition"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .local v13, "lcdColumn":I
    const-string v3, "time"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .local v28, "timeColumn":I
    const-string v3, "power"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .local v22, "powerColumn":I
    const-string v3, "totalpower"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .local v29, "totalPowerColumn":I
    const-string v3, "network_usage"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .local v17, "networkColumn":I
    const-string v3, "cpu_time"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .local v32, "usageColumn":I
    const-string v3, "walarm"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .local v33, "wakeUpColumn":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " table: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "lcd |        time        |    power    |   totalpower |    network    |    cpu_time |    walarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .local v14, "lcdCondition":I
    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    .local v20, "power":D
    and-int/lit8 v3, v14, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    const-string v25, "OFF"

    .local v25, "strLcdCond":Ljava/lang/String;
    :goto_2
    move/from16 v0, v28

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .local v26, "time":J
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .local v23, "resultTime":Ljava/lang/String;
    move/from16 v0, v29

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v30

    .local v30, "totalPower":D
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .local v18, "networkUsage":J
    move/from16 v0, v32

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .local v34, "usageTime":J
    move/from16 v0, v33

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .local v36, "wakeUpCount":I
    const-string v3, "%s | %s | %11.5f | %11.5f | %13d | %13d | %10d"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v25, v4, v5

    const/4 v5, 0x1

    aput-object v23, v4, v5

    const/4 v5, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "i$":I
    .end local v13    # "lcdColumn":I
    .end local v14    # "lcdCondition":I
    .end local v15    # "len$":I
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "networkColumn":I
    .end local v18    # "networkUsage":J
    .end local v20    # "power":D
    .end local v22    # "powerColumn":I
    .end local v23    # "resultTime":Ljava/lang/String;
    .end local v24    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v25    # "strLcdCond":Ljava/lang/String;
    .end local v26    # "time":J
    .end local v28    # "timeColumn":I
    .end local v29    # "totalPowerColumn":I
    .end local v30    # "totalPower":D
    .end local v32    # "usageColumn":I
    .end local v33    # "wakeUpColumn":I
    .end local v34    # "usageTime":J
    .end local v36    # "wakeUpCount":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "i$":I
    .restart local v13    # "lcdColumn":I
    .restart local v14    # "lcdCondition":I
    .restart local v15    # "len$":I
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v17    # "networkColumn":I
    .restart local v20    # "power":D
    .restart local v22    # "powerColumn":I
    .restart local v24    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v28    # "timeColumn":I
    .restart local v29    # "totalPowerColumn":I
    .restart local v32    # "usageColumn":I
    .restart local v33    # "wakeUpColumn":I
    :cond_0
    :try_start_1
    const-string v25, " ON"

    goto :goto_2

    .end local v13    # "lcdColumn":I
    .end local v14    # "lcdCondition":I
    .end local v17    # "networkColumn":I
    .end local v20    # "power":D
    .end local v22    # "powerColumn":I
    .end local v28    # "timeColumn":I
    .end local v29    # "totalPowerColumn":I
    .end local v32    # "usageColumn":I
    .end local v33    # "wakeUpColumn":I
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v16    # "name":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized dumpUsageList(JZLjava/io/PrintWriter;)V
    .locals 27
    .param p1, "duration"    # J
    .param p3, "needOffList"    # Z
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v22, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .local v4, "c":Landroid/database/Cursor;
    const-wide/16 v2, 0x0

    .local v2, "allUidTotalPower":D
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .local v6, "curTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getAppUsageStats()Ljava/util/Set;

    move-result-object v9

    .local v9, "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v22

    if-nez v22, :cond_5

    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .local v19, "val":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SELECT lcd_condition,time,power FROM["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .local v15, "selectQuery":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v8, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .local v5, "cursor":Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v22, "lcd_condition"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .local v10, "lcdColumn":I
    const-string v22, "time"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .local v18, "timeColumn":I
    const-string v22, "power"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .local v14, "powerColumn":I
    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .local v16, "time":J
    const-wide/16 v20, 0x0

    .local v20, "totalPower":D
    const-wide/16 v12, 0x0

    .local v12, "power":D
    const/4 v11, 0x0

    .local v11, "lcdNtype":I
    sub-long v22, v6, v16

    const-wide/32 v24, 0x5265c00

    cmp-long v22, v22, v24

    if-ltz v22, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    :cond_0
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v22

    if-nez v22, :cond_3

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    sub-long v22, v6, v16

    cmp-long v22, v22, p1

    if-gez v22, :cond_1

    if-nez p3, :cond_2

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    add-double v20, v20, v12

    :cond_1
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v2    # "allUidTotalPower":D
    .end local v4    # "c":Landroid/database/Cursor;
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v6    # "curTime":J
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "lcdColumn":I
    .end local v11    # "lcdNtype":I
    .end local v12    # "power":D
    .end local v14    # "powerColumn":I
    .end local v15    # "selectQuery":Ljava/lang/String;
    .end local v16    # "time":J
    .end local v18    # "timeColumn":I
    .end local v19    # "val":Ljava/lang/String;
    .end local v20    # "totalPower":D
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .restart local v2    # "allUidTotalPower":D
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v5    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "curTime":J
    .restart local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "lcdColumn":I
    .restart local v11    # "lcdNtype":I
    .restart local v12    # "power":D
    .restart local v14    # "powerColumn":I
    .restart local v15    # "selectQuery":Ljava/lang/String;
    .restart local v16    # "time":J
    .restart local v18    # "timeColumn":I
    .restart local v19    # "val":Ljava/lang/String;
    .restart local v20    # "totalPower":D
    :cond_2
    and-int/lit8 v22, v11, 0x8

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    :try_start_1
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    add-double v20, v20, v12

    goto :goto_2

    :cond_3
    const-wide v22, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v22, v20, v22

    if-lez v22, :cond_4

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    add-double v2, v2, v20

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v10    # "lcdColumn":I
    .end local v11    # "lcdNtype":I
    .end local v12    # "power":D
    .end local v14    # "powerColumn":I
    .end local v15    # "selectQuery":Ljava/lang/String;
    .end local v16    # "time":J
    .end local v18    # "timeColumn":I
    .end local v19    # "val":Ljava/lang/String;
    .end local v20    # "totalPower":D
    :cond_5
    const-wide/16 v22, 0x0

    cmpg-double v22, v2, v22

    if-gtz v22, :cond_6

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :cond_6
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Total power: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v6    # "curTime":J
    .end local v9    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public dumpUsageList(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v2, 0x1

    const-string v0, "3 Hours batterystats in screen off:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/32 v0, 0xa4cb80

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->dumpUsageList(JZLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "24 Hours batterystats in screen off:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->dumpUsageList(JZLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public declared-synchronized getAbusiveAppList()[Ljava/lang/String;
    .locals 14

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "power_consuming_packages"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "packageName"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "percentage"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "packageName"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .local v12, "packageColumn":I
    const-string v1, "percentage"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .local v13, "percentageColumn":I
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v8, v1, [Ljava/lang/String;

    .local v8, "abuserList":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "index":I
    move v11, v10

    .end local v10    # "index":I
    .local v11, "index":I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "index":I
    .restart local v10    # "index":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v11

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move v11, v10

    .end local v10    # "index":I
    .restart local v11    # "index":I
    goto :goto_0

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "abuserList":[Ljava/lang/String;
    .end local v11    # "index":I
    .end local v12    # "packageColumn":I
    .end local v13    # "percentageColumn":I
    :goto_1
    monitor-exit p0

    return-object v8

    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    new-array v8, v1, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getAverageLevelDropPerHour(Ljava/lang/String;)D
    .locals 26
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SELECT usage_time,power FROM["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .local v16, "selectQuery":Ljava/lang/String;
    const-string v20, "BatteryStatsDBHelper"

    const-string v21, "getAverageLevelDropPerHour:: start"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour:: for package:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    const-string v20, "cpu_time"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .local v17, "usageTimeColumn":I
    const-string v20, "power"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .local v11, "powerColumn":I
    const-wide/16 v6, 0x0

    .local v6, "appUsageTime":J
    const-wide/16 v14, 0x0

    .local v14, "power":D
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v20

    if-eqz v20, :cond_1

    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .local v4, "appTotalTime":J
    move-wide v6, v4

    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour:: start loop appTotalTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v20

    if-eqz v20, :cond_1

    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .local v18, "tempTime":J
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop tempTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop before appTotalTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop before appUsageTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v20, v18, v4

    if-lez v20, :cond_0

    add-long v6, v6, v18

    :cond_0
    move-wide/from16 v4, v18

    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop after appUsageTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop after appTotalTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    add-double v14, v14, v20

    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop after power:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .end local v4    # "appTotalTime":J
    .end local v6    # "appUsageTime":J
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "powerColumn":I
    .end local v14    # "power":D
    .end local v16    # "selectQuery":Ljava/lang/String;
    .end local v17    # "usageTimeColumn":I
    .end local v18    # "tempTime":J
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v20, "BatteryStatsDBHelper"

    const-string v21, "getAverageLevelDropPerHour::  Exception"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v12, 0x0

    .end local v10    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-wide v12

    .restart local v6    # "appUsageTime":J
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11    # "powerColumn":I
    .restart local v14    # "power":D
    .restart local v16    # "selectQuery":Ljava/lang/String;
    .restart local v17    # "usageTimeColumn":I
    :cond_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "AverageLevelDropCalculation : Package = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Power = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Usage Time = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-nez v20, :cond_2

    const-wide/16 v6, 0x1

    :cond_2
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " getAverageLevelDropPerHour sBatteryCapacity : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-wide v22, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "appUsageTime : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v20, v20, v14

    const-wide v22, 0x40ac200000000000L    # 3600.0

    mul-double v20, v20, v22

    const-wide v22, 0x408f400000000000L    # 1000.0

    mul-double v20, v20, v22

    long-to-double v0, v6

    move-wide/from16 v22, v0

    sget-wide v24, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    mul-double v22, v22, v24

    div-double v12, v20, v22

    .local v12, "i":D
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  returning i:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .end local v6    # "appUsageTime":J
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "powerColumn":I
    .end local v12    # "i":D
    .end local v14    # "power":D
    .end local v16    # "selectQuery":Ljava/lang/String;
    .end local v17    # "usageTimeColumn":I
    :catchall_0
    move-exception v20

    monitor-exit p0

    throw v20
.end method

.method public declared-synchronized getBatteryTotalDelta(I)I
    .locals 7
    .param p1, "screenCondition"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "SELECT batterydelta,lcd_condition FROM Battery_Delta"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .local v1, "cursor":Landroid/database/Cursor;
    const-string v5, "batterydelta"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, "batteryDeltaColumn":I
    const-string v5, "lcd_condition"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .local v3, "lcdColumn":I
    const/4 v4, 0x0

    .local v4, "totalDelta":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v5, 0x2

    if-ne p1, v5, :cond_3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v4

    :cond_3
    :try_start_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    .end local v0    # "batteryDeltaColumn":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "lcdColumn":I
    .end local v4    # "totalDelta":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method getUidFromPackageName(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .local v2, "uid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BatteryStatsDBHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appname: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] not Found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUsageList(I)[B
    .locals 4
    .param p1, "screenCondition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong screen condition. Please check BatteryStatsDBHandler.java"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->getScreenOffUsageList(Z)[B

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_1
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd off data"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->getScreenOffUsageList(Z)[B

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data(only app)"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->getScreenOffUsageListOnlyApp(Z)[B

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd off data(only app)"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->getScreenOffUsageListOnlyApp(Z)[B

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting summation of lcd all data(only app)"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getTotalUsageList()[B

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting battery percentage data"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getBatteryPercentageList()[B

    move-result-object v0

    goto :goto_0

    :sswitch_6
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data(only app) with power consumer list"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getConsumerListOnlyApp()[B

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
    .end sparse-switch
.end method

.method public declared-synchronized handleTimeChange()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->calculateTimeChange()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .local v2, "delta":J
    cmp-long v8, v2, v10

    if-nez v8, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const-wide/32 v8, 0x5265c00

    cmp-long v8, v2, v8

    if-ltz v8, :cond_1

    :try_start_1
    const-string v8, "BatteryStatsDBHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time delta is too big "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " init db"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v8, 0x8

    const/16 v9, 0x8

    :try_start_2
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "delta":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "delta":J
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    cmp-long v8, v2, v10

    if-lez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "deltaStr":Ljava/lang/String;
    :goto_1
    const-string v8, "BatteryStatsDBHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time diff = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v8, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\'"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .local v5, "listCursor":Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "name"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "strUid":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UPDATE ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " SET time=time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "updateString":Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .end local v5    # "listCursor":Landroid/database/Cursor;
    .end local v6    # "strUid":Ljava/lang/String;
    .end local v7    # "updateString":Ljava/lang/String;
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "Updated db with new timestamps"

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "deltaStr":Ljava/lang/String;
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v1

    goto :goto_1

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "deltaStr":Ljava/lang/String;
    .restart local v5    # "listCursor":Landroid/database/Cursor;
    :cond_3
    :try_start_9
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UPDATE Battery_Delta SET time=time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "updateString":Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UPDATE power_consuming_packages SET time=time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", notified_time=notified_time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .end local v5    # "listCursor":Landroid/database/Cursor;
    .end local v7    # "updateString":Ljava/lang/String;
    :catchall_2
    move-exception v8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method declared-synchronized modifyHealingCampThresholdIfNecessary()V
    .locals 8

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "modifyHealingCampThresholdIfNecessary called "

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/os/BatteryStatsDBHelper;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cThreshold":Landroid/database/Cursor;
    if-nez v6, :cond_0

    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "cursor null in modifyHealingCampThresholdIfNecessary"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "cThreshold":Landroid/database/Cursor;
    :goto_0
    monitor-exit p0

    return-void

    .restart local v6    # "cThreshold":Landroid/database/Cursor;
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "cursor empty in modifyHealingCampThresholdIfNecessary"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v6    # "cThreshold":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "modifyHealingCampThresholdIfNecessary remote exception "

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v6    # "cThreshold":Landroid/database/Cursor;
    :cond_1
    :goto_1
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "one_hr_healingcamp_threshold"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD_HEALING_CAMP:D

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized modifyThresholdIfNecessary()V
    .locals 8

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "modifyThresholdIfNecessary called "

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/os/BatteryStatsDBHelper;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cThreshold":Landroid/database/Cursor;
    if-nez v6, :cond_0

    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "cursor null in modifyThresholdIfNecessary"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "cThreshold":Landroid/database/Cursor;
    :goto_0
    monitor-exit p0

    return-void

    .restart local v6    # "cThreshold":Landroid/database/Cursor;
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "cursor empty in modifyThresholdIfNecessary"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v6    # "cThreshold":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "modifyThresholdIfNecessary remote exception "

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v6    # "cThreshold":Landroid/database/Cursor;
    :cond_1
    :goto_1
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "one_hr_battery_threshold"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD:D

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-string v0, "CREATE TABLE Battery_Delta(lcd_condition INTEGER,time LONG,batterydelta INTEGER,batterypercent INTEGER)"

    .local v0, "CREATE_BATTERY_DELTA_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TABLE power_consuming_packages(time LONG,packageName TEXT,percentage DOUBLE,notified_time LONG,abusive_type TEXT,meta_data TEXT)"

    .local v2, "createPowerConsumingPackageTable":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE [all](time LONG,power DOUBLE,totalpower DOUBLE,batterydelta INTEGER,batterypercent INTEGER)"

    .local v1, "createAllPowerTable":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "tables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "SELECT * FROM sqlite_master WHERE type=\'table\';"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "tableName":Ljava/lang/String;
    const-string v4, "android_metadata"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "sqlite_sequence"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .end local v2    # "tableName":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

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

    .end local v2    # "tableName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
