.class public Lcom/sec/android/emergencymode/EmergencyManager;
.super Ljava/lang/Object;
.source "EmergencyManager.java"


# static fields
.field private static final SERVICE_DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "EmergencyManager"

.field private static mIsLoadedFeatures:Z

.field private static mService:Lcom/sec/android/emergencymode/IEmergencyManager;

.field private static mSupport_BCM:Z

.field private static mSupport_EM:Z

.field private static mSupport_UPSM:Z

.field private static sInstance:Lcom/sec/android/emergencymode/EmergencyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverUPSM:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/emergencymode/EmergencyManager;->sInstance:Lcom/sec/android/emergencymode/EmergencyManager;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/sec/android/emergencymode/EmergencyManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/emergencymode/EmergencyManager$1;-><init>(Lcom/sec/android/emergencymode/EmergencyManager;)V

    iput-object v0, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Lcom/sec/android/emergencymode/EmergencyManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/emergencymode/EmergencyManager$2;-><init>(Lcom/sec/android/emergencymode/EmergencyManager;)V

    iput-object v0, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mReceiverUPSM:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mHandler:Landroid/os/Handler;

    .line 85
    iput-object p2, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->loadFloatingFeatures()V

    .line 87
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 88
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/emergencymode/EmergencyManager;ZIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/emergencymode/EmergencyManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/emergencymode/EmergencyManager;->triggerEmergencyMode(ZIZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/emergencymode/EmergencyManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/emergencymode/EmergencyManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private ensureServiceConnected()V
    .locals 4

    .prologue
    .line 92
    :try_start_0
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-nez v1, :cond_1

    .line 93
    const-string v1, "emergency_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/emergencymode/IEmergencyManager;

    move-result-object v1

    sput-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v1}, Lcom/sec/android/emergencymode/IEmergencyManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const-string v1, "EmergencyManager"

    const-string v2, "mService is not valid so retieve the service again."

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "emergency_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/emergencymode/IEmergencyManager;

    move-result-object v1

    sput-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureServiceConnected e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const-class v2, Lcom/sec/android/emergencymode/EmergencyManager;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 73
    const/4 v1, 0x0

    .line 80
    :goto_0
    monitor-exit v2

    return-object v1

    .line 75
    :cond_0
    :try_start_0
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->sInstance:Lcom/sec/android/emergencymode/EmergencyManager;

    if-nez v1, :cond_1

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 77
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-direct {v1, v0, p0}, Lcom/sec/android/emergencymode/EmergencyManager;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->sInstance:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 80
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->sInstance:Lcom/sec/android/emergencymode/EmergencyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static isBatteryConservingMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_conserving_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isEmergencyMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static loadFloatingFeatures()V
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z

    .line 111
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_EM:Z

    .line 112
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z

    .line 113
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/emergencymode/EmergencyManager;->mIsLoadedFeatures:Z

    .line 114
    return-void
.end method

.method private registerReceiver()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 227
    const-string v3, "EmergencyManager"

    const-string v4, "registerReceiver"

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 229
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v3, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v3, "ro.csc.sales_code"

    const-string v4, "unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "salesCode":Ljava/lang/String;
    const-string v3, "EmergencyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerReceiver Scode["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v3, "DCM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    const-string v3, "com.nttdocomo.android.epsmodecontrol.action.CHANGE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    :cond_0
    iget-object v3, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "com.sec.android.emergencymode.permission.LAUNCH_EMERGENCYMODE_SERVICE"

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 240
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    .local v1, "filterupsm":Landroid/content/IntentFilter;
    const-string v3, "com.sec.android.emergencymode.UltraPowerSavingManager.ORDER_ULTRA_POWERSAVING_SERVICE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mReceiverUPSM:Landroid/content/BroadcastReceiver;

    const-string v5, "com.samsung.android.permission.LAUNCH_ULTRAPOWERSAVING_SERVICE"

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 243
    return-void
.end method

