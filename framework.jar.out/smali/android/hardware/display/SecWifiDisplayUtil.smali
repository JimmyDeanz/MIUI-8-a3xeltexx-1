.class public Landroid/hardware/display/SecWifiDisplayUtil;
.super Ljava/lang/Object;
.source "SecWifiDisplayUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/SecWifiDisplayUtil$1;
    }
.end annotation


# instance fields
.field private final GP_PACKAGE_NAME:Ljava/lang/String;

.field private final GP_RUNNING_STATE_CHECK_FILE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mScanInProgress:Z

.field private mZeroSettingsConcept:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v4, "SecWifiDisplayUtil"

    iput-object v4, p0, Landroid/hardware/display/SecWifiDisplayUtil;->TAG:Ljava/lang/String;

    .line 40
    const-string v4, "com.samsung.groupcast"

    iput-object v4, p0, Landroid/hardware/display/SecWifiDisplayUtil;->GP_PACKAGE_NAME:Ljava/lang/String;

    .line 41
    const-string v4, ".gp_running_check"

    iput-object v4, p0, Landroid/hardware/display/SecWifiDisplayUtil;->GP_RUNNING_STATE_CHECK_FILE:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    .line 48
    :try_start_0
    iget-object v4, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 49
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 50
    const-string v4, "com.android.settings"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 52
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 53
    .local v2, "meta_data":Landroid/os/Bundle;
    const-string v4, "SecWifiDisplayUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Metadata value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "settings_apk_name"

    const-string/jumbo v7, "none"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string/jumbo v4, "settings_apk_name"

    const-string/jumbo v5, "none"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SecSettings2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mZeroSettingsConcept:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "meta_data":Landroid/os/Bundle;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SecWifiDisplayUtil"

    const-string v5, "Cannot get Metadata value"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mZeroSettingsConcept:Z

    goto :goto_0
.end method

.method private getCPUPowerSavingMode()I
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "psm_cpu_clock"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getPowerSavingMode()I
    .locals 4

    .prologue
    .line 107
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, "lowPowerMode":I
    const-string v1, "SecWifiDisplayUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lowPowerMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v0
.end method

