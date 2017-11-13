.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field private mLedStatus:I

.field private final mMoodLight:Lcom/android/server/lights/Light;

.field private final mMoodLightAnimationTimeout:I

.field private runnableMoodLightOff:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .prologue
    .line 2254
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2242
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2244
    new-instance v0, Lcom/android/server/BatteryService$Led$1;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$Led$1;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->runnableMoodLightOff:Ljava/lang/Runnable;

    .line 2252
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mMoodLightAnimationTimeout:I

    .line 2255
    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 2256
    const/16 v0, 0xd

    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mMoodLight:Lcom/android/server/lights/Light;

    .line 2258
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 2260
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 2262
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 2264
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 2266
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 2268
    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/BatteryService$Led;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService$Led;

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mMoodLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method private isHvdcpPresent()Z
    .locals 13

    .prologue
    .line 2271
    new-instance v11, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/usb/type"

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2272
    .local v11, "mChargerTypeFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 2273
    .local v9, "fileReader":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 2279
    .local v6, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2280
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .local v10, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2281
    .end local v6    # "br":Ljava/io/BufferedReader;
    .local v7, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 2282
    .local v0, "type":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "USB_HVDCP"

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-eqz v1, :cond_2

    .line 2283
    const/4 v12, 0x1

    .line 2287
    .local v12, "ret":Z
    :goto_0
    if-eqz v7, :cond_0

    .line 2288
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 2289
    :cond_0
    if-eqz v10, :cond_1

    .line 2290
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 2300
    .end local v0    # "type":Ljava/lang/String;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    :goto_1
    return v12

    .line 2285
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .end local v12    # "ret":Z
    .restart local v0    # "type":Ljava/lang/String;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "ret":Z
    goto :goto_0

    .line 2287
    .end local v0    # "type":Ljava/lang/String;
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    .end local v12    # "ret":Z
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v6, :cond_3

    .line 2288
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 2289
    :cond_3
    if-eqz v9, :cond_4

    .line 2290
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    :cond_4
    throw v1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2292
    :catch_0
    move-exception v8

    .line 2293
    .local v8, "e":Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v12, 0x0

    .line 2294
    .restart local v12    # "ret":Z
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failure in reading charger type"

    invoke-static {v1, v2, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2295
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v0    # "type":Ljava/lang/String;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 2296
    .end local v0    # "type":Ljava/lang/String;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    .end local v12    # "ret":Z
    .local v8, "e":Ljava/io/IOException;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    :goto_4
    const/4 v12, 0x0

    .line 2297
    .restart local v12    # "ret":Z
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failure in reading charger type"

    invoke-static {v1, v2, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2295
    .end local v8    # "e":Ljava/io/IOException;
    .end local v12    # "ret":Z
    :catch_2
    move-exception v8

    goto :goto_4

    .line 2292
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v0    # "type":Ljava/lang/String;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v12    # "ret":Z
    :catch_3
    move-exception v8

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 2287
    .end local v0    # "type":Ljava/lang/String;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .end local v12    # "ret":Z
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v1

    move-object v9, v10

    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v1

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    goto :goto_2
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 12

    .prologue
    .line 2307
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$4400(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v7

    iget v3, v7, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 2308
    .local v3, "level":I
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$4400(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v7

    iget v6, v7, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 2309
    .local v6, "status":I
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$4400(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v7

    iget v1, v7, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 2345
    .local v1, "health":I
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBootCompleted:Z
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$2800(Lcom/android/server/BatteryService;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2430
    :cond_0
    :goto_0
    return-void

    .line 2348
    :cond_1
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mMoodLightLowBatteryLevel:I
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)I

    move-result v7

    if-gt v3, v7, :cond_4

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLastBatteryLevel:I
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mMoodLightLowBatteryLevel:I
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)I

    move-result v8

    if-le v7, v8, :cond_4

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    const/4 v7, 0x5

    if-eq v6, v7, :cond_4

    .line 2349
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Mood light on for low battery"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->mMoodLight:Lcom/android/server/lights/Light;

    const/4 v8, 0x0

    const/4 v9, 0x4

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    const/4 v10, 0x4

    new-array v10, v10, [I

    fill-array-data v10, :array_1

    const/4 v11, 0x4

    new-array v11, v11, [I

    fill-array-data v11, :array_2

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/lights/Light;->setMoodLightFlashing(I[I[I[I)V

    .line 2351
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/BatteryService$Led;->runnableMoodLightOff:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2352
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/BatteryService$Led;->runnableMoodLightOff:Ljava/lang/Runnable;

    const-wide/16 v10, 0xfa0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2383
    :cond_2
    :goto_1
    const/4 v7, 0x4

    if-ne v7, v6, :cond_9

    const/4 v7, 0x3

    if-eq v7, v1, :cond_3

    const/4 v7, 0x6

    if-eq v7, v1, :cond_3

    const/4 v7, 0x7

    if-eq v7, v1, :cond_3

    const/16 v7, 0x8

    if-ne v7, v1, :cond_9

    :cond_3
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2389
    const/16 v7, 0xb

    iget v8, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v7, v8, :cond_8

    .line 2390
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    const/4 v8, 0x0

    const/16 v9, 0xb

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 2391
    const/16 v7, 0xb

    iput v7, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2392
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "turn on LED for not charging"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2354
    :cond_4
    const/4 v7, 0x2

    if-ne v7, v6, :cond_7

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mMoodLightOnForScreenOnOff:Z
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mMoodLightChargingStatusEnable:Z
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2355
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/BatteryService;->mMoodLightOnForScreenOnOff:Z
    invoke-static {v7, v8}, Lcom/android/server/BatteryService;->access$402(Lcom/android/server/BatteryService;Z)Z

    .line 2356
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Mood light on for charging at screen off"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    const/4 v7, 0x4

    new-array v0, v7, [I

    .line 2358
    .local v0, "color":[I
    const/4 v7, 0x4

    new-array v5, v7, [I

    .line 2359
    .local v5, "onMs":[I
    const/4 v7, 0x4

    new-array v4, v7, [I

    .line 2360
    .local v4, "offMs":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    div-int/lit8 v7, v3, 0x19

    if-ge v2, v7, :cond_5

    .line 2361
    const/high16 v7, -0x10000

    aput v7, v0, v2

    .line 2360
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2363
    :cond_5
    const/16 v7, 0x64

    if-eq v3, v7, :cond_6

    .line 2364
    div-int/lit8 v7, v3, 0x19

    const/high16 v8, -0x10000

    aput v8, v0, v7

    .line 2365
    div-int/lit8 v7, v3, 0x19

    const/16 v8, 0x3e8

    aput v8, v5, v7

    .line 2366
    div-int/lit8 v7, v3, 0x19

    const/16 v8, 0x1f4

    aput v8, v4, v7

    .line 2373
    :goto_3
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->mMoodLight:Lcom/android/server/lights/Light;

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v0, v5, v4}, Lcom/android/server/lights/Light;->setMoodLightFlashing(I[I[I[I)V

    .line 2374
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/BatteryService$Led;->runnableMoodLightOff:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2375
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/BatteryService$Led;->runnableMoodLightOff:Ljava/lang/Runnable;

    const-wide/16 v10, 0xfa0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 2369
    :cond_6
    const/4 v7, 0x3

    const/high16 v8, -0x10000

    aput v8, v0, v7

    .line 2370
    const/4 v7, 0x3

    const/16 v8, 0x3e8

    aput v8, v5, v7

    .line 2371
    const/4 v7, 0x3

    const/16 v8, 0x1f4

    aput v8, v4, v7

    goto :goto_3

    .line 2377
    .end local v0    # "color":[I
    .end local v2    # "i":I
    .end local v4    # "offMs":[I
    .end local v5    # "onMs":[I
    :cond_7
    const/4 v7, 0x5

    if-ne v7, v6, :cond_2

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLastBatteryStatus:I
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$5100(Lcom/android/server/BatteryService;)I

    move-result v7

    if-eq v7, v6, :cond_2

    .line 2378
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Mood light on for fully charged"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->mMoodLight:Lcom/android/server/lights/Light;

    const/4 v8, -0x1

    const/4 v9, 0x4

    new-array v9, v9, [I

    fill-array-data v9, :array_3

    const/4 v10, 0x4

    new-array v10, v10, [I

    fill-array-data v10, :array_4

    const/4 v11, 0x4

    new-array v11, v11, [I

    fill-array-data v11, :array_5

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/lights/Light;->setMoodLightFlashing(I[I[I[I)V

    .line 2380
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/BatteryService$Led;->runnableMoodLightOff:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2381
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/BatteryService$Led;->runnableMoodLightOff:Ljava/lang/Runnable;

    const-wide/16 v10, 0xfa0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 2394
    :cond_8
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "stay LED for not charging"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2396
    :cond_9
    const/4 v7, 0x2

    if-ne v7, v6, :cond_b

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2398
    const/16 v7, 0xa

    iget v8, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v7, v8, :cond_a

    .line 2399
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    const/4 v8, 0x0

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 2400
    const/16 v7, 0xa

    iput v7, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2401
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "turn on LED for charging"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2403
    :cond_a
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "stay LED for charging"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2405
    :cond_b
    const/4 v7, 0x5

    if-ne v7, v6, :cond_d

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2407
    const/16 v7, 0xe

    iget v8, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v7, v8, :cond_c

    .line 2408
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    const/4 v8, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 2409
    const/16 v7, 0xe

    iput v7, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2410
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "turn on LED for fully charged"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2412
    :cond_c
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "stay LED for fully charged"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2414
    :cond_d
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$5200(Lcom/android/server/BatteryService;)I

    move-result v7

    if-gt v3, v7, :cond_f

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 2416
    const/16 v7, 0xd

    iget v8, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v7, v8, :cond_e

    .line 2417
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    const/4 v8, 0x0

    const/16 v9, 0xd

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 2418
    const/16 v7, 0xd

    iput v7, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2419
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "turn on LED for low battery"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2421
    :cond_e
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "stay LED for low battery"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2423
    :cond_f
    iget v7, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eqz v7, :cond_0

    .line 2424
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v7}, Lcom/android/server/lights/Light;->turnOff()V

    .line 2425
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2426
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "turn off LED"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2350
    nop

    :array_0
    .array-data 4
        -0x10000
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3e8
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x1f4
        0x0
        0x0
        0x0
    .end array-data

    .line 2379
    :array_3
    .array-data 4
        -0xff0100
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3e8
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x1f4
        0x0
        0x0
        0x0
    .end array-data
.end method