.method private declared-synchronized startService(Ljava/lang/String;ZIZ)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "flag"    # I
    .param p4, "skipdialog"    # Z

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    .line 184
    const-string v2, "clearBootTime"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    :cond_0
    if-eqz p1, :cond_3

    .line 187
    const-string v2, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v2, "enabled"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    const-string v2, "flag"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string v2, "skipdialog"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    :cond_1
    :goto_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.emergencymode.service"

    const-string v4, "com.sec.android.emergencymode.service.EmergencyServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 201
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    monitor-exit p0

    return-void

    .line 192
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    const-string v2, "com.samsung.intent.action.EMERGENCY_CHECK_ABNORMAL_STATE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startService e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 197
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_3
    :try_start_3
    const-string v2, "initForEMState"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private stopService()V
    .locals 6

    .prologue
    .line 209
    const-class v3, Lcom/sec/android/emergencymode/EmergencyManager;

    monitor-enter v3

    .line 211
    :try_start_0
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_0

    .line 212
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.emergencymode.service"

    const-string v5, "com.sec.android.emergencymode.service.EmergencyServiceStarter"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 216
    const-string v2, "EmergencyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v4}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 218
    const/4 v2, 0x0

    sput-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 224
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopService e : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static supportBatteryConversingMode()Z
    .locals 1

    .prologue
    .line 308
    sget-boolean v0, Lcom/sec/android/emergencymode/EmergencyManager;->mIsLoadedFeatures:Z

    if-nez v0, :cond_0

    .line 309
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->loadFloatingFeatures()V

    .line 311
    :cond_0
    sget-boolean v0, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z

    return v0
.end method

.method public static supportEmergencyMode()Z
    .locals 1

    .prologue
    .line 271
    sget-boolean v0, Lcom/sec/android/emergencymode/EmergencyManager;->mIsLoadedFeatures:Z

    if-nez v0, :cond_0

    .line 272
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->loadFloatingFeatures()V

    .line 274
    :cond_0
    sget-boolean v0, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_EM:Z

    return v0
.end method

.method public static supportGrayScreen()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 319
    const/4 v1, 0x1

    .line 320
    .local v1, "bMdnie":Z
    const/4 v0, 0x1

    .line 321
    .local v0, "bAmoled":Z
    const-string v5, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "support MDNIE ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "]  AMOLED display ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "]  supportGrayScreen ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    .line 321
    goto :goto_0

    :cond_1
    move v3, v4

    .line 322
    goto :goto_1
.end method

.method public static supportUltraPowerSavingMode()Z
    .locals 1

    .prologue
    .line 282
    sget-boolean v0, Lcom/sec/android/emergencymode/EmergencyManager;->mIsLoadedFeatures:Z

    if-nez v0, :cond_0

    .line 283
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->loadFloatingFeatures()V

    .line 285
    :cond_0
    sget-boolean v0, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z

    return v0
.end method

