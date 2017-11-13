.class public Lcom/samsung/android/server/wifi/SensorMonitor;
.super Ljava/lang/Object;
.source "SensorMonitor.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "Wifi-SensorMonitor"

.field private static final TYPE_MAX:I = 0x4

.field public static final TYPE_WIFI:I = 0x0

.field public static final TYPE_WIFI_AP:I = 0x2

.field public static final TYPE_WIFI_IBSS:I = 0x3

.field public static final TYPE_WIFI_P2P:I = 0x1


# instance fields
.field private mConnectionType:[Z

.field private final mContext:Landroid/content/Context;

.field private final mGripSensor:Landroid/hardware/Sensor;

.field private final mGripSensorListener:Landroid/hardware/SensorEventListener;

.field private mIsEnabled:Z

.field private mIsMonitoring:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/samsung/android/server/wifi/SensorMonitor;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/samsung/android/server/wifi/SensorMonitor$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SensorMonitor$1;-><init>(Lcom/samsung/android/server/wifi/SensorMonitor;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/samsung/android/server/wifi/SensorMonitor$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SensorMonitor$2;-><init>(Lcom/samsung/android/server/wifi/SensorMonitor;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mGripSensorListener:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mContext:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    const-string v1, ""

    const-string v3, "GRIPI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x10018

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mGripSensor:Landroid/hardware/Sensor;

    :goto_0
    const/4 v1, 0x4

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mConnectionType:[Z

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_sensor_monitor_enable"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mIsEnabled:Z

    const-string v2, "Wifi-SensorMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create sensor monitor with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mIsEnabled:Z

    if-eqz v1, :cond_2

    const-string v1, "enabled state"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.net.wifi.NETWORK_OXYGEN_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x10027

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mGripSensor:Landroid/hardware/Sensor;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "disabled state"

    goto :goto_2
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/server/wifi/SensorMonitor;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/SensorMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SensorMonitor;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SensorMonitor;->enablePowerBackoff(Z)V

    return-void
.end method

.method private checkCurrentConnectionState()Z
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mConnectionType:[Z

    .local v0, "arr$":[Z
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-boolean v3, v0, v1

    .local v3, "type":Z
    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .end local v3    # "type":Z
    :goto_1
    return v4

    .restart local v3    # "type":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "type":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private enablePowerBackoff(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/16 v2, 0x46

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    goto :goto_0
.end method

.method private startMonitor(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mIsMonitoring:Z

    if-eq v0, p1, :cond_0

    const-string v0, "Wifi-SensorMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable sensor monitoring : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mGripSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mGripSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mIsMonitoring:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mGripSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SensorMonitor;->enablePowerBackoff(Z)V

    goto :goto_0
.end method


# virtual methods
.method public enableMonitor(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mIsEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_sensor_monitor_enable"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mIsMonitoring:Z

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SensorMonitor;->checkCurrentConnectionState()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SensorMonitor;->startMonitor(Z)V

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mIsEnabled:Z

    return v0
.end method

.method public isMonitoring()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mIsMonitoring:Z

    return v0
.end method

.method public updateConnection(IZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "isConnected"    # Z

    .prologue
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mConnectionType:[Z

    aput-boolean p2, v0, p1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SensorMonitor;->mIsEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SensorMonitor;->checkCurrentConnectionState()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SensorMonitor;->startMonitor(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SensorMonitor;->startMonitor(Z)V

    goto :goto_0
.end method
