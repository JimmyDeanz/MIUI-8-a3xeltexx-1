.class Lcom/android/server/usage/UsageStatsService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# static fields
.field private static final KEY_IDLE_DURATION:Ljava/lang/String; = "idle_duration"

.field private static final KEY_PAROLE_DURATION:Ljava/lang/String; = "parole_duration"

.field private static final KEY_PAROLE_INTERVAL:Ljava/lang/String; = "parole_interval"

.field private static final KEY_WALLCLOCK_THRESHOLD:Ljava/lang/String; = "wallclock_threshold"


# instance fields
.field private final mParser:Landroid/util/KeyValueListParser;

.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1100
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1097
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    .line 1101
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 1110
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->updateSettings()V

    .line 1111
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsService;->postCheckIdleStates(I)V

    .line 1112
    return-void
.end method

.method registerObserver()V
    .locals 3

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_idle_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1106
    return-void
.end method

.method updateSettings()V
    .locals 8

    .prologue
    .line 1115
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->access$400(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1119
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "app_idle_constants"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1127
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "idle_duration"

    const-wide/32 v6, 0x2932e00

    invoke-virtual {v3, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/usage/UsageStatsService;->mAppIdleDurationMillis:J

    .line 1130
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "wallclock_threshold"

    const-wide/32 v6, 0xa4cb800

    invoke-virtual {v3, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/usage/UsageStatsService;->mAppIdleWallclockThresholdMillis:J

    .line 1133
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-wide v4, v3, Lcom/android/server/usage/UsageStatsService;->mAppIdleDurationMillis:J

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    const-wide/32 v6, 0x1b77400

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/usage/UsageStatsService;->mCheckIdleIntervalMillis:J

    .line 1137
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "parole_interval"

    const-wide/32 v6, 0x5265c00

    invoke-virtual {v3, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    .line 1140
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "parole_duration"

    const-wide/32 v6, 0x927c0

    invoke-virtual {v3, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleDurationMillis:J

    .line 1142
    monitor-exit v2

    .line 1143
    return-void

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad value for app idle settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1142
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