.method private triggerEmergencyMode(ZIZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "flag"    # I
    .param p3, "skipdialog"    # Z

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 634
    const-string v0, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sec/android/emergencymode/EmergencyManager;->startService(Ljava/lang/String;ZIZ)V

    .line 635
    const-string v0, "EmergencyManager"

    const-string v1, "req trigger, start Service"

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 246
    const-string v0, "EmergencyManager"

    const-string v1, "unregisterReceiver"

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    return-void
.end method


# virtual methods
.method public addAppToLauncher(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 696
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 698
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-nez v2, :cond_0

    .line 709
    :goto_0
    return v1

    .line 704
    :cond_0
    :try_start_0
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/emergencymode/IEmergencyManager;->addAppToLauncher(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAppToLauncher failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canSetMode()Z
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 585
    sget-boolean v11, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_EM:Z

    if-nez v11, :cond_1

    sget-boolean v11, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z

    if-nez v11, :cond_1

    sget-boolean v11, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z

    if-nez v11, :cond_1

    move v9, v10

    .line 628
    :cond_0
    :goto_0
    return v9

    .line 588
    :cond_1
    iget-object v11, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    const-string v12, "user"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 589
    .local v6, "mUserManager":Landroid/os/UserManager;
    const/4 v9, 0x1

    .line 590
    .local v9, "result":Z
    const/4 v7, 0x0

    .line 591
    .local v7, "modifying":Z
    const/4 v4, 0x0

    .line 592
    .local v4, "knoxUser":Z
    const/4 v3, 0x0

    .line 593
    .local v3, "isDeviceProvisioned":Z
    const/4 v1, 0x0

    .line 594
    .local v1, "currentUserId":I
    const-string v8, ""

    .line 597
    .local v8, "reason":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->isModifying()Z

    move-result v7

    .line 598
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 599
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 601
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v11, "2.0"

    const-string v12, "version"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 602
    iget-object v11, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    const-string v12, "persona"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .line 603
    .local v5, "mPersona":Landroid/os/PersonaManager;
    if-eqz v5, :cond_2

    invoke-virtual {v5, v1}, Landroid/os/PersonaManager;->exists(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_2

    .line 604
    const/4 v4, 0x1

    .line 612
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "mPersona":Landroid/os/PersonaManager;
    :cond_2
    :goto_1
    iget-object v11, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "device_provisioned"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_6

    const/4 v3, 0x1

    .line 615
    :goto_2
    if-nez v3, :cond_3

    .line 616
    const/4 v9, 0x0

    .line 617
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "SETUP_WIZARD_UNFINISHED;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 618
    :cond_3
    if-eqz v7, :cond_4

    .line 619
    const/4 v9, 0x0

    .line 620
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "LLM_ENABLING;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 621
    :cond_4
    if-eqz v1, :cond_5

    if-nez v4, :cond_5

    .line 622
    const/4 v9, 0x0

    .line 623
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "NOT_OWNER_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 626
    :cond_5
    if-nez v9, :cond_0

    .line 627
    const-string v10, "EmergencyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "not Allowed EmergencyMode due to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 608
    :catch_0
    move-exception v2

    .line 609
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "EmergencyManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canSetMode Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    move v3, v10

    .line 612
    goto/16 :goto_2
.end method

.method public checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 449
    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_EM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z

    if-nez v2, :cond_1

    .line 465
    :cond_0
    :goto_0
    return v1

    .line 452
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 454
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_0

    .line 460
    :try_start_0
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/emergencymode/IEmergencyManager;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkInvalidBroadcast failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkInvalidProcess(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 426
    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_EM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z

    if-nez v2, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v1

    .line 429
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 431
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_0

    .line 437
    :try_start_0
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2, p1}, Lcom/sec/android/emergencymode/IEmergencyManager;->checkInvalidProcess(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkInvalidProcess failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkModeType(I)Z
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 645
    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_EM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z

    if-nez v2, :cond_1

    .line 661
    :cond_0
    :goto_0
    return v1

    .line 648
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 650
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_0

    .line 656
    :try_start_0
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2, p1}, Lcom/sec/android/emergencymode/IEmergencyManager;->checkModeType(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkModeType failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "actName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 403
    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_EM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z

    if-nez v2, :cond_1

    .line 404
    const/4 v1, 0x0

    .line 419
    :cond_0
    :goto_0
    return v1

    .line 406
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 408
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_0

    .line 414
    :try_start_0
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/emergencymode/IEmergencyManager;->checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkValidIntentAction failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "actName"    # Ljava/lang/String;
    .param p3, "allowFlag"    # I

    .prologue
    const/4 v1, 0x1

    .line 380
    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_EM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z

    if-nez v2, :cond_1

    .line 381
    const/4 v1, 0x0

    .line 396
    :cond_0
    :goto_0
    return v1

    .line 383
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 385
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_0

    .line 391
    :try_start_0
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/android/emergencymode/IEmergencyManager;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkValidPackage failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEmergencyState()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 352
    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_EM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z

    if-nez v2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v1

    .line 355
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 357
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_0

    .line 363
    :try_start_0
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2}, Lcom/sec/android/emergencymode/IEmergencyManager;->getEmergencyState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEmergencyState failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getModeType()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 294
    iget-object v2, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ultra_powersaving_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 301
    :goto_0
    return v0

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_conserving_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 297
    const/4 v0, 0x2

    goto :goto_0

    .line 298
    :cond_1
    iget-object v2, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    move v0, v1

    .line 299
    goto :goto_0

    .line 301
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getforceBlockUserPkg()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 540
    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_EM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z

    if-nez v2, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v1

    .line 543
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 545
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_0

    .line 550
    :try_start_0
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2}, Lcom/sec/android/emergencymode/IEmergencyManager;->getforceBlockUserPkg()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getforceBlockUserPkg failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isEmergencyMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 329
    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_EM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z

    if-nez v2, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v1

    .line 332
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 334
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_0

    .line 340
    :try_start_0
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2}, Lcom/sec/android/emergencymode/IEmergencyManager;->isEmergencyMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEmergencyMode failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isModifying()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 562
    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_EM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z

    if-nez v2, :cond_1

    .line 578
    :cond_0
    :goto_0
    return v1

    .line 565
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 567
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_0

    .line 573
    :try_start_0
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2}, Lcom/sec/android/emergencymode/IEmergencyManager;->isModifying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isModifying failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 495
    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_EM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z

    if-nez v2, :cond_1

    .line 511
    :cond_0
    :goto_0
    return v1

    .line 498
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 500
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_0

    .line 506
    :try_start_0
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2}, Lcom/sec/android/emergencymode/IEmergencyManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isScreenOn failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public needMobileDataBlock()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 472
    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_EM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z

    if-nez v2, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v1

    .line 475
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 477
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_0

    .line 483
    :try_start_0
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2}, Lcom/sec/android/emergencymode/IEmergencyManager;->needMobileDataBlock()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needMobileDataBlock failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public readyEmergencyMode()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "EmergencyManager"

    const-string v1, "This is emergency mode."

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, v2, v7, v8, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->startService(Ljava/lang/String;ZIZ)V

    .line 176
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->registerReceiver()V

    .line 177
    return-void

    .line 172
    :cond_0
    const-string v0, "EmergencyManager"

    const-string v1, "This is normal mode."

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/emergencymode/EmergencyConstants;->URI_UPDATE_TABLE:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 174
    const-string v0, "com.samsung.intent.action.EMERGENCY_CHECK_ABNORMAL_STATE"

    invoke-direct {p0, v0, v7, v8, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->startService(Ljava/lang/String;ZIZ)V

    goto :goto_0
.end method

.method public requestCallPrivileged(Ljava/lang/String;)I
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 722
    :try_start_0
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 723
    .local v1, "callUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 724
    .local v0, "callIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 725
    iget-object v3, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    const-string v3, "EmergencyManager"

    const-string v4, "req call, success."

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const/4 v3, 0x1

    .end local v0    # "callIntent":Landroid/content/Intent;
    .end local v1    # "callUri":Landroid/net/Uri;
    :goto_0
    return v3

    .line 726
    :catch_0
    move-exception v2

    .line 727
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "EmergencyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "req call, unknown Err : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const/16 v3, -0x9

    goto :goto_0
.end method

.method public setLocationProvider(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 671
    sget-boolean v1, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_EM:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z

    if-nez v1, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 676
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v1, :cond_0

    .line 682
    :try_start_0
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v1, p1}, Lcom/sec/android/emergencymode/IEmergencyManager;->setLocationProvider(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocationProvider failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setforceBlockUserPkg(ZLandroid/content/Context;)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 519
    sget-boolean v1, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_EM:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_UPSM:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/sec/android/emergencymode/EmergencyManager;->mSupport_BCM:Z

    if-nez v1, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 524
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v1, :cond_0

    .line 529
    :try_start_0
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v1, p1}, Lcom/sec/android/emergencymode/IEmergencyManager;->setforceBlockUserPkg(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setforceBlockUserPkg failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
