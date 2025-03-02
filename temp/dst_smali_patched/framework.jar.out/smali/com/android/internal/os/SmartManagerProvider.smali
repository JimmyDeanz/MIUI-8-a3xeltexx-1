.class public Lcom/android/internal/os/SmartManagerProvider;
.super Landroid/content/ContentProvider;
.source "SmartManagerProvider.java"


# static fields
.field static final ALL_PACKAGES:I = 0x1

.field static final BATTERY_DELTA:I = 0x2

.field static final EXT_ALL_POWER:I = 0x5

.field static final EXT_ALL_UIDS:I = 0x6

.field static final PACKAGE_NAME:I = 0x4

.field static final POWER_CONSUMING_PACKAGES:I = 0x3

.field static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

.field batteryStatsExtDBHelper:Lcom/android/internal/os/BatteryStatsExtDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/os/SmartManagerProvider;->uriMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/internal/os/SmartManagerProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.smartmanager.provider"

    const-string v2, "Battery_Delta"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/os/SmartManagerProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.smartmanager.provider"

    const-string v2, "power_consuming_packages"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/os/SmartManagerProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.smartmanager.provider"

    const-string v2, "batterystat_ext/all_power"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/os/SmartManagerProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.smartmanager.provider"

    const-string v2, "batterystat_ext/*"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/internal/os/SmartManagerProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.smartmanager.provider"

    const-string v2, "*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/os/SmartManagerProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->getInstance(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsDBHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    iget-object v1, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/SmartManagerProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getInstance(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsExtDBHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsExtDBHelper:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    iget-object v1, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsExtDBHelper:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/internal/os/SmartManagerProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v12, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    monitor-enter v12

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_8

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    return-object v9

    :pswitch_1
    iget-object v12, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsExtDBHelper:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    monitor-enter v12

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsExtDBHelper:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    monitor-exit v12

    goto :goto_0

    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsExtDBHelper:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    const-string v1, "BATTERYSTATS"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_2
    iget-object v12, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsExtDBHelper:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    monitor-enter v12

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsExtDBHelper:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsExtDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_2

    monitor-exit v12

    goto :goto_0

    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v1

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .local v11, "table_name":Ljava/lang/String;
    if-eqz v11, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsExtDBHelper:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsExtDBHelper:Lcom/android/internal/os/BatteryStatsExtDBHelper;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :cond_3
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "table_name":Ljava/lang/String;
    :pswitch_3
    iget-object v12, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    monitor-enter v12

    :try_start_5
    iget-object v1, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_4

    monitor-exit v12

    goto :goto_0

    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_2
    move-exception v1

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    :try_start_6
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "table_name":Ljava/lang/String;
    const-string v1, "*"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :goto_1
    monitor-exit v12

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v9

    goto :goto_1

    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "table_name":Ljava/lang/String;
    :pswitch_4
    iget-object v12, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    monitor-enter v12

    :try_start_7
    iget-object v1, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_6

    monitor-exit v12

    goto/16 :goto_0

    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_3
    move-exception v1

    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :cond_6
    :try_start_8
    iget-object v1, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    const-string v1, "Battery_Delta"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_0

    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_5
    iget-object v12, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    monitor-enter v12

    :try_start_9
    iget-object v1, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_7

    monitor-exit v12

    goto/16 :goto_0

    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_4
    move-exception v1

    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1

    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :cond_7
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    const-string v1, "power_consuming_packages"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto/16 :goto_0

    :cond_8
    :try_start_b
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "contentURI":Ljava/lang/String;
    const-string v1, "content://com.sec.smartmanager.provider"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "content://com.sec.smartmanager.provider/"

    const-string v2, ""

    invoke-virtual {v8, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .local v10, "newURI":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :cond_9
    monitor-exit v12

    goto/16 :goto_0

    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "contentURI":Ljava/lang/String;
    .end local v10    # "newURI":Ljava/lang/String;
    :catchall_5
    move-exception v1

    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v1

    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "contentURI":Ljava/lang/String;
    :cond_a
    :try_start_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method
