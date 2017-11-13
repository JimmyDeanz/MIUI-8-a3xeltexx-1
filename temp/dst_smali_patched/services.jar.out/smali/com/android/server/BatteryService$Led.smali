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
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    new-instance v0, Lcom/android/server/BatteryService$Led$1;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$Led$1;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->runnableMoodLightOff:Ljava/lang/Runnable;

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mMoodLightAnimationTimeout:I

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    const/16 v0, 0xd

    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mMoodLight:Lcom/android/server/lights/Light;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/BatteryService$Led;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService$Led;

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mMoodLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method private isHvdcpPresent()Z
    .locals 13

    .prologue
    new-instance v11, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/usb/type"

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v11, "mChargerTypeFile":Ljava/io/File;
    const/4 v9, 0x0

    .local v9, "fileReader":Ljava/io/FileReader;
    const/4 v6, 0x0

    .local v6, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .local v10, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v6    # "br":Ljava/io/BufferedReader;
    .local v7, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

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

    const/4 v12, 0x1

    .local v12, "ret":Z
    :goto_0
    if-eqz v7, :cond_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_0
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v0    # "type":Ljava/lang/String;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    :goto_1
    return v12

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

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    :cond_4
    throw v1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v12, 0x0

    .restart local v12    # "ret":Z
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failure in reading charger type"

    invoke-static {v1, v2, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

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

    .end local v0    # "type":Ljava/lang/String;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    .end local v12    # "ret":Z
    .local v8, "e":Ljava/io/IOException;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    :goto_4
    const/4 v12, 0x0

    .restart local v12    # "ret":Z
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failure in reading charger type"

    invoke-static {v1, v2, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v8    # "e":Ljava/io/IOException;
    .end local v12    # "ret":Z
    :catch_2
    move-exception v8

    goto :goto_4

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
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$4400(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v7

    iget v3, v7, Landroid/os/BatteryProperties;->batteryLevel:I

    .local v3, "level":I
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$4400(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v7

    iget v6, v7, Landroid/os/BatteryProperties;->batteryStatus:I

    .local v6, "status":I
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$4400(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v7

    iget v1, v7, Landroid/os/BatteryProperties;->batteryHealth:I

    .local v1, "health":I
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBootCompleted:Z
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$2800(Lcom/android/server/BatteryService;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

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

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Mood light on for low battery"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/BatteryService$Led;->runnableMoodLightOff:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/BatteryService$Led;->runnableMoodLightOff:Ljava/lang/Runnable;

    const-wide/16 v10, 0xfa0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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

    const/16 v7, 0xb

    iget v8, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v7, v8, :cond_8

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    const/4 v8, 0x0

    const/16 v9, 0xb

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    const/16 v7, 0xb

    iput v7, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "turn on LED for not charging"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

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

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/BatteryService;->mMoodLightOnForScreenOnOff:Z
    invoke-static {v7, v8}, Lcom/android/server/BatteryService;->access$402(Lcom/android/server/BatteryService;Z)Z

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Mood light on for charging at screen off"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x4

    new-array v0, v7, [I

    .local v0, "color":[I
    const/4 v7, 0x4

    new-array v5, v7, [I

    .local v5, "onMs":[I
    const/4 v7, 0x4

    new-array v4, v7, [I

    .local v4, "offMs":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    div-int/lit8 v7, v3, 0x19

    if-ge v2, v7, :cond_5

    const/high16 v7, -0x10000

    aput v7, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/16 v7, 0x64

    if-eq v3, v7, :cond_6

    div-int/lit8 v7, v3, 0x19

    const/high16 v8, -0x10000

    aput v8, v0, v7

    div-int/lit8 v7, v3, 0x19

    const/16 v8, 0x3e8

    aput v8, v5, v7

    div-int/lit8 v7, v3, 0x19

    const/16 v8, 0x1f4

    aput v8, v4, v7

    :goto_3
    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->mMoodLight:Lcom/android/server/lights/Light;

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v0, v5, v4}, Lcom/android/server/lights/Light;->setMoodLightFlashing(I[I[I[I)V

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/BatteryService$Led;->runnableMoodLightOff:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/BatteryService$Led;->runnableMoodLightOff:Ljava/lang/Runnable;

    const-wide/16 v10, 0xfa0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_6
    const/4 v7, 0x3

    const/high16 v8, -0x10000

    aput v8, v0, v7

    const/4 v7, 0x3

    const/16 v8, 0x3e8

    aput v8, v5, v7

    const/4 v7, 0x3

    const/16 v8, 0x1f4

    aput v8, v4, v7

    goto :goto_3

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

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Mood light on for fully charged"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/BatteryService$Led;->runnableMoodLightOff:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/BatteryService$Led;->runnableMoodLightOff:Ljava/lang/Runnable;

    const-wide/16 v10, 0xfa0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_8
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "stay LED for not charging"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

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

    const/16 v7, 0xa

    iget v8, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v7, v8, :cond_a

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    const/4 v8, 0x0

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    const/16 v7, 0xa

    iput v7, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "turn on LED for charging"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "stay LED for charging"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

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

    const/16 v7, 0xe

    iget v8, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v7, v8, :cond_c

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    const/4 v8, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    const/16 v7, 0xe

    iput v7, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "turn on LED for fully charged"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "stay LED for fully charged"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

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

    const/16 v7, 0xd

    iget v8, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v7, v8, :cond_e

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    const/4 v8, 0x0

    const/16 v9, 0xd

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    const/16 v7, 0xd

    iput v7, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "turn on LED for low battery"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "stay LED for low battery"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    iget v7, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v7}, Lcom/android/server/lights/Light;->turnOff()V

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "turn off LED"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

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
