.class final Lcom/android/server/usage/UsageStatsService$LocalService;
.super Landroid/app/usage/UsageStatsManagerInternal;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/usage/UsageStatsService;
    .param p2, "x1"    # Lcom/android/server/usage/UsageStatsService$1;

    .prologue
    .line 1290
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method


# virtual methods
.method public addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 1381
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$LocalService;->isAppIdleParoleOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    .line 1382
    return-void
.end method

.method public getIdleUidsForUser(I)[I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->getIdleUidsForUser(I)[I

    move-result-object v0

    return-object v0
.end method

.method public isAppIdle(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFiltered(Ljava/lang/String;IJ)Z

    move-result v0

    return v0
.end method

.method public isAppIdleParoleOn()Z
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-boolean v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoled:Z

    return v0
.end method

.method public prepareShutdown()V
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->shutdown()V

    .line 1376
    return-void
.end method

.method public removeAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->removeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 1388
    return-void
.end method

.method public reportConfigurationChange(Landroid/content/res/Configuration;I)V
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1329
    if-nez p1, :cond_0

    .line 1330
    const-string v1, "UsageStatsService"

    const-string v2, "Configuration event reported with a null config"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :goto_0
    return-void

    .line 1334
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 1335
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    const-string v1, "android"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1338
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 1340
    const/4 v1, 0x5

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 1341
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 1342
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p2, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1347
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1348
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1349
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1350
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1351
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1353
    return-void
.end method

.method public reportEvent(Landroid/content/ComponentName;II)V
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "eventType"    # I

    .prologue
    const/4 v4, 0x0

    .line 1294
    if-nez p1, :cond_0

    .line 1295
    const-string v1, "UsageStatsService"

    const-string v2, "Event reported without a component name"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :goto_0
    return-void

    .line 1299
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 1300
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1301
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 1304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 1306
    iput p3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 1307
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p2, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public reportEvent(Ljava/lang/String;II)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "eventType"    # I

    .prologue
    const/4 v4, 0x0

    .line 1312
    if-nez p1, :cond_0

    .line 1313
    const-string v1, "UsageStatsService"

    const-string v2, "Event reported without a package name"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :goto_0
    return-void

    .line 1317
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 1318
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 1323
    iput p3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 1324
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p2, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
