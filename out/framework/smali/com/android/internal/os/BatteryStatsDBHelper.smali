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
    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->unNotifiedAbuserMap:Ljava/util/HashMap;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    .line 167
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
    .line 174
    const-string/jumbo v0, "powerManager"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 148
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD:D

    .line 151
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD_HEALING_CAMP:D

    .line 219
    new-instance v0, Lcom/android/internal/os/BatteryStatsDBHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsDBHelper$1;-><init>(Lcom/android/internal/os/BatteryStatsDBHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->mFakeReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    sput-object p1, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    .line 176
    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sSystemTimeSnapshot:J

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sRealTimeSnapshot:J

    .line 179
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->registerReceiver()V

    .line 180
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
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
    .line 363
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    sget-boolean v3, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 365
    .local v1, "screenCondition":Z
    :goto_0
    if-eqz v1, :cond_2

    const/4 v0, 0x4

    .line 367
    .local v0, "lcdCondition":I
    :goto_1
    invoke-direct {p0, p6, p2, p3}, Lcom/android/internal/os/BatteryStatsDBHelper;->maintainDayData(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 369
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 370
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "lcd_condition"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    const-string/jumbo v3, "time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 372
    const-string v3, "batterydelta"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    const-string v3, "batterypercent"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    const-string v3, "Battery_Delta"

    const/4 v4, 0x0

    invoke-virtual {p6, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    .line 363
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

    .line 365
    .restart local v1    # "screenCondition":Z
    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    .line 363
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
    .line 897
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "packageName"

    aput-object v2, v3, v1

    .line 898
    .local v3, "columns":[Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 899
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 900
    const-string/jumbo v1, "packageName"

    invoke-virtual {v10, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string/jumbo v1, "percentage"

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 902
    const-string v1, "abusive_type"

    move-object/from16 v0, p5

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string/jumbo v1, "meta_data"

    move-object/from16 v0, p6

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string/jumbo v2, "power_consuming_packages"

    const-string/jumbo v4, "packageName = ?"

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

    .line 907
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 908
    :cond_0
    const-string/jumbo v1, "power_consuming_packages"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 909
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

    .line 915
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 916
    return-void

    .line 911
    :cond_1
    const-string/jumbo v1, "power_consuming_packages"

    const-string/jumbo v2, "packageName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    invoke-virtual {p1, v1, v10, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 913
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
    .line 868
    .local p4, "abuserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "packageName"

    aput-object v2, v3, v1

    .line 869
    .local v3, "columns":[Ljava/lang/String;
    const-string v9, "battery"

    .line 871
    .local v9, "abusiveType":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    .line 872
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

    .line 873
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 875
    .local v13, "packageName":Ljava/lang/String;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 876
    .local v15, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "time"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 877
    const-string/jumbo v1, "packageName"

    invoke-virtual {v15, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string/jumbo v2, "percentage"

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v15, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 879
    const-string v1, "abusive_type"

    invoke-virtual {v15, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string/jumbo v2, "power_consuming_packages"

    const-string/jumbo v4, "packageName = ?"

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

    .line 883
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 884
    :cond_0
    const-string/jumbo v1, "power_consuming_packages"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 885
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

    .line 892
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 887
    :cond_1
    const-string/jumbo v1, "power_consuming_packages"

    const-string/jumbo v2, "packageName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v15, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 889
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

    .line 894
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
    .line 1632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1633
    .local v2, "actualSystemTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1634
    .local v0, "actualRealtime":J
    sget-wide v10, Lcom/android/internal/os/BatteryStatsDBHelper;->sRealTimeSnapshot:J

    sub-long v10, v0, v10

    sget-wide v12, Lcom/android/internal/os/BatteryStatsDBHelper;->sSystemTimeSnapshot:J

    add-long v4, v10, v12

    .line 1636
    .local v4, "expectedSystemTime":J
    sub-long v8, v2, v4

    .line 1637
    .local v8, "timeDiff":J
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 1638
    .local v6, "time":J
    sput-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sRealTimeSnapshot:J

    .line 1639
    sput-wide v2, Lcom/android/internal/os/BatteryStatsDBHelper;->sSystemTimeSnapshot:J

    .line 1641
    const-wide/16 v10, 0x7d0

    cmp-long v10, v6, v10

    if-lez v10, :cond_0

    .line 1646
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
    .line 601
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

    .line 603
    const-string v6, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 604
    .local v17, "c":Landroid/database/Cursor;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_1

    .line 605
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 606
    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "checkForPowerThreshold:: no tables found, closing cursor"

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v16, "appSippersForLastHour":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/UidSipper;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v15, "appSippersFor24Hours":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/UidSipper;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->maintainNotifiedAppList(J)V

    .line 614
    sget-boolean v6, Lcom/android/internal/os/BatteryStatsDumper;->mIsOnBattery:Z

    if-nez v6, :cond_2

    .line 615
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 619
    :cond_2
    invoke-direct/range {p0 .. p3}, Lcom/android/internal/os/BatteryStatsDBHelper;->collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    move-result-object v42

    .line 620
    .local v42, "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static/range {v42 .. v42}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmpl-double v6, v6, v10

    if-gtz v6, :cond_3

    .line 621
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 625
    :cond_3
    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "time"

    aput-object v7, v8, v6

    const/4 v6, 0x1

    const-string v7, "lcd_condition"

    aput-object v7, v8, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "power"

    aput-object v7, v8, v6

    .line 626
    .local v8, "requestingColumn":[Ljava/lang/String;
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_d

    .line 627
    const-string/jumbo v6, "name"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 628
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

    .line 630
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

    .line 634
    .local v21, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToLast()Z

    move-result v6

    if-nez v6, :cond_4

    .line 636
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

    .line 637
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 638
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 642
    :cond_4
    const-string v6, "lcd_condition"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 643
    .local v26, "lcdColumn":I
    const-string/jumbo v6, "time"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 644
    .local v39, "timeColumn":I
    const-string/jumbo v6, "power"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 645
    .local v33, "powerColumn":I
    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_5

    const/16 v25, 0x1

    .line 647
    .local v25, "isSystemUid":Z
    :goto_2
    if-eqz v25, :cond_6

    .line 648
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 649
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 645
    .end local v25    # "isSystemUid":Z
    :cond_5
    const/16 v25, 0x0

    goto :goto_2

    .line 654
    .restart local v25    # "isSystemUid":Z
    :cond_6
    const/4 v14, 0x0

    .line 655
    .local v14, "appSipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v30, 0x0

    .line 656
    .local v30, "lcdOffPowerInLastHour":D
    :goto_3
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_8

    .line 657
    move-object/from16 v0, v21

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 658
    .local v40, "thisTime":J
    sub-long v6, p2, v40

    const-wide/32 v10, 0x36ee80

    cmp-long v6, v6, v10

    if-gez v6, :cond_8

    .line 659
    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 660
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

    .line 665
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_3

    .line 660
    .restart local v18    # "curPower":D
    :cond_7
    const-wide/16 v18, 0x0

    goto :goto_4

    .line 667
    .end local v18    # "curPower":D
    .end local v40    # "thisTime":J
    :cond_8
    const-wide/16 v6, 0x0

    cmpl-double v6, v30, v6

    if-lez v6, :cond_9

    .line 668
    new-instance v14, Lcom/android/internal/os/UidSipper;

    .end local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    move-object/from16 v0, v38

    invoke-direct {v14, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 669
    .restart local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    move-wide/from16 v0, v30

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 670
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_9
    move-wide/from16 v28, v30

    .line 675
    .local v28, "lcdOffPowerIn24Hours":D
    :goto_5
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_b

    .line 676
    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 677
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

    .line 679
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_5

    .line 677
    .restart local v18    # "curPower":D
    :cond_a
    const-wide/16 v18, 0x0

    goto :goto_6

    .line 681
    .end local v18    # "curPower":D
    :cond_b
    const-wide/16 v6, 0x0

    cmpl-double v6, v28, v6

    if-lez v6, :cond_c

    .line 682
    new-instance v14, Lcom/android/internal/os/UidSipper;

    .end local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    move-object/from16 v0, v38

    invoke-direct {v14, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 683
    .restart local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    move-wide/from16 v0, v28

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 684
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_c
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 687
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 689
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

    .line 691
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 695
    :cond_e
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 696
    .local v20, "currentAbuserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    sget-boolean v6, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-eqz v6, :cond_11

    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->unNotifiedAbuserMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    const/16 v36, 0x1

    .line 698
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

    .line 699
    .local v37, "sipper":Lcom/android/internal/os/UidSipper;
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I
    invoke-static/range {v42 .. v42}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v27

    .line 700
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

    .line 702
    .local v34, "percentage":D
    move/from16 v0, v27

    int-to-double v6, v0

    cmpl-double v6, v34, v6

    if-lez v6, :cond_10

    .line 703
    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "Strange!!. Percentage is greater than battery delta"

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v34, v0

    .line 707
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

    .line 708
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD:D

    cmpl-double v6, v34, v6

    if-lez v6, :cond_f

    .line 709
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

    .line 713
    :try_start_0
    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    .line 714
    .local v43, "uid":I
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->getDefaultPackageName(I)Ljava/lang/String;

    move-result-object v32

    .line 715
    .local v32, "packageName":Ljava/lang/String;
    if-eqz v32, :cond_f

    .line 717
    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 721
    sget-boolean v6, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-eqz v6, :cond_12

    .line 722
    or-int/lit8 v36, v36, 0x1

    .line 726
    :goto_9
    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->unNotifiedAbuserMap:Ljava/util/HashMap;

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    .line 728
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v43    # "uid":I
    :catch_0
    move-exception v22

    .line 729
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

    .line 696
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v27    # "oneHourTotalDelta":I
    .end local v34    # "percentage":D
    .end local v36    # "sendBroadcast":Z
    .end local v37    # "sipper":Lcom/android/internal/os/UidSipper;
    :cond_11
    const/16 v36, 0x0

    goto/16 :goto_7

    .line 724
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

    .line 734
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

    .line 736
    sget-boolean v6, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-eqz v6, :cond_14

    .line 737
    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->unNotifiedAbuserMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/internal/os/BatteryStatsDBHelper;->markAsNotified(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashMap;)V

    .line 738
    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->unNotifiedAbuserMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 741
    :cond_14
    if-eqz v36, :cond_15

    .line 742
    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "Sending Battery abuse broadcast"

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    new-instance v23, Landroid/content/Intent;

    const-string/jumbo v6, "sec.intent.action.BATTERY_ABUSE"

    move-object/from16 v0, v23

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .local v23, "i":Landroid/content/Intent;
    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 747
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
    .line 766
    const-string v1, "[all]"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v7, "time"

    aput-object v7, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v7, "power"

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

    .line 769
    .local v9, "cursor":Landroid/database/Cursor;
    const-wide/16 v1, 0x0

    .line 770
    .local v1, "oneHourPower":D
    const-wide/16 v4, 0x0

    .line 771
    .local v4, "oneDayPower":D
    const/4 v3, 0x0

    .line 772
    .local v3, "oneHourBatteryDelta":I
    const/4 v6, 0x0

    .line 774
    .local v6, "oneDayBatteryDelta":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    const-string/jumbo v0, "time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 776
    .local v11, "timeColumn":I
    const-string/jumbo v0, "power"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 777
    .local v10, "powerColumn":I
    const-string v0, "batterydelta"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 778
    .local v8, "batteryColumn":I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 780
    .local v12, "time":J
    sub-long v14, p2, v12

    const-wide/32 v16, 0x36ee80

    cmp-long v0, v14, v16

    if-gez v0, :cond_0

    .line 781
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    add-double/2addr v1, v14

    .line 782
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v3, v0

    .line 786
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_0

    .line 789
    .end local v12    # "time":J
    :cond_0
    move-wide v4, v1

    .line 790
    move v6, v3

    .line 791
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 792
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    add-double/2addr v4, v14

    .line 793
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v6, v0

    .line 794
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_1

    .line 797
    .end local v8    # "batteryColumn":I
    .end local v10    # "powerColumn":I
    .end local v11    # "timeColumn":I
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 798
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
    .line 256
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

    const-string/jumbo v3, "time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LONG"

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

    const-string/jumbo v3, "totalpower"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DOUBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "network_usage"

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

    .line 261
    .local v0, "CREATE_POWER_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    const/4 v2, 0x1

    .end local v0    # "CREATE_POWER_TABLE":Ljava/lang/String;
    :goto_0
    return v2

    .line 262
    :catch_0
    move-exception v1

    .line 263
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

    .line 264
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static deleteDatabase()Z
    .locals 3

    .prologue
    .line 1650
    sget-object v1, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "powerManager"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v0

    .line 1651
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 1652
    const-string v1, "BatteryStatsDBHelper"

    const-string v2, "Database has been deleted"

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    :goto_0
    return v0

    .line 1654
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
    .line 804
    const-wide/16 v6, 0x7d0

    add-long v0, p2, v6

    .line 805
    .local v0, "maxTime":J
    const-wide/32 v6, 0x5265c00

    sub-long v2, p2, v6

    .line 807
    .local v2, "minTime":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    const-wide/16 v2, 0x0

    .line 809
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

    .line 810
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

    const-string/jumbo v6, "time > ? OR time <= ?"

    invoke-virtual {p1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 812
    return-void
.end method

.method private deleteRecordsExceptLatest(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName_"    # Ljava/lang/String;
    .param p3, "maxNumOfItems"    # I

    .prologue
    .line 1905
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

    .line 1906
    .local v5, "tableName":Ljava/lang/String;
    invoke-static {p1, v5}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 1909
    .local v0, "numOfItems":J
    int-to-long v6, p3

    sub-long v2, v0, v6

    .line 1910
    .local v2, "numOfRemoval":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 1911
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

    .line 1914
    .local v4, "query":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1916
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
    .line 190
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 192
    .local v9, "launchedPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "usagestats"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 195
    .local v0, "mUsageStatsManager":Landroid/app/usage/UsageStatsManager;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 196
    .local v6, "cal":Ljava/util/Calendar;
    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-virtual {v6, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 198
    const/4 v1, 0x4

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v11

    .line 200
    .local v11, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-nez v11, :cond_1

    .line 210
    :cond_0
    return-object v9

    .line 204
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    .line 205
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 206
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStats;

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 207
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

    .line 208
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private declared-synchronized getBatteryPercentageList()[B
    .locals 22

    .prologue
    .line 1408
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 1409
    .local v15, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v18, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 1410
    .local v18, "result":Lcom/android/internal/os/UidSipperImpl;
    new-instance v2, Lcom/android/internal/os/UidSipper;

    const-string v8, "Battery"

    invoke-direct {v2, v8}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 1412
    .local v2, "sipper":Lcom/android/internal/os/UidSipper;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1414
    .local v12, "curTime":J
    const-string v8, "SELECT lcd_condition,time,batterypercent FROM Battery_Delta"

    const/4 v9, 0x0

    invoke-virtual {v15, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1415
    .local v11, "cursor":Landroid/database/Cursor;
    const-string v8, "lcd_condition"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1416
    .local v16, "lcdColumn":I
    const-string/jumbo v8, "time"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1417
    .local v19, "timeColumn":I
    const-string v8, "batterypercent"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1422
    .local v10, "batteryPercColumn":I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1424
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1425
    .local v3, "time":J
    sub-long v8, v12, v3

    const-wide/32 v20, 0x5265c00

    cmp-long v8, v8, v20

    if-ltz v8, :cond_0

    .line 1426
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 1428
    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1429
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    const/4 v5, 0x1

    .line 1430
    .local v5, "lcdOn":Z
    :goto_1
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1431
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-double v6, v8

    .line 1432
    .local v6, "batteryPerc":D
    const-wide/16 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1433
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1408
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

    .line 1429
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

    .line 1436
    .end local v3    # "time":J
    :cond_2
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1439
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v17

    .line 1442
    .local v17, "out":Landroid/os/Parcel;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1443
    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->marshall()[B

    move-result-object v14

    .line 1444
    .local v14, "data":[B
    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1445
    monitor-exit p0

    return-object v14
.end method

.method private declared-synchronized getConsumerListOnlyApp()[B
    .locals 34

    .prologue
    .line 1449
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    .line 1450
    .local v18, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v26, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v26 .. v26}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 1452
    .local v26, "result":Lcom/android/internal/os/UidSipperImpl;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1454
    .local v14, "curTime":J
    const-string v8, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v9, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1455
    .local v11, "c":Landroid/database/Cursor;
    const-wide/16 v12, 0x0

    .line 1456
    .local v12, "allUidTotalPower":D
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1457
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getAppUsageStats()Ljava/util/Set;

    move-result-object v20

    .line 1458
    .local v20, "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1459
    const-string/jumbo v8, "name"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1461
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

    .line 1462
    .local v27, "selectQuery":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1463
    .local v16, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1465
    const-string v8, "lcd_condition"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 1466
    .local v21, "lcdColumn":I
    const-string/jumbo v8, "time"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1467
    .local v28, "timeColumn":I
    const-string/jumbo v8, "power"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 1469
    .local v25, "powerColumn":I
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1470
    .local v22, "lcdNtype":I
    and-int/lit8 v8, v22, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_0

    .line 1471
    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "System app"

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1473
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1449
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

    .line 1478
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

    .line 1479
    .local v3, "time":J
    sub-long v8, v14, v3

    const-wide/32 v32, 0x5265c00

    cmp-long v8, v8, v32

    if-ltz v8, :cond_1

    .line 1480
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 1483
    :cond_1
    new-instance v2, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 1485
    .local v2, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v30, 0x0

    .local v30, "totalPower":D
    const-wide/16 v6, 0x0

    .line 1486
    .local v6, "power":D
    const/16 v19, 0x0

    .line 1487
    .local v19, "isUsingNetwork":Z
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1488
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1489
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1490
    and-int/lit8 v8, v22, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    const/4 v5, 0x1

    .line 1491
    .local v5, "lcdOn":Z
    :goto_2
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    .line 1492
    const-wide/16 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1493
    add-double v30, v30, v6

    .line 1494
    and-int/lit8 v8, v22, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_3
    or-int v19, v19, v8

    .line 1495
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1490
    .end local v5    # "lcdOn":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 1494
    .restart local v5    # "lcdOn":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 1497
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

    .line 1499
    iget-object v8, v2, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1500
    move-wide/from16 v0, v30

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 1501
    add-double v12, v12, v30

    .line 1502
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1503
    invoke-virtual {v2}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    .line 1507
    :cond_5
    :goto_4
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1508
    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "added"

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1512
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 1504
    :cond_7
    if-eqz v19, :cond_5

    .line 1505
    invoke-virtual {v2}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_4

    .line 1515
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

    .line 1516
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 1517
    :cond_9
    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .line 1519
    .end local v20    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1522
    const-string v27, "SELECT  * FROM power_consuming_packages"

    .line 1523
    .restart local v27    # "selectQuery":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1525
    .restart local v16    # "cursor":Landroid/database/Cursor;
    const-string/jumbo v8, "time"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1526
    .restart local v28    # "timeColumn":I
    const-string/jumbo v8, "packageName"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1528
    .local v10, "abuserNameColumn":I
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/UidSipperImpl;->initializeConsumerList()V

    .line 1531
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1533
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1534
    .restart local v3    # "time":J
    sub-long v8, v14, v3

    const-wide/32 v32, 0x5265c00

    cmp-long v8, v8, v32

    if-ltz v8, :cond_b

    .line 1535
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 1538
    :cond_b
    :goto_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_c

    .line 1539
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1540
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1541
    .local v23, "names":Ljava/lang/String;
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/os/UidSipperImpl;->addConsumerPackages(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5

    .line 1545
    .end local v3    # "time":J
    .end local v23    # "names":Ljava/lang/String;
    :cond_c
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v24

    .line 1549
    .local v24, "out":Landroid/os/Parcel;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1550
    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->marshall()[B

    move-result-object v17

    .line 1551
    .local v17, "data":[B
    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1552
    monitor-exit p0

    return-object v17
.end method

.method private getDefaultPackageName(I)Ljava/lang/String;
    .locals 21
    .param p1, "uid"    # I

    .prologue
    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    .line 296
    .local v15, "packages":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 299
    .local v6, "defaultPkgName":Ljava/lang/String;
    if-eqz v15, :cond_4

    .line 300
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/String;

    .line 301
    .local v14, "packageLabels":[Ljava/lang/String;
    const/16 v18, 0x0

    const/16 v19, 0x0

    array-length v0, v15

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v15, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_3

    .line 305
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    aget-object v19, v14, v8

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 307
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_1

    .line 308
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

    .line 303
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 312
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 313
    .local v10, "label":Ljava/lang/CharSequence;
    if-eqz v10, :cond_2

    .line 314
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v8

    .line 316
    :cond_2
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 317
    aget-object v6, v15, v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "label":Ljava/lang/CharSequence;
    :cond_3
    array-length v0, v15

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 327
    const/16 v18, 0x0

    aget-object v6, v15, v18

    .line 357
    .end local v8    # "i":I
    .end local v14    # "packageLabels":[Ljava/lang/String;
    :cond_4
    :goto_2
    const-string v18, "BatteryStatsDBHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "returned pkgname = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-object v6

    .line 320
    .restart local v8    # "i":I
    .restart local v14    # "packageLabels":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 321
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

    .line 330
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

    .line 332
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

    .line 333
    .local v16, "pi":Landroid/content/pm/PackageInfo;
    if-nez v16, :cond_7

    .line 334
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

    .line 330
    .end local v16    # "pi":Landroid/content/pm/PackageInfo;
    :cond_6
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 338
    .restart local v16    # "pi":Landroid/content/pm/PackageInfo;
    :cond_7
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 339
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

    .line 341
    .local v13, "nm":Ljava/lang/CharSequence;
    if-eqz v13, :cond_6

    .line 342
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 343
    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 344
    move-object/from16 v6, v17

    .line 346
    :cond_8
    const-string v18, "BatteryStatsDBHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "name = "

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

    .line 350
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "nm":Ljava/lang/CharSequence;
    .end local v16    # "pi":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v7

    .line 351
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
    .line 183
    const-class v1, Lcom/android/internal/os/BatteryStatsDBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    .line 186
    :cond_0
    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 183
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

    .line 933
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

    .line 934
    .local v9, "selectQuery":Ljava/lang/String;
    invoke-virtual {p1, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 935
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 936
    .local v1, "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 937
    new-instance v1, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    .end local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    const-string/jumbo v2, "time"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string/jumbo v4, "totalpower"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const-string/jumbo v6, "network_usage"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;-><init>(JDJLcom/android/internal/os/BatteryStatsDBHelper$1;)V

    .line 941
    .restart local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 942
    return-object v1
.end method

.method private getLastTotalEntry(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 968
    const-string v2, "SELECT time,totalpower,batterypercent FROM [all]"

    invoke-virtual {p1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 969
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 970
    .local v1, "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 971
    new-instance v1, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;

    .end local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    const-string/jumbo v2, "totalpower"

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

    .line 975
    .restart local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 976
    return-object v1
.end method

.method private declared-synchronized getScreenOffUsageList(Z)[B
    .locals 39
    .param p1, "needOffList"    # Z

    .prologue
    .line 1191
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v25

    .line 1192
    .local v25, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v33, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v33 .. v33}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 1194
    .local v33, "result":Lcom/android/internal/os/UidSipperImpl;
    const-string v10, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v11, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1195
    .local v20, "c":Landroid/database/Cursor;
    const-wide/16 v18, 0x0

    .line 1196
    .local v18, "allUidTotalPower":D
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1198
    .local v22, "curTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getAppUsageStats()Ljava/util/Set;

    move-result-object v28

    .line 1199
    .local v28, "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_b

    .line 1200
    const-string/jumbo v10, "name"

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1202
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

    .line 1203
    .local v34, "selectQuery":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1204
    .local v21, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1206
    const-string v10, "lcd_condition"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 1207
    .local v29, "lcdColumn":I
    const-string/jumbo v10, "time"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 1208
    .local v35, "timeColumn":I
    const-string/jumbo v10, "power"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 1211
    .local v32, "powerColumn":I
    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1212
    .local v5, "time":J
    sub-long v10, v22, v5

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    .line 1213
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    .line 1216
    :cond_0
    new-instance v4, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v38

    invoke-direct {v4, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 1218
    .local v4, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v36, 0x0

    .local v36, "totalPower":D
    const-wide/16 v8, 0x0

    .line 1219
    .local v8, "power":D
    const/16 v30, 0x0

    .line 1220
    .local v30, "lcdNtype":I
    const/16 v27, 0x0

    .line 1221
    .local v27, "isUsingNetwork":Z
    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    and-int/lit8 v10, v10, 0x10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_2

    const/16 v26, 0x1

    .line 1222
    .local v26, "isSystemApp":Z
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_7

    .line 1223
    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1224
    if-nez p1, :cond_5

    .line 1225
    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1226
    and-int/lit8 v10, v30, 0x4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    const/4 v7, 0x1

    .line 1227
    .local v7, "lcdOn":Z
    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 1228
    const-wide/16 v10, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1229
    add-double v36, v36, v8

    .line 1230
    and-int/lit8 v10, v30, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    :goto_3
    or-int v27, v27, v10

    .line 1238
    .end local v7    # "lcdOn":Z
    :cond_1
    :goto_4
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1191
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

    .line 1221
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

    .line 1226
    .restart local v26    # "isSystemApp":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 1230
    .restart local v7    # "lcdOn":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 1231
    .end local v7    # "lcdOn":Z
    :cond_5
    and-int/lit8 v10, v30, 0x8

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    .line 1232
    :try_start_1
    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1233
    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 1234
    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object v10, v4

    move-wide v11, v5

    move-wide v14, v8

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1235
    add-double v36, v36, v8

    .line 1236
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

    .line 1240
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

    .line 1242
    iget-object v10, v4, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1243
    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 1244
    add-double v18, v18, v36

    .line 1245
    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1246
    invoke-virtual {v4}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    .line 1250
    :cond_8
    :goto_6
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1251
    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "added"

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    :cond_9
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1255
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 1247
    :cond_a
    if-eqz v27, :cond_8

    if-nez v26, :cond_8

    .line 1248
    invoke-virtual {v4}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_6

    .line 1257
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

    .line 1258
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 1259
    :cond_c
    move-object/from16 v0, v33

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .line 1261
    .end local v22    # "curTime":J
    .end local v28    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v31

    .line 1264
    .local v31, "out":Landroid/os/Parcel;
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1265
    invoke-virtual/range {v31 .. v31}, Landroid/os/Parcel;->marshall()[B

    move-result-object v24

    .line 1266
    .local v24, "data":[B
    invoke-virtual/range {v31 .. v31}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1267
    monitor-exit p0

    return-object v24
.end method

.method private declared-synchronized getScreenOffUsageListOnlyApp(Z)[B
    .locals 38
    .param p1, "needOffList"    # Z

    .prologue
    .line 1271
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v25

    .line 1272
    .local v25, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v32, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v32 .. v32}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 1274
    .local v32, "result":Lcom/android/internal/os/UidSipperImpl;
    const-string v10, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v11, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1275
    .local v20, "c":Landroid/database/Cursor;
    const-wide/16 v18, 0x0

    .line 1276
    .local v18, "allUidTotalPower":D
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1278
    .local v22, "curTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getAppUsageStats()Ljava/util/Set;

    move-result-object v27

    .line 1279
    .local v27, "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_b

    .line 1280
    const-string/jumbo v10, "name"

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1282
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

    .line 1283
    .local v33, "selectQuery":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1284
    .local v21, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1286
    const-string v10, "lcd_condition"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1287
    .local v28, "lcdColumn":I
    const-string/jumbo v10, "time"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 1288
    .local v34, "timeColumn":I
    const-string/jumbo v10, "power"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 1290
    .local v31, "powerColumn":I
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1291
    .local v29, "lcdNtype":I
    and-int/lit8 v10, v29, 0x10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_0

    .line 1292
    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "System app"

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1294
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1271
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

    .line 1299
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

    .line 1300
    .local v5, "time":J
    sub-long v10, v22, v5

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-ltz v10, :cond_1

    .line 1301
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    .line 1304
    :cond_1
    new-instance v4, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 1306
    .local v4, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v36, 0x0

    .local v36, "totalPower":D
    const-wide/16 v8, 0x0

    .line 1307
    .local v8, "power":D
    const/16 v26, 0x0

    .line 1308
    .local v26, "isUsingNetwork":Z
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_7

    .line 1309
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1310
    if-nez p1, :cond_5

    .line 1311
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1312
    and-int/lit8 v10, v29, 0x4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    const/4 v7, 0x1

    .line 1313
    .local v7, "lcdOn":Z
    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 1314
    const-wide/16 v10, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1315
    add-double v36, v36, v8

    .line 1316
    and-int/lit8 v10, v29, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    :goto_3
    or-int v26, v26, v10

    .line 1324
    .end local v7    # "lcdOn":Z
    :cond_2
    :goto_4
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1312
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 1316
    .restart local v7    # "lcdOn":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 1317
    .end local v7    # "lcdOn":Z
    :cond_5
    const/16 v10, 0x8

    move/from16 v0, v29

    if-ne v0, v10, :cond_2

    .line 1318
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1319
    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 1320
    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object v10, v4

    move-wide v11, v5

    move-wide v14, v8

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1321
    add-double v36, v36, v8

    .line 1322
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

    .line 1326
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

    .line 1328
    iget-object v10, v4, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1329
    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 1330
    add-double v18, v18, v36

    .line 1331
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1332
    invoke-virtual {v4}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    .line 1336
    :cond_8
    :goto_6
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1337
    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "added"

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :cond_9
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1341
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 1333
    :cond_a
    if-eqz v26, :cond_8

    .line 1334
    invoke-virtual {v4}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_6

    .line 1344
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

    .line 1345
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 1346
    :cond_c
    move-object/from16 v0, v32

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .line 1349
    .end local v22    # "curTime":J
    .end local v27    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v30

    .line 1352
    .local v30, "out":Landroid/os/Parcel;
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1353
    invoke-virtual/range {v30 .. v30}, Landroid/os/Parcel;->marshall()[B

    move-result-object v24

    .line 1354
    .local v24, "data":[B
    invoke-virtual/range {v30 .. v30}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1355
    monitor-exit p0

    return-object v24
.end method

.method private declared-synchronized getTotalUsageList()[B
    .locals 28

    .prologue
    .line 1359
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    .line 1360
    .local v16, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v21, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 1362
    .local v21, "result":Lcom/android/internal/os/UidSipperImpl;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1364
    .local v12, "curTime":J
    const-string v22, "SELECT lcd_condition,time,power FROM[all]"

    .line 1365
    .local v22, "selectQuery":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1367
    .local v14, "cursor":Landroid/database/Cursor;
    const-string v10, "lcd_condition"

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1368
    .local v17, "lcdColumn":I
    const-string/jumbo v10, "time"

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 1369
    .local v23, "timeColumn":I
    const-string/jumbo v10, "power"

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1371
    .local v20, "powerColumn":I
    new-instance v4, Lcom/android/internal/os/UidSipper;

    const-string v10, "all"

    invoke-direct {v4, v10}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 1372
    .local v4, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v24, 0x0

    .local v24, "totalPower":D
    const-wide/16 v8, 0x0

    .line 1375
    .local v8, "power":D
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1377
    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1378
    .local v5, "time":J
    sub-long v10, v12, v5

    const-wide/32 v26, 0x5265c00

    cmp-long v10, v10, v26

    if-ltz v10, :cond_0

    .line 1379
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 1382
    :cond_0
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1383
    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1384
    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1385
    .local v18, "lcdNtype":I
    const/4 v10, 0x4

    move/from16 v0, v18

    if-ne v0, v10, :cond_1

    const/4 v7, 0x1

    .line 1386
    .local v7, "lcdOn":Z
    :goto_1
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 1387
    const-wide/16 v10, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1388
    add-double v24, v24, v8

    .line 1389
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1359
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

    .line 1385
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

    .line 1392
    .end local v5    # "time":J
    .end local v18    # "lcdNtype":I
    :cond_2
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1395
    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 1396
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1397
    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .line 1398
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

    .line 1400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v19

    .line 1401
    .local v19, "out":Landroid/os/Parcel;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1402
    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->marshall()[B

    move-result-object v15

    .line 1403
    .local v15, "data":[B
    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1404
    monitor-exit p0

    return-object v15
.end method

.method private maintainDayData(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J

    .prologue
    .line 816
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

    .line 818
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v4, "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name != \'android_metadata\' AND name != \'null\'"

    .line 822
    .local v0, "QUERY_GET_TABLES_NAME":Ljava/lang/String;
    const/4 v1, 0x0

    .line 824
    .local v1, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v6, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name != \'android_metadata\' AND name != \'null\'"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 825
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 826
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_3

    .line 827
    const-string/jumbo v6, "name"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 828
    .local v5, "tableName":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 829
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 834
    .end local v5    # "tableName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 835
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 837
    if-eqz v1, :cond_1

    .line 838
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 843
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

    .line 844
    .restart local v5    # "tableName":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/internal/os/BatteryStatsDBHelper;->deleteExceptDayData(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 846
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "tableName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 847
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 850
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 837
    :cond_3
    if-eqz v1, :cond_1

    .line 838
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 837
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_4

    .line 838
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v6
.end method

.method private maintainNotifiedAppList(J)V
    .locals 11
    .param p1, "curTime"    # J

    .prologue
    .line 853
    const-string v3, "BatteryStatsDBHelper"

    const-string v6, " maintainNotifiedAppList called "

    invoke-static {v3, v6}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    sget-object v3, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 855
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 856
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 857
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 858
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 859
    .local v4, "thisTime":J
    sub-long v6, p1, v4

    const-wide/32 v8, 0x36ee80

    cmp-long v3, v6, v8

    if-ltz v3, :cond_0

    .line 860
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

    .line 861
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 864
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
    .line 1660
    const-wide/16 v2, 0x0

    cmpl-double v1, p0, v2

    if-nez v1, :cond_0

    const-string v1, "0"

    .line 1674
    :goto_0
    return-object v1

    .line 1663
    :cond_0
    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v1, p0, v2

    if-gez v1, :cond_1

    const-string v0, "%.8f"

    .line 1674
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

    .line 1664
    .end local v0    # "format":Ljava/lang/String;
    :cond_1
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, p0, v2

    if-gez v1, :cond_2

    const-string v0, "%.7f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .line 1665
    .end local v0    # "format":Ljava/lang/String;
    :cond_2
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, p0, v2

    if-gez v1, :cond_3

    const-string v0, "%.6f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .line 1666
    .end local v0    # "format":Ljava/lang/String;
    :cond_3
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, p0, v2

    if-gez v1, :cond_4

    const-string v0, "%.5f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .line 1667
    .end local v0    # "format":Ljava/lang/String;
    :cond_4
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, p0, v2

    if-gez v1, :cond_5

    const-string v0, "%.4f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .line 1668
    .end local v0    # "format":Ljava/lang/String;
    :cond_5
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_6

    const-string v0, "%.3f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .line 1669
    .end local v0    # "format":Ljava/lang/String;
    :cond_6
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_7

    const-string v0, "%.2f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .line 1670
    .end local v0    # "format":Ljava/lang/String;
    :cond_7
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_8

    const-string v0, "%.1f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_1

    .line 1671
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
    .line 920
    .local p4, "abuserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 921
    .local v1, "notiValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "notified_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 923
    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 924
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

    .line 925
    .local v2, "packageName":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    const-string/jumbo v4, "power_consuming_packages"

    const-string/jumbo v5, "packageName = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {p1, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 928
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

    .line 930
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 70
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "send.battery.drain.broadcast"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->mFakeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    return-void
.end method


# virtual methods
.method public declared-synchronized abusiveDetectionFromHCamp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "metaData"    # Ljava/lang/String;

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 505
    .local v6, "time":J
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 507
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    move-result-object v2

    .line 508
    .local v2, "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmpl-double v0, v4, v10

    if-gtz v0, :cond_0

    .line 509
    const-string v0, "BatteryStatsDBHelper"

    const-string v3, "abusiveDetectionFromHCamp:: no total power"

    invoke-static {v0, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
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

    .line 512
    :try_start_1
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->checkPowerAbuseLocked(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 514
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "sec.intent.action.BATTERY_ABUSE"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v9, "i":Landroid/content/Intent;
    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 516
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .end local v6    # "time":J
    .end local v9    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 517
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

    .line 504
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
    .line 478
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 479
    .local v8, "time":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 481
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    move-result-object v4

    .line 482
    .local v4, "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpl-double v2, v14, v16

    if-gtz v2, :cond_0

    .line 483
    const-string v2, "BatteryStatsDBHelper"

    const-string v6, "abusiveDetectionFromHCamp:: no total power"

    invoke-static {v2, v6}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .end local v8    # "time":J
    :goto_0
    monitor-exit p0

    return-void

    .line 486
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .restart local v8    # "time":J
    :cond_0
    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    .line 487
    .local v12, "size":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v12, :cond_1

    .line 488
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 489
    .local v7, "meta":Ljava/lang/String;
    const/4 v5, 0x0

    .line 490
    .local v5, "packageName":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aget-object v5, v2, v6

    .line 491
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

    .line 492
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->checkPowerAbuseLocked(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 487
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 495
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "meta":Ljava/lang/String;
    :cond_1
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "i":I
    const-string/jumbo v2, "sec.intent.action.BATTERY_ABUSE"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .local v11, "i":Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 497
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .end local v8    # "time":J
    .end local v11    # "i":Landroid/content/Intent;
    .end local v12    # "size":I
    :catch_0
    move-exception v10

    .line 498
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

    .line 478
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
    .line 380
    .local p5, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsDumper$PowerObject;>;"
    monitor-enter p0

    if-eqz p1, :cond_4

    if-nez p2, :cond_3

    const/16 v27, 0x1

    .line 381
    .local v27, "screenCondition":Z
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 382
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 384
    if-eqz v27, :cond_5

    const/16 v23, 0x4

    .line 388
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

    .line 389
    .local v19, "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
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

    .line 393
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->totalPower:D

    move-wide/from16 v34, v0

    .line 394
    .local v34, "totalPower":D
    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->mobilePackets:J

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->wifiPackets:J

    add-long v28, v2, v4

    .line 395
    .local v28, "networkUsage":J
    move-object/from16 v0, v19

    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->cpuTime:J

    .line 396
    .local v14, "cpuTime":J
    move/from16 v20, v23

    .line 398
    .local v20, "finalLcdCondition":I
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->getLastEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    move-result-object v22

    .line 399
    .local v22, "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    if-eqz v22, :cond_8

    .line 400
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->totalPower:D
    invoke-static/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->access$200(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)D

    move-result-wide v24

    .line 401
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

    .line 402
    sub-double v16, v34, v24

    .line 403
    .local v16, "diff":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_7

    .line 404
    move-wide/from16 v32, v16

    .line 405
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

    .line 411
    :goto_4
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->networkUsage:J
    invoke-static/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->access$300(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)J

    move-result-wide v2

    sub-long v30, v28, v2

    .line 412
    .local v30, "networkUseDiff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v30, v2

    if-eqz v2, :cond_1

    .line 413
    or-int/lit8 v20, v20, 0x20

    .line 423
    .end local v16    # "diff":D
    .end local v24    # "lastTotalPower":D
    .end local v30    # "networkUseDiff":J
    :cond_1
    :goto_5
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->uid:I

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_2

    .line 424
    or-int/lit8 v20, v20, 0x10

    .line 427
    :cond_2
    new-instance v36, Landroid/content/ContentValues;

    invoke-direct/range {v36 .. v36}, Landroid/content/ContentValues;-><init>()V

    .line 428
    .local v36, "values":Landroid/content/ContentValues;
    const-string v2, "lcd_condition"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    const-string/jumbo v2, "time"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 430
    const-string/jumbo v2, "power"

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 431
    const-string/jumbo v2, "totalpower"

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 432
    const-string/jumbo v2, "network_usage"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 433
    const-string v2, "cpu_time"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 434
    const-string/jumbo v2, "walarm"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->walarm:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 435
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

    .line 467
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

    .line 468
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

    .line 471
    :try_start_3
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 473
    .end local v18    # "e":Ljava/lang/IllegalStateException;
    :goto_6
    monitor-exit p0

    return-void

    .line 380
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v23    # "lcdCondition":I
    .end local v27    # "screenCondition":Z
    :cond_3
    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_4
    move/from16 v27, p2

    goto/16 :goto_0

    .line 384
    .restart local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v27    # "screenCondition":Z
    :cond_5
    const/16 v23, 0x8

    goto/16 :goto_1

    .line 405
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

    .line 408
    .end local v32    # "power":D
    :cond_7
    const-wide/16 v32, 0x0

    .line 409
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

    .line 471
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

    .line 380
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v23    # "lcdCondition":I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 416
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

    .line 417
    .restart local v32    # "power":D
    const-wide/16 v2, 0x0

    cmp-long v2, v28, v2

    if-eqz v2, :cond_9

    .line 418
    or-int/lit8 v20, v20, 0x20

    .line 420
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

    .line 438
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

    .line 439
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/os/BatteryStatsDBHelper;->getLastTotalEntry(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;

    move-result-object v26

    .line 440
    .local v26, "mLastEntry":Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    const-wide/16 v32, 0x0

    .line 441
    .restart local v32    # "power":D
    const/4 v13, 0x0

    .line 442
    .local v13, "delta":I
    if-eqz v26, :cond_c

    .line 443
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->totalPower:D
    invoke-static/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->access$400(Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;)D

    move-result-wide v2

    sub-double v32, p8, v2

    .line 444
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->batteryLevel:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->access$500(Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;)I

    move-result v2

    sub-int v13, p10, v2

    .line 446
    const-wide/16 v2, 0x0

    cmpg-double v2, v32, v2

    if-gez v2, :cond_b

    .line 447
    const-wide/16 v32, 0x0

    .line 449
    :cond_b
    if-gez v13, :cond_c

    .line 450
    const/4 v13, 0x0

    .line 453
    :cond_c
    new-instance v36, Landroid/content/ContentValues;

    invoke-direct/range {v36 .. v36}, Landroid/content/ContentValues;-><init>()V

    .line 454
    .restart local v36    # "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "time"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 455
    const-string/jumbo v2, "power"

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 456
    const-string/jumbo v2, "totalpower"

    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 457
    const-string v2, "batterydelta"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    const-string v2, "batterypercent"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    const-string v2, "[all]"

    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v8, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 460
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

    .line 462
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsDBHelper;->addBatteryDelta(ZJIILandroid/database/sqlite/SQLiteDatabase;)V

    move-object/from16 v7, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p8

    .line 463
    invoke-direct/range {v7 .. v12}, Lcom/android/internal/os/BatteryStatsDBHelper;->checkForPowerThreshold(Landroid/database/sqlite/SQLiteDatabase;JD)V

    .line 465
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 471
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
    .line 539
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

    .line 542
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v23

    .line 544
    .local v23, "uid":I
    const/4 v2, -0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_0

    .line 598
    .end local v23    # "uid":I
    :goto_0
    return-void

    .line 547
    .restart local v23    # "uid":I
    :cond_0
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 549
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

    const-string/jumbo v5, "time"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "lcd_condition"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v5, "power"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 552
    .local v11, "cursor":Landroid/database/Cursor;
    const-string v2, "lcd_condition"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 553
    .local v15, "lcdColumn":I
    const-string/jumbo v2, "time"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 554
    .local v22, "timeColumn":I
    const-string/jumbo v2, "power"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 556
    .local v18, "powerColumn":I
    const-wide/16 v16, 0x0

    .line 557
    .local v16, "lcdOffPowerInLastHour":D
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 558
    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 559
    .local v20, "thisTime":J
    sub-long v2, p6, v20

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 560
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .line 561
    .local v12, "curPower":D
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .end local v12    # "curPower":D
    :goto_2
    add-double v16, v16, v12

    .line 566
    invoke-interface {v11}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 594
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

    .line 595
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

    .line 597
    .end local v14    # "e":Ljava/lang/Exception;
    :goto_3
    const-string v2, "BatteryStatsDBHelper"

    const-string v3, "checkPowerAbuse finished"

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 561
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

    .line 569
    .end local v12    # "curPower":D
    .end local v20    # "thisTime":J
    :cond_2
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 571
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v2

    div-double v2, v16, v2

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I
    invoke-static/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v4

    int-to-double v4, v4

    mul-double v9, v2, v4

    .line 573
    .local v9, "percentage":D
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I
    invoke-static/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v2, v9, v2

    if-lez v2, :cond_3

    .line 574
    const-string v2, "BatteryStatsDBHelper"

    const-string v3, "Strange!!. Percentage is greater than battery delta"

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I
    invoke-static/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v2

    int-to-double v9, v2

    .line 578
    :cond_3
    const-string/jumbo v2, "wakelock"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "gps"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 579
    :cond_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD_HEALING_CAMP:D

    cmpg-double v2, v9, v2

    if-gez v2, :cond_6

    .line 580
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "percentage i.e. "

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

    .line 583
    :cond_5
    const-string v2, "ble"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 584
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

    .line 585
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 588
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

    const-string/jumbo v4, "total power in lastonehour:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "percentage:"

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

    .line 593
    invoke-direct/range {v2 .. v10}, Lcom/android/internal/os/BatteryStatsDBHelper;->addPowerConsumingApps(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public declared-synchronized deleteRecordsExceptLatest(I)V
    .locals 9
    .param p1, "maxNumOfItems"    # I

    .prologue
    .line 1848
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1849
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1850
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1852
    const/16 v7, 0x8

    const/16 v8, 0x8

    :try_start_1
    invoke-virtual {p0, v2, v7, v8}, Lcom/android/internal/os/BatteryStatsDBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1853
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1857
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1902
    :goto_0
    monitor-exit p0

    return-void

    .line 1854
    :catch_0
    move-exception v3

    .line 1855
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1857
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1848
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1857
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v7

    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 1862
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1863
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1865
    .local v5, "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name != \'android_metadata\' AND name != \'null\'"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1867
    .local v0, "QUERY_GET_TABLES_NAME":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1869
    .local v1, "c":Landroid/database/Cursor;
    :try_start_6
    const-string v7, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name != \'android_metadata\' AND name != \'null\'"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1870
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1871
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1872
    const-string/jumbo v7, "name"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1873
    .local v6, "tableName":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1874
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1876
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 1879
    .end local v6    # "tableName":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1880
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1882
    if-eqz v1, :cond_2

    .line 1883
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1888
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1889
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1891
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

    .line 1892
    .restart local v6    # "tableName":Ljava/lang/String;
    invoke-direct {p0, v2, v6, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->deleteRecordsExceptLatest(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    .line 1896
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "tableName":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 1897
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1900
    :try_start_b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 1882
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz v1, :cond_2

    .line 1883
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1882
    :catchall_2
    move-exception v7

    if-eqz v1, :cond_4

    .line 1883
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1894
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1900
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
    .line 1056
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

    .line 1057
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1058
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "packageName"

    aput-object v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 1059
    .local v10, "requestingColumn":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1061
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string/jumbo v1, "power_consuming_packages"

    const-string/jumbo v3, "packageName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1063
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1064
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v11, v1
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1065
    .end local v10    # "requestingColumn":[Ljava/lang/String;
    .local v11, "requestingColumn":[Ljava/lang/String;
    :try_start_2
    const-string/jumbo v1, "power_consuming_packages"

    const-string/jumbo v3, "packageName = ?"

    invoke-virtual {v0, v1, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v10, v11

    .line 1072
    .end local v11    # "requestingColumn":[Ljava/lang/String;
    .restart local v10    # "requestingColumn":[Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_0

    .line 1073
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1076
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 1067
    :cond_1
    :try_start_4
    const-string v1, "BatteryStatsDBHelper"

    const-string v3, "Package not found in the table power_consuming_packages"

    invoke-static {v1, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 1069
    :catch_0
    move-exception v9

    .line 1070
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

    .line 1072
    if-eqz v8, :cond_0

    .line 1073
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1056
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Landroid/database/SQLException;
    .end local v10    # "requestingColumn":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1072
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "requestingColumn":[Ljava/lang/String;
    :catchall_1
    move-exception v1

    :goto_3
    if-eqz v8, :cond_2

    .line 1073
    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1072
    .end local v10    # "requestingColumn":[Ljava/lang/String;
    .restart local v11    # "requestingColumn":[Ljava/lang/String;
    :catchall_2
    move-exception v1

    move-object v10, v11

    .end local v11    # "requestingColumn":[Ljava/lang/String;
    .restart local v10    # "requestingColumn":[Ljava/lang/String;
    goto :goto_3

    .line 1069
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
    .line 1044
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

    .line 1045
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1046
    .local v2, "strUid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1049
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

    .line 1053
    :goto_0
    monitor-exit p0

    return-void

    .line 1050
    :catch_0
    move-exception v1

    .line 1051
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

    .line 1044
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
    .line 1754
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1755
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss.SSS"

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1756
    .local v21, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v5, "power_consuming_packages"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1758
    .local v13, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    new-array v12, v5, [Ljava/lang/String;

    .line 1759
    .local v12, "abuserList":[Ljava/lang/String;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1760
    const-string/jumbo v5, "time"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1761
    .local v24, "timeColumn":I
    const-string/jumbo v5, "packageName"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1762
    .local v17, "packageColumn":I
    const-string/jumbo v5, "percentage"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1763
    .local v18, "percentageColumn":I
    const-string/jumbo v5, "notified_time"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1765
    .local v16, "notifiedTimeColumn":I
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v12, v5, [Ljava/lang/String;

    .line 1766
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 1767
    .local v20, "sb":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 1769
    .local v14, "index":I
    const-string v5, "Abusive app list:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v15, v14

    .line 1770
    .end local v14    # "index":I
    .local v15, "index":I
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1771
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1772
    const-string v5, "Package name: "

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1774
    .local v19, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1775
    const-string v5, " consumed "

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1777
    const-string v5, " was found abusive at: "

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
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

    .line 1779
    const-string v5, " and last notified at: "

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
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

    .line 1781
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1782
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 1783
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "index":I
    .restart local v14    # "index":I
    aput-object v19, v12, v15

    move v15, v14

    .line 1784
    .end local v14    # "index":I
    .restart local v15    # "index":I
    goto :goto_0

    .line 1786
    .end local v15    # "index":I
    .end local v16    # "notifiedTimeColumn":I
    .end local v17    # "packageColumn":I
    .end local v18    # "percentageColumn":I
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    .end local v24    # "timeColumn":I
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1787
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1789
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1790
    .local v22, "time":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    move-result-object v25

    .line 1791
    .local v25, "totalData":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "oneHourPower: "

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

    .line 1795
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1796
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

    .line 1797
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

    .line 1798
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1802
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/os/BatteryStatsDBHelper;->dumpConsumingAppDetails(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1803
    monitor-exit p0

    return-void

    .line 1754
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
    .line 1806
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1807
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1808
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

    .line 1809
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

    .line 1811
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1812
    const-string v3, "lcd_condition"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1813
    .local v13, "lcdColumn":I
    const-string/jumbo v3, "time"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1814
    .local v28, "timeColumn":I
    const-string/jumbo v3, "power"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 1815
    .local v22, "powerColumn":I
    const-string/jumbo v3, "totalpower"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 1816
    .local v29, "totalPowerColumn":I
    const-string/jumbo v3, "network_usage"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1817
    .local v17, "networkColumn":I
    const-string v3, "cpu_time"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 1818
    .local v32, "usageColumn":I
    const-string/jumbo v3, "walarm"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 1820
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

    .line 1821
    const-string v3, "lcd |        time        |    power    |   totalpower |    network    |    cpu_time |    walarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1823
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1824
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1825
    .local v14, "lcdCondition":I
    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    .line 1826
    .local v20, "power":D
    and-int/lit8 v3, v14, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    const-string v25, "OFF"

    .line 1827
    .local v25, "strLcdCond":Ljava/lang/String;
    :goto_2
    move/from16 v0, v28

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 1828
    .local v26, "time":J
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 1829
    .local v23, "resultTime":Ljava/lang/String;
    move/from16 v0, v29

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v30

    .line 1830
    .local v30, "totalPower":D
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1831
    .local v18, "networkUsage":J
    move/from16 v0, v32

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 1832
    .local v34, "usageTime":J
    move/from16 v0, v33

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 1834
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

    .line 1837
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1806
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

    .line 1826
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

    .line 1840
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

    .line 1841
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1808
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1843
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
    .line 1679
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 1681
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v22, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1682
    .local v4, "c":Landroid/database/Cursor;
    const-wide/16 v2, 0x0

    .line 1683
    .local v2, "allUidTotalPower":D
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1685
    .local v6, "curTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getAppUsageStats()Ljava/util/Set;

    move-result-object v9

    .line 1686
    .local v9, "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v22

    if-nez v22, :cond_5

    .line 1687
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1689
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

    .line 1690
    .local v15, "selectQuery":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v8, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1691
    .local v5, "cursor":Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1693
    const-string v22, "lcd_condition"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1694
    .local v10, "lcdColumn":I
    const-string/jumbo v22, "time"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1695
    .local v18, "timeColumn":I
    const-string/jumbo v22, "power"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1698
    .local v14, "powerColumn":I
    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1699
    .local v16, "time":J
    const-wide/16 v20, 0x0

    .local v20, "totalPower":D
    const-wide/16 v12, 0x0

    .line 1700
    .local v12, "power":D
    const/4 v11, 0x0

    .line 1701
    .local v11, "lcdNtype":I
    sub-long v22, v6, v16

    const-wide/32 v24, 0x5265c00

    cmp-long v22, v22, v24

    if-ltz v22, :cond_0

    .line 1702
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 1705
    :cond_0
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v22

    if-nez v22, :cond_3

    .line 1706
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1707
    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1708
    sub-long v22, v6, v16

    cmp-long v22, v22, p1

    if-gez v22, :cond_1

    .line 1709
    if-nez p3, :cond_2

    .line 1710
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .line 1711
    add-double v20, v20, v12

    .line 1718
    :cond_1
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1679
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

    .line 1713
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

    .line 1714
    :try_start_1
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .line 1715
    add-double v20, v20, v12

    goto :goto_2

    .line 1721
    :cond_3
    const-wide v22, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v22, v20, v22

    if-lez v22, :cond_4

    .line 1722
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

    .line 1725
    :cond_4
    add-double v2, v2, v20

    .line 1726
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1727
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 1729
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

    .line 1730
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1732
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

    .line 1734
    .end local v6    # "curTime":J
    .end local v9    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1736
    monitor-exit p0

    return-void
.end method

.method public dumpUsageList(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v2, 0x1

    .line 1740
    const-string v0, "3 Hours batterystats in screen off:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1742
    const-wide/32 v0, 0xa4cb80

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->dumpUsageList(JZLjava/io/PrintWriter;)V

    .line 1744
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1746
    const-string v0, "24 Hours batterystats in screen off:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1748
    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->dumpUsageList(JZLjava/io/PrintWriter;)V

    .line 1749
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1751
    return-void
.end method

.method public declared-synchronized getAbusiveAppList()[Ljava/lang/String;
    .locals 14

    .prologue
    .line 1556
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1557
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "power_consuming_packages"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "packageName"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "percentage"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1560
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1561
    const-string/jumbo v1, "packageName"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1562
    .local v12, "packageColumn":I
    const-string/jumbo v1, "percentage"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1563
    .local v13, "percentageColumn":I
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v8, v1, [Ljava/lang/String;

    .line 1564
    .local v8, "abuserList":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "index":I
    move v11, v10

    .line 1565
    .end local v10    # "index":I
    .local v11, "index":I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1566
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

    .line 1568
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move v11, v10

    .end local v10    # "index":I
    .restart local v11    # "index":I
    goto :goto_0

    .line 1570
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1574
    .end local v8    # "abuserList":[Ljava/lang/String;
    .end local v11    # "index":I
    .end local v12    # "packageColumn":I
    .end local v13    # "percentageColumn":I
    :goto_1
    monitor-exit p0

    return-object v8

    .line 1573
    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1574
    const/4 v1, 0x0

    new-array v8, v1, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1556
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
    .line 987
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

    .line 989
    .local v16, "selectQuery":Ljava/lang/String;
    const-string v20, "BatteryStatsDBHelper"

    const-string v21, "getAverageLevelDropPerHour:: start"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
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

    .line 992
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 993
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 994
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v20, "cpu_time"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 995
    .local v17, "usageTimeColumn":I
    const-string/jumbo v20, "power"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 997
    .local v11, "powerColumn":I
    const-wide/16 v6, 0x0

    .line 998
    .local v6, "appUsageTime":J
    const-wide/16 v14, 0x0

    .line 999
    .local v14, "power":D
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1000
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1001
    .local v4, "appTotalTime":J
    move-wide v6, v4

    .line 1002
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

    .line 1003
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    .line 1004
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1005
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1006
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

    .line 1007
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

    .line 1009
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

    .line 1012
    cmp-long v20, v18, v4

    if-lez v20, :cond_0

    .line 1013
    add-long v6, v6, v18

    .line 1015
    :cond_0
    move-wide/from16 v4, v18

    .line 1016
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

    .line 1018
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

    .line 1020
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    add-double v14, v14, v20

    .line 1021
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

    .line 1036
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

    .line 1037
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v20, "BatteryStatsDBHelper"

    const-string v21, "getAverageLevelDropPerHour::  Exception"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1038
    const-wide/16 v12, 0x0

    .end local v10    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-wide v12

    .line 1024
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

    .line 1026
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

    .line 1028
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-nez v20, :cond_2

    .line 1029
    const-wide/16 v6, 0x1

    .line 1031
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

    .line 1033
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

    .line 1034
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

    .line 987
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
    .line 1139
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1140
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "SELECT batterydelta,lcd_condition FROM Battery_Delta"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1142
    .local v1, "cursor":Landroid/database/Cursor;
    const-string v5, "batterydelta"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1143
    .local v0, "batteryDeltaColumn":I
    const-string v5, "lcd_condition"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1145
    .local v3, "lcdColumn":I
    const/4 v4, 0x0

    .line 1147
    .local v4, "totalDelta":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1149
    :cond_0
    const/4 v5, 0x2

    if-ne p1, v5, :cond_3

    .line 1150
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 1154
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1156
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1158
    monitor-exit p0

    return v4

    .line 1151
    :cond_3
    :try_start_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 1152
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    .line 1139
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
    .line 523
    const/4 v2, -0x1

    .line 525
    .local v2, "uid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 526
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 527
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 529
    :catch_0
    move-exception v1

    .line 530
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

    .line 1162
    sparse-switch p1, :sswitch_data_0

    .line 1185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong screen condition. Please check BatteryStatsDBHandler.java"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1164
    :sswitch_0
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->getScreenOffUsageList(Z)[B

    move-result-object v0

    .line 1183
    :goto_0
    return-object v0

    .line 1167
    :sswitch_1
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd off data"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    invoke-direct {p0, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->getScreenOffUsageList(Z)[B

    move-result-object v0

    goto :goto_0

    .line 1170
    :sswitch_2
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data(only app)"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->getScreenOffUsageListOnlyApp(Z)[B

    move-result-object v0

    goto :goto_0

    .line 1173
    :sswitch_3
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd off data(only app)"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    invoke-direct {p0, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->getScreenOffUsageListOnlyApp(Z)[B

    move-result-object v0

    goto :goto_0

    .line 1176
    :sswitch_4
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting summation of lcd all data(only app)"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getTotalUsageList()[B

    move-result-object v0

    goto :goto_0

    .line 1179
    :sswitch_5
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting battery percentage data"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getBatteryPercentageList()[B

    move-result-object v0

    goto :goto_0

    .line 1182
    :sswitch_6
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data(only app) with power consumer list"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getConsumerListOnlyApp()[B

    move-result-object v0

    goto :goto_0

    .line 1162
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

    .line 1578
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->calculateTimeChange()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1579
    .local v2, "delta":J
    cmp-long v8, v2, v10

    if-nez v8, :cond_0

    .line 1629
    :goto_0
    monitor-exit p0

    return-void

    .line 1583
    :cond_0
    const-wide/32 v8, 0x5265c00

    cmp-long v8, v2, v8

    if-ltz v8, :cond_1

    .line 1585
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

    .line 1586
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1587
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1589
    const/16 v8, 0x8

    const/16 v9, 0x8

    :try_start_2
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1590
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1594
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1578
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "delta":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1591
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "delta":J
    :catch_0
    move-exception v4

    .line 1592
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1594
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 1599
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

    .line 1600
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

    .line 1601
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1602
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1604
    :try_start_6
    const-string v8, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\'"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1605
    .local v5, "listCursor":Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1606
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1607
    const-string/jumbo v8, "name"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1608
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

    .line 1610
    .local v7, "updateString":Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1611
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 1622
    .end local v5    # "listCursor":Landroid/database/Cursor;
    .end local v6    # "strUid":Ljava/lang/String;
    .end local v7    # "updateString":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 1623
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1626
    :try_start_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1628
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "Updated db with new timestamps"

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1599
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "deltaStr":Ljava/lang/String;
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 1614
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "deltaStr":Ljava/lang/String;
    .restart local v5    # "listCursor":Landroid/database/Cursor;
    :cond_3
    :try_start_9
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1615
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UPDATE Battery_Delta SET time=time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1616
    .restart local v7    # "updateString":Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1617
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

    .line 1619
    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1626
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
    .line 1109
    monitor-enter p0

    :try_start_0
    const-string v0, "BatteryStatsDBHelper"

    const-string/jumbo v1, "modifyHealingCampThresholdIfNecessary called "

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
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

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1114
    .local v6, "cThreshold":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1115
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "cursor null in modifyHealingCampThresholdIfNecessary"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1136
    .end local v6    # "cThreshold":Landroid/database/Cursor;
    :goto_0
    monitor-exit p0

    return-void

    .line 1119
    .restart local v6    # "cThreshold":Landroid/database/Cursor;
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1120
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "cursor empty in modifyHealingCampThresholdIfNecessary"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1132
    .end local v6    # "cThreshold":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1133
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "BatteryStatsDBHelper"

    const-string/jumbo v1, "modifyHealingCampThresholdIfNecessary remote exception "

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1109
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1125
    .restart local v6    # "cThreshold":Landroid/database/Cursor;
    :cond_1
    :goto_1
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1126
    const-string/jumbo v0, "one_hr_healingcamp_threshold"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1127
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD_HEALING_CAMP:D

    .line 1129
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1131
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
    .line 1079
    monitor-enter p0

    :try_start_0
    const-string v0, "BatteryStatsDBHelper"

    const-string/jumbo v1, "modifyThresholdIfNecessary called "

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
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

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1084
    .local v6, "cThreshold":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1085
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "cursor null in modifyThresholdIfNecessary"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1106
    .end local v6    # "cThreshold":Landroid/database/Cursor;
    :goto_0
    monitor-exit p0

    return-void

    .line 1089
    .restart local v6    # "cThreshold":Landroid/database/Cursor;
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1090
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "cursor empty in modifyThresholdIfNecessary"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1102
    .end local v6    # "cThreshold":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1103
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "BatteryStatsDBHelper"

    const-string/jumbo v1, "modifyThresholdIfNecessary remote exception "

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1079
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1095
    .restart local v6    # "cThreshold":Landroid/database/Cursor;
    :cond_1
    :goto_1
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1096
    const-string/jumbo v0, "one_hr_battery_threshold"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1097
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD:D

    .line 1099
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1101
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
    .line 233
    const-string v0, "CREATE TABLE Battery_Delta(lcd_condition INTEGER,time LONG,batterydelta INTEGER,batterypercent INTEGER)"

    .line 237
    .local v0, "CREATE_BATTERY_DELTA_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 240
    const-string v2, "CREATE TABLE power_consuming_packages(time LONG,packageName TEXT,percentage DOUBLE,notified_time LONG,abusive_type TEXT,meta_data TEXT)"

    .line 244
    .local v2, "createPowerConsumingPackageTable":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    const-string v1, "CREATE TABLE [all](time LONG,power DOUBLE,totalpower DOUBLE,batterydelta INTEGER,batterypercent INTEGER)"

    .line 250
    .local v1, "createAllPowerTable":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 273
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v3, "tables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "SELECT * FROM sqlite_master WHERE type=\'table\';"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 275
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 276
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    .line 277
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "tableName":Ljava/lang/String;
    const-string v4, "android_metadata"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "sqlite_sequence"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 279
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 283
    .end local v2    # "tableName":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 285
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

    .line 286
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

    .line 290
    .end local v2    # "tableName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 291
    return-void
.end method