.method private isHDMIConnected()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v3, 0x0

    .line 174
    .local v3, "isHDMIConnected":Z
    iget-object v4, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 175
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 177
    .local v0, "displays":[Landroid/view/Display;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 178
    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 179
    const/4 v3, 0x1

    .line 177
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_1
    const-string v4, "SecWifiDisplayUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isHDMIConnected(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return v3
.end method

.method private isHotspotOn()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "isHotspotOn":Z
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 202
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 210
    :goto_0
    const-string v2, "SecWifiDisplayUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isHotSpotOn(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return v0

    .line 206
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isLiveBroadcastRunning()Z
    .locals 3

    .prologue
    .line 98
    const-string v1, "SecWifiDisplayUtil"

    const-string v2, "checkExceptionalCase isLiveBroadcastRunning"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "ret":Z
    const-string/jumbo v1, "service.camera.recording.plb"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 103
    :cond_0
    return v0
.end method

.method private isP2pConnected()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 217
    .local v1, "isP2pConntected":Z
    iget-object v3, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 218
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 219
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_0

    .line 220
    const/4 v1, 0x1

    .line 224
    :goto_0
    const-string v3, "SecWifiDisplayUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isP2pConntected(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return v1

    .line 222
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSideSyncAppRunning()Z
    .locals 8

    .prologue
    .line 145
    iget-object v5, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 148
    .local v1, "am":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 149
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v5, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 150
    .local v4, "pack":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 151
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "className":Ljava/lang/String;
    const-string v5, "com.sec.android.sidesync30.ui"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    const-string v5, "SecWifiDisplayUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSideSyncAppRunning className = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v5, 0x1

    .line 157
    .end local v2    # "className":Ljava/lang/String;
    :goto_1
    return v5

    .line 150
    .restart local v2    # "className":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "className":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isSideSyncConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "isSideSync":I
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sidesync_source_connect"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 163
    if-nez v0, :cond_0

    .line 167
    :goto_0
    return v1

    .line 166
    :cond_0
    const-string v1, "SecWifiDisplayUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSideSyncConnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isWfdConnected()Z
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 266
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 267
    const/4 v1, 0x1

    .line 269
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWfdScanning()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 273
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 274
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 277
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWfdStatusOn()Z
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 292
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 293
    const/4 v1, 0x1

    .line 295
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiIbssEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 192
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiIBSSEnabled()Z

    move-result v1

    return v1
.end method

.method private scanWifiDisplays()V
    .locals 3

    .prologue
    .line 281
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 282
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    .line 283
    return-void
.end method

.method private stopPeriodicScanning(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 299
    iget-object v3, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 300
    .local v2, "tWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 302
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x12

    iput v3, v1, Landroid/os/Message;->what:I

    .line 303
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "stop"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 306
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 308
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private stopScanWifiDisplays()V
    .locals 3

    .prologue
    .line 286
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 287
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->stopScanWifiDisplays()V

    .line 288
    return-void
.end method


# virtual methods
.method public checkExceptionalCase()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 66
    const/4 v1, 0x0

    .line 68
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isGroupPlayRunning()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const/4 v1, 0x7

    .line 93
    :goto_0
    const-string v2, "SecWifiDisplayUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkExceptionalCase ret value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 94
    :goto_1
    return v2

    .line 70
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isHotspotOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    const/4 v1, 0x1

    goto :goto_0

    .line 72
    :cond_1
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    const/16 v1, 0xa

    goto :goto_0

    .line 74
    :cond_2
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isP2pConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    const/4 v1, 0x2

    goto :goto_0

    .line 76
    :cond_3
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isHDMIConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 77
    const/4 v1, 0x3

    goto :goto_0

    .line 78
    :cond_4
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isSideSyncConnected()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isSideSyncAppRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 79
    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    .line 80
    :cond_6
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->getCPUPowerSavingMode()I

    move-result v2

    if-ne v2, v3, :cond_7

    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->getPowerSavingMode()I

    move-result v2

    if-eq v2, v3, :cond_8

    :cond_7
    iget-boolean v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mZeroSettingsConcept:Z

    if-eqz v2, :cond_9

    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->getPowerSavingMode()I

    move-result v2

    if-ne v2, v3, :cond_9

    .line 81
    :cond_8
    const/4 v1, 0x5

    goto :goto_0

    .line 82
    :cond_9
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWifiIbssEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 83
    const/16 v1, 0x8

    goto :goto_0

    .line 84
    :cond_a
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isLiveBroadcastRunning()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_b

    .line 85
    const/16 v1, 0x9

    goto :goto_0

    .line 87
    :cond_b
    const/4 v1, 0x0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "SecWifiDisplayUtil"

    const-string v3, "exception occured while using isScreenMirroringAvailable"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 91
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isGroupPlayRunning()Z
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 117
    iget-object v10, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 118
    .local v0, "am":Landroid/app/ActivityManager;
    const v10, 0x7fffffff

    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    .line 119
    .local v8, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 120
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 121
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 122
    .local v7, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v10, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.samsung.groupcast"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 124
    :try_start_0
    iget-object v10, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v11, "com.samsung.groupcast"

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 125
    .local v3, "gpContext":Landroid/content/Context;
    const-string v10, ".gp_running_check"

    invoke-virtual {v3, v10}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 127
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 138
    :goto_0
    const/4 v9, 0x1

    .line 141
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "gpContext":Landroid/content/Context;
    .end local v7    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    :goto_1
    return v9

    .line 128
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "gpContext":Landroid/content/Context;
    .restart local v7    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_0
    move-exception v4

    .line 129
    .local v4, "ie":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 131
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "gpContext":Landroid/content/Context;
    .end local v4    # "ie":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 132
    .local v6, "ne":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 134
    .end local v6    # "ne":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v1

    .line 135
    .local v1, "fe":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V
    .locals 4
    .param p1, "state"    # Landroid/hardware/display/DisplayManager$WfdAppState;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 230
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    sget-object v0, Landroid/hardware/display/SecWifiDisplayUtil$1;->$SwitchMap$android$hardware$display$DisplayManager$WfdAppState:[I

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager$WfdAppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 236
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 240
    :pswitch_1
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdScanning()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mScanInProgress:Z

    .line 241
    iget-boolean v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mScanInProgress:Z

    if-eqz v0, :cond_2

    .line 242
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->stopScanWifiDisplays()V

    .line 245
    :cond_2
    invoke-direct {p0, v2}, Landroid/hardware/display/SecWifiDisplayUtil;->stopPeriodicScanning(Z)V

    goto :goto_0

    .line 248
    :pswitch_2
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-direct {p0, v3}, Landroid/hardware/display/SecWifiDisplayUtil;->stopPeriodicScanning(Z)V

    .line 250
    iget-boolean v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mScanInProgress:Z

    if-eqz v0, :cond_0

    .line 251
    iput-boolean v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mScanInProgress:Z

    .line 252
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->scanWifiDisplays()V

    goto :goto_0

    .line 257
    :pswitch_3
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdStatusOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
