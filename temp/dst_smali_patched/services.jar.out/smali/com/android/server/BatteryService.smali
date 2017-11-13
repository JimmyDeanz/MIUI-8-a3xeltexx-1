.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$TimeMeasurement;,
        Lcom/android/server/BatteryService$LocalService;,
        Lcom/android/server/BatteryService$BinderService;,
        Lcom/android/server/BatteryService$BatteryListener;,
        Lcom/android/server/BatteryService$Led;,
        Lcom/android/server/BatteryService$NativeDeathRecipient;,
        Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;,
        Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;,
        Lcom/android/server/BatteryService$MoodLightSettingsObserver;,
        Lcom/android/server/BatteryService$LedSettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_POWER_SHARING:Ljava/lang/String; = "com.android.systemui.power.action.POWER_SHARING"

.field private static final ACTION_WIRELESS_POWER_SHARING:Ljava/lang/String; = "com.samsung.systemui.power.action.WIRELESS_POWER_SHARING"

.field private static final ACTION_WIRELESS_RESPONSE_POWER_SHARING:Ljava/lang/String; = "com.samsung.systemui.power.action.RESPONSE_WIRELESS_POWER_SHARING"

.field private static final ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATH:Ljava/lang/String; = "/sys/class/sec/switch/afc_disable"

.field private static final BATTERY_HEALTH_OVERHEATLIMIT:I = 0x8

.field static final BATTERY_ONLINE_FAST_WIRELESS_CHARGER:I = 0x64

.field static final BATTERY_ONLINE_INCOMPATIBLE_CHARGER:I = 0x0

.field static final BATTERY_ONLINE_NONE:I = 0x1

.field static final BATTERY_ONLINE_POGO:I = 0x17

.field static final BATTERY_ONLINE_TA:I = 0x3

.field static final BATTERY_ONLINE_USB:I = 0x4

.field static final BATTERY_ONLINE_WIRELESS_CHARGER:I = 0xa

.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final BATTERY_SCALE:I = 0x64

.field private static final BATT_HV_WIRELESS_STATUS_0V:I = 0x0

.field private static final BATT_HV_WIRELESS_STATUS_5V:I = 0x1

.field private static final BATT_HV_WIRELESS_STATUS_9V:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DUMPSYS_ARGS:[Ljava/lang/String;

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final DUMP_MAX_LENGTH:I = 0x6000

.field private static final FEATURE_SAVE_BATTERY_CYCLE:Z

.field private static final FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

.field private static final LED_CHARGING_SETTINGS_URI:Ljava/lang/String; = "led_indicator_charing"

.field private static final LED_LOW_BATTERY_SETTINGS_URI:Ljava/lang/String; = "led_indicator_low_battery"

.field private static final LIGHT_SEC_FLASH_OFF:I = 0x0

.field private static final MINIMUM_INSPECT_INTENT_SYNC_DURATION:I = 0x7d0

.field private static final MOOD_LIGHT_CHARGING_STATUS_URI:Ljava/lang/String; = "ml_battery_charging"

.field private static final MOOD_LIGHT_LOW_BATTERY_LEVEL_URI:Ljava/lang/String; = "ml_aa_battery_value"

.field private static final MOOD_LIGHT_LOW_BATTERY_STATUS_URI:Ljava/lang/String; = "ml_aa_battery_status"

.field private static final OTG_CHARGE_BLOCK_ENABLE_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/otg/online"

.field private static final OVER_CURRENT_THRESHOLD:I = 0x0

.field private static final PATH_ASOC_NOW:Ljava/lang/String; = "/sys/class/power_supply/battery/fg_asoc"

.field private static final PATH_BATTERY_MAX_CURRENT:Ljava/lang/String; = "/efs/FactoryApp/max_current"

.field private static final PATH_BATTERY_MAX_TEMP:Ljava/lang/String; = "/efs/FactoryApp/max_temp"

.field private static final PATH_EFS_ASOC:Ljava/lang/String; = "/efs/FactoryApp/asoc"

.field private static final PATH_LOG_BATTERY_USAGE:Ljava/lang/String; = "/efs/FactoryApp/batt_discharge_level"

.field private static final PATH_SYSFS_BATTERY_CYCLE:Ljava/lang/String; = "/sys/class/power_supply/battery/battery_cycle"

.field private static final POGO_NONE:I = 0x0

.field private static final POGO_ONLY:I = 0x1

.field private static final POGO_WITH_OTHERS:I = 0x2

.field private static final POWER_SHARING_ENABLE_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/ps/status"

.field private static final PRODUCT_DEV:I = 0x0

.field private static final PROPERTY_WIRELESS_FAST_CHARGING:Ljava/lang/String; = "persist.service.battery.wfc"

.field public static final REQUEST_OTG_CHARGE_BLOCK:Ljava/lang/String; = "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

.field public static final RESPONSE_OTG_CHARGE_BLOCK:Ljava/lang/String; = "android.intent.action.RESPONSE_OTG_CHARGE_BLOCK"

.field private static final SETTING_SHOW_WIRELESS_CHARGER_MENU:Ljava/lang/String; = "show_wireless_charger_menu"

.field private static final SETTING_WIRELESS_FAST_CHARGING:Ljava/lang/String; = "wireless_fast_charging"

.field private static final SMART_SWITCH_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover"

.field private static final SYSFS_BATT_HV_WIRELESS_PAD_CTRL:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_BATTERY_INFO:Ljava/lang/String; = "!@[BatteryInfo] "

.field private static final USE_FAKE_BATTERY:Z

.field private static final WIRELESS_ENABLE_SYSFS_PATH_FOR_EPEN:Ljava/lang/String; = "/sys/class/sec/sec_epen/epen_wcharging_mode"

.field private static final WIRELESS_ENABLE_SYSFS_PATH_FOR_MUIC:Ljava/lang/String; = "/sys/class/sec/switch/wireless"

.field private static final WIRELESS_ENABLE_SYSFS_PATH_FOR_TSP:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field private static final WIRELESS_ENABLE_SYSFS_VALUE_FALSE_FOR_TSP:Ljava/lang/String; = "set_wirelesscharger_mode,0"

.field private static final WIRELESS_ENABLE_SYSFS_VALUE_TRUE_FOR_TSP:Ljava/lang/String; = "set_wirelesscharger_mode,1"

.field private static final WIRELESS_POWER_SHARING_ENABLE_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/ps/status"

.field private static final WIRELESS_POWER_SHARING_USER_LEVEL:Ljava/lang/String; = "power_share_level"

.field private static mWeakChgSocCheckStarted:I = 0x0

.field private static mWirelessPowerSharing_UserLevel:I = 0x0

.field private static final mWirelessPowerSharing_limit:I = 0x14


# instance fields
.field private mActivityManagerReady:Z

.field private mAdaptiveFastChargingSettingsEnable:Z

.field private mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

.field private mBatteryCapacity:I

.field private mBatteryLevelCritical:Z

.field private mBatteryLevelLow:Z

.field private mBatteryMaxCurrent:J

.field private mBatteryMaxTemp:J

.field private mBatteryPropertiesListener:Lcom/android/server/BatteryService$BatteryListener;

.field private mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

.field private mBatteryProps:Landroid/os/BatteryProperties;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBootCompleted:Z

.field private final mContext:Landroid/content/Context;

.field private mCriticalBatteryLevel:I

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

.field private mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

.field private mInitiateShutdown:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInvalidCharger:I

.field private final mInvalidChargerObserver:Landroid/os/UEventObserver;

.field private mLastBatteryChargeType:I

.field private mLastBatteryCurrentAvg:I

.field private mLastBatteryCurrentNow:I

.field private mLastBatteryHealth:I

.field private mLastBatteryHighVoltageCharger:Z

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryOnline:I

.field private mLastBatteryPowerSharingOnline:Z

.field private mLastBatteryPresent:Z

.field private final mLastBatteryProps:Landroid/os/BatteryProperties;

.field private mLastBatterySWSelfDischarging:Z

.field private mLastBatterySecEvent:I

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastInvalidCharger:I

.field private mLastMaxChargingCurrent:I

.field private mLastPlugType:I

.field private mLastSavedBatteryLevel:J

.field private mLastSecEventWaterInConnector:Z

.field private mLastSecPlugTypeSummary:I

.field private mLastWirelessChargingStatus:Z

.field private mLastchargerPogoOnline:Z

.field private mLed:Lcom/android/server/BatteryService$Led;

.field private mLedChargingSettingsEnable:Z

.field private mLedLowBatterySettingsEnable:Z

.field private mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

.field private final mLock:Ljava/lang/Object;

.field private final mLockBatteryInfoBackUp:Ljava/lang/Object;

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private mMoodLightChargingStatusEnable:Z

.field private mMoodLightLowBatteryLevel:I

.field private mMoodLightLowBatteryStatusEnable:Z

.field private mMoodLightOnForScreenOnOff:Z

.field private mMoodLightSettingsObserver:Lcom/android/server/BatteryService$MoodLightSettingsObserver;

.field private mNativeDeathRecipient:Lcom/android/server/BatteryService$NativeDeathRecipient;

.field private final mNumberOfMoodLed:I

.field private mPlugType:I

.field private mPogoDockIntent:I

.field private final mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

.field private final mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

.field private final mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

.field private mSavedBatteryAsoc:J

.field private mSavedBatteryMaxCurrent:J

.field private mSavedBatteryMaxTemp:J

.field private mSavedBatteryUsage:J

.field private mScreenOn:Z

.field private mSecPlugTypeSummary:I

.field private mSentLowBatteryBroadcast:Z

.field private mShutdownBatteryTemperature:I

.field private mTimeMeasurement:Lcom/android/server/BatteryService$TimeMeasurement;

.field private final mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

.field private mUpdatesStopped:Z

.field private final mVbattSamplingIntervalMsec:I

.field private mVoltageNowFile:Ljava/io/File;

.field private mWasUsedWirelessFastChargerPreviously:Z

.field private final mWeakChgCutoffVoltageMv:I

.field private final mWeakChgMaxShutdownIntervalMsecs:I

.field private mWirelessFastChargingSettingsEnable:Z

.field private mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "--checkin"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "--unplugged"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    sput v3, Lcom/android/server/BatteryService;->mWeakChgSocCheckStarted:I

    const-string v0, "/sys/class/power_supply/battery/battery_cycle"

    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "signumlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->USE_FAKE_BATTERY:Z

    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v9, 0x445c0

    const/4 v8, -0x1

    const-wide/16 v4, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    new-instance v3, Landroid/os/BatteryProperties;

    invoke-direct {v3}, Landroid/os/BatteryProperties;-><init>()V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    iput v8, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    iput v8, p0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    const/16 v3, 0x7530

    iput v3, p0, Lcom/android/server/BatteryService;->mVbattSamplingIntervalMsec:I

    const v3, 0x493e0

    iput v3, p0, Lcom/android/server/BatteryService;->mWeakChgMaxShutdownIntervalMsecs:I

    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mInitiateShutdown:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/BatteryService;->mVoltageNowFile:Ljava/io/File;

    new-instance v3, Lcom/android/server/BatteryService$1;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->runnable:Ljava/lang/Runnable;

    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    iput-boolean v7, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mMoodLightOnForScreenOnOff:Z

    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/BatteryService;->mNumberOfMoodLed:I

    iput-boolean v7, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    iput-boolean v7, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mMoodLightChargingStatusEnable:Z

    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mMoodLightLowBatteryStatusEnable:Z

    iput-boolean v7, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    iput v6, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mLastSecEventWaterInConnector:Z

    iput v9, p0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    iput-wide v4, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    iput-wide v4, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    iput-wide v4, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    iput-wide v4, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    iput-wide v4, p0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    iput-wide v4, p0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/BatteryService;->mNativeDeathRecipient:Lcom/android/server/BatteryService$NativeDeathRecipient;

    new-instance v3, Lcom/android/server/BatteryService$2;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v7, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    new-instance v3, Lcom/android/server/BatteryService$18;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$18;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/server/BatteryService$19;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$19;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/server/BatteryService$20;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$20;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/server/BatteryService$21;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$21;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/server/BatteryService$22;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$22;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mInvalidChargerObserver:Landroid/os/UEventObserver;

    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v7}, Landroid/os/Handler;-><init>(Z)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v7}, Landroid/os/Handler;-><init>(Z)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$Led;

    const-class v3, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v3}, Lcom/android/server/BatteryService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsManager;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object v4, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v3, "ro.cutoff_voltage_mv"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mWeakChgCutoffVoltageMv:I

    iget v3, p0, Lcom/android/server/BatteryService;->mWeakChgCutoffVoltageMv:I

    const/16 v4, 0xa8c

    if-le v3, v4, :cond_0

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/power_supply/battery/voltage_now"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mVoltageNowFile:Ljava/io/File;

    :cond_0
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v3, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    const/4 v0, 0x0

    .local v0, "STANDBY_TIME_INFO":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_SSRM_ConfigStandbyTime"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_SSRM_ConfigStandbyTime"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "str":[Ljava/lang/String;
    aget-object v3, v2, v6

    if-eqz v3, :cond_4

    aget-object v3, v2, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    :goto_1
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@Battery capacity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/BatteryService$LedSettingsObserver;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$LedSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    new-instance v3, Lcom/android/server/BatteryService$MoodLightSettingsObserver;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$MoodLightSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mMoodLightSettingsObserver:Lcom/android/server/BatteryService$MoodLightSettingsObserver;

    new-instance v3, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    new-instance v3, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, "filter":Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.systemui.power.action.POWER_SHARING"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.systemui.power.action.WIRELESS_POWER_SHARING"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/BatteryService;->InitBatteryInfo()V

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/BatteryService;->mInvalidChargerObserver:Landroid/os/UEventObserver;

    const-string v4, "DEVPATH=/devices/virtual/switch/invalid_charger"

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_SupportCiq"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/carrieriq/iqagent/client/IQClient;

    invoke-direct {v3}, Lcom/carrieriq/iqagent/client/IQClient;-><init>()V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    :cond_2
    new-instance v3, Lcom/android/server/BatteryService$TimeMeasurement;

    invoke-direct {v3}, Lcom/android/server/BatteryService$TimeMeasurement;-><init>()V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mTimeMeasurement:Lcom/android/server/BatteryService$TimeMeasurement;

    return-void

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "str":[Ljava/lang/String;
    :cond_3
    const-string v0, "280000,933"

    goto/16 :goto_0

    .restart local v2    # "str":[Ljava/lang/String;
    :cond_4
    iput v9, p0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    goto/16 :goto_1
.end method

.method private InitBatteryInfo()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$17;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$17;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/BatteryService;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService;->mVoltageNowFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mMoodLightChargingStatusEnable:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mMoodLightChargingStatusEnable:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mMoodLightLowBatteryStatusEnable:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mMoodLightLowBatteryStatusEnable:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService;->mMoodLightLowBatteryLevel:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/BatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/BatteryService;->mMoodLightLowBatteryLevel:I

    return p1
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    sget v0, Lcom/android/server/BatteryService;->mWirelessPowerSharing_UserLevel:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    sput p0, Lcom/android/server/BatteryService;->mWirelessPowerSharing_UserLevel:I

    return p0
.end method

.method static synthetic access$1600(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/BatteryService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->sendWirelessPowerSharingIntentLocked(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendOTGIntentLocked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfWeakChargerVoltageCheckLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/BatteryService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/BatteryService;)Landroid/os/IBatteryPropertiesRegistrar;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/BatteryService;Landroid/os/IBatteryPropertiesRegistrar;)Landroid/os/IBatteryPropertiesRegistrar;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Landroid/os/IBatteryPropertiesRegistrar;

    .prologue
    iput-object p1, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfWeakChargerEmptySOCLocked()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$NativeDeathRecipient;)Lcom/android/server/BatteryService$NativeDeathRecipient;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Lcom/android/server/BatteryService$NativeDeathRecipient;

    .prologue
    iput-object p1, p0, Lcom/android/server/BatteryService;->mNativeDeathRecipient:Lcom/android/server/BatteryService$NativeDeathRecipient;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/BatteryService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    return-wide v0
.end method

.method static synthetic access$3402(Lcom/android/server/BatteryService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    return-wide p1
.end method

.method static synthetic access$3414(Lcom/android/server/BatteryService;J)J
    .locals 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .prologue
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    return-wide v0
.end method

.method static synthetic access$3422(Lcom/android/server/BatteryService;J)J
    .locals 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .prologue
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    return-wide v0
.end method

.method static synthetic access$3500(Lcom/android/server/BatteryService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/BatteryService;->readBatteryAsocFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3600(Lcom/android/server/BatteryService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/server/BatteryService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    return-wide p1
.end method

.method static synthetic access$3614(Lcom/android/server/BatteryService;J)J
    .locals 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .prologue
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    return-wide v0
.end method

.method static synthetic access$3700(Lcom/android/server/BatteryService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/BatteryService;->readBatteryUsageFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3800()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/BatteryService;Ljava/lang/String;J)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mMoodLightOnForScreenOnOff:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/BatteryService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    return-wide v0
.end method

.method static synthetic access$4002(Lcom/android/server/BatteryService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mMoodLightOnForScreenOnOff:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/BatteryService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/BatteryService;->readBatteryMaxCurrentFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4200(Lcom/android/server/BatteryService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    return-wide v0
.end method

.method static synthetic access$4202(Lcom/android/server/BatteryService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    return-wide p1
.end method

.method static synthetic access$4300(Lcom/android/server/BatteryService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/BatteryService;->readBatteryMaxTempFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4400(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/BatteryService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J

    return-wide v0
.end method

.method static synthetic access$4502(Lcom/android/server/BatteryService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J

    return-wide p1
.end method

.method static synthetic access$4600(Lcom/android/server/BatteryService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    return-wide v0
.end method

.method static synthetic access$4700(Lcom/android/server/BatteryService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    return-wide v0
.end method

.method static synthetic access$4800(Lcom/android/server/BatteryService;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4900(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return v0
.end method

.method static synthetic access$4902(Lcom/android/server/BatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/BatteryService;Landroid/os/BatteryProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Landroid/os/BatteryProperties;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->update(Landroid/os/BatteryProperties;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/BatteryService;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/BatteryService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    return p1
.end method

.method private dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    const/high16 v11, -0x80000000

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    if-eqz p2, :cond_0

    :try_start_0
    array-length v9, p2

    if-eqz v9, :cond_0

    const-string v9, "-a"

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_0
    const-string v6, "Current Battery Service state:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v6, :cond_1

    const-string v6, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mBootCompleted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  AC powered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  USB powered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Wireless powered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Max charging current: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  health: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  present: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  level: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "  scale: 100"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  voltage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  temperature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  technology: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v7, v7, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  batterySWSelfDischarging: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->batterySWSelfDischarging:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  batterySecEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batterySecEvent:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSecPlugTypeSummary: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  LED Charging: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  LED Low Battery: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v6, v6, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    if-eq v6, v11, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  current now: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v6, v6, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    if-eq v6, v11, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  charge counter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Adaptive Fast Charging Settings: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "BatteryInfoBackUp"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSavedBatteryAsoc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSavedBatteryMaxTemp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSavedBatteryMaxCurrent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSavedBatteryUsage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  FEATURE_SAVE_BATTERY_CYCLE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USE_FAKE_BATTERY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/BatteryService;->USE_FAKE_BATTERY:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEC_FEATURE_BATTERY_SIMULATION: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SIMULATION:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FEATURE_WIRELESS_FAST_CHARGER_CONTROL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mWasUsedWirelessFastChargerPreviously: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mWirelessFastChargingSettingsEnable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    :goto_0
    monitor-exit v8

    return-void

    :cond_5
    const-string v9, "unplug"

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v6, v7}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    :cond_6
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .local v2, "ident":J
    const/4 v6, 0x1

    :try_start_1
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "ident":J
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v2    # "ident":J
    :catchall_1
    move-exception v6

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .end local v2    # "ident":J
    :cond_7
    array-length v9, p2

    const/4 v10, 0x3

    if-ne v9, v10, :cond_12

    const-string v9, "set"

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    const/4 v9, 0x1

    aget-object v1, p2, v9

    .local v1, "key":Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v5, p2, v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v5, "value":Ljava/lang/String;
    :try_start_4
    iget-boolean v9, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v9, v10}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    :cond_8
    const/4 v4, 0x1

    .local v4, "update":Z
    const-string v9, "ac"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_9

    :goto_1
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    :goto_2
    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v2

    .restart local v2    # "ident":J
    const/4 v6, 0x1

    :try_start_5
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .end local v2    # "ident":J
    .end local v4    # "update":Z
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v4    # "update":Z
    :cond_9
    move v6, v7

    goto :goto_1

    :cond_a
    :try_start_8
    const-string v9, "usb"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_b

    :goto_3
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    goto :goto_2

    :cond_b
    move v6, v7

    goto :goto_3

    :cond_c
    const-string v9, "wireless"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_d

    :goto_4
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    goto :goto_2

    :cond_d
    move v6, v7

    goto :goto_4

    :cond_e
    const-string v6, "status"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/os/BatteryProperties;->batteryStatus:I

    goto :goto_2

    :cond_f
    const-string v6, "level"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    goto :goto_2

    :cond_10
    const-string v6, "invalid"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    goto/16 :goto_2

    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown set option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_2

    .restart local v2    # "ident":J
    :catchall_2
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "ident":J
    .end local v4    # "update":Z
    .end local v5    # "value":Ljava/lang/String;
    :cond_12
    :try_start_9
    array-length v7, p2

    if-ne v7, v6, :cond_14

    const-string v6, "reset"

    const/4 v7, 0x0

    aget-object v7, p2, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-wide v2

    .restart local v2    # "ident":J
    :try_start_a
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v6, :cond_13

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v7, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v6, v7}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_13
    :try_start_b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_3
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .end local v2    # "ident":J
    :cond_14
    const-string v6, "Dump current battery state, or:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "  set [ac|usb|wireless|status|level|invalid] <value>"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "  unplug"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "  reset"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0
.end method

.method private static fileWriteInt(Ljava/lang/String;I)V
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "out":Ljava/io/FileOutputStream;
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .local v2, "out":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v6, "fileWriteString : file not found"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_0
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileWriteString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v6, "fileWriteString : file not found"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private getIconLocked(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    const v0, 0x1080793

    const v1, 0x1080785

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    :cond_3
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const v0, 0x10807a1

    goto :goto_0
.end method

.method private static isFileSupported(Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .local v1, "ret":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method private isPoweredLocked(I)Z
    .locals 3
    .param p1, "plugTypeSet"    # I

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "returning true for isPoweredLocked"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryStatus:I

    if-eq v1, v0, :cond_0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-nez v1, :cond_0

    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-nez v1, :cond_0

    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-nez v1, :cond_0

    :cond_4
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    if-nez v1, :cond_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logBatteryStatsLocked()V
    .locals 11

    .prologue
    const-string v7, "batterystats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "batteryInfoService":Landroid/os/IBinder;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v8, "dropbox"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .local v1, "db":Landroid/os/DropBoxManager;
    if-eqz v1, :cond_0

    const-string v7, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v1, v7}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v2, 0x0

    .local v2, "dumpFile":Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/system/batterystats.dump"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "dumpFile":Ljava/io/File;
    .local v3, "dumpFile":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .local v5, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    const-string v7, "BATTERY_DISCHARGE_INFO"

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v3, v8}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_7

    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_0

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3    # "dumpFile":Ljava/io/File;
    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "dumpFile":Ljava/io/File;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    :goto_2
    :try_start_4
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to dump battery service"

    invoke-static {v7, v8, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v6    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to write dumpsys file"

    invoke-static {v7, v8, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_4
    :goto_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_4
    move-exception v6

    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to delete temporary dumpsys file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v7

    :catch_5
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "failed to close dumpsys output stream"

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "dumpFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_6

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_6

    .end local v2    # "dumpFile":Ljava/io/File;
    .restart local v3    # "dumpFile":Ljava/io/File;
    :catch_6
    move-exception v6

    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_4

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v6

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_4

    .end local v2    # "dumpFile":Ljava/io/File;
    .restart local v3    # "dumpFile":Ljava/io/File;
    :catch_8
    move-exception v6

    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_2

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v6

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_2

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :cond_7
    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_0
.end method

.method private logOutlierLocked(J)V
    .locals 11
    .param p1, "duration"    # J

    .prologue
    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v7, "battery_discharge_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "dischargeThresholdString":Ljava/lang/String;
    const-string v7, "battery_discharge_duration_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "durationThresholdString":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .local v4, "durationThreshold":J
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "dischargeThreshold":I
    cmp-long v7, p1, v4

    if-gtz v7, :cond_0

    iget v7, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v8, v8, Landroid/os/BatteryProperties;->batteryLevel:I

    sub-int/2addr v7, v8

    if-lt v7, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "dischargeThreshold":I
    .end local v4    # "durationThreshold":J
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processValuesLocked(Z)V
    .locals 10
    .param p1, "force"    # Z

    .prologue
    const/4 v7, 0x0

    .local v7, "logOutlier":Z
    const-wide/16 v8, 0x0

    .local v8, "dischargeDuration":J
    sget-boolean v0, Lcom/android/server/BatteryService;->USE_FAKE_BATTERY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    :goto_1
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    :cond_2
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    :cond_3
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    :cond_4
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryStatus:I

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryHealth:I

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v5, v5, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v6, v6, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    if-nez v0, :cond_5

    sget v0, Lcom/android/server/BatteryService;->mWeakChgSocCheckStarted:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/server/BatteryService;->mWeakChgCutoffVoltageMv:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    sput v0, Lcom/android/server/BatteryService;->mWeakChgSocCheckStarted:I

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BatteryService;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BatteryService;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryVoltage:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryOnline:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryCurrentAvg:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryChargeType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPowerSharingOnline:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:Z

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryCurrentNow:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batterySWSelfDischarging:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatterySWSelfDischarging:Z

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batterySecEvent:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatterySecEvent:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-eq v0, v1, :cond_16

    :cond_6
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_1f

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    if-eq v0, v1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v8, v0, v2

    const/4 v7, 0x1

    const/16 v0, 0xaaa

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_4
    iget v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    :cond_8
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J

    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v1, :cond_b

    :cond_a
    const/16 v1, 0xaa3

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v3, v3, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-eq v0, v1, :cond_c

    const/16 v0, 0xaa2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v8, v0, v2

    const/4 v7, 0x1

    :cond_d
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v0, :cond_22

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    :cond_e
    :goto_7
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryOnline:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "enable wireless charger menu in setting"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_wireless_charger_menu"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_11
    iget-object v0, p0, Lcom/android/server/BatteryService;->mTimeMeasurement:Lcom/android/server/BatteryService$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$TimeMeasurement;->resetTime()V

    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendIntentLocked()V

    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendSecEventIntentLocked()V

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_25

    :cond_12
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$7;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    :goto_8
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$9;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$9;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    :goto_9
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    if-eqz v7, :cond_15

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_15

    invoke-direct {p0, v8, v9}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    :cond_15
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryVoltage:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryOnline:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryCurrentAvg:I

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryChargeType:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPowerSharingOnline:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:Z

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryCurrentNow:I

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batterySWSelfDischarging:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatterySWSelfDischarging:Z

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batterySecEvent:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatterySecEvent:I

    iget v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    :cond_16
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "notify wireless on"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/sec/sec_epen/epen_wcharging_mode"

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    const-string v0, "/sys/class/sec/switch/wireless"

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    const-string v0, "/sys/class/sec/tsp/cmd"

    const-string v1, "set_wirelesscharger_mode,1"

    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_a
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    :cond_17
    return-void

    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_19
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_1

    :cond_1a
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_1

    :cond_1b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_1

    :cond_1c
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_1

    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_1

    :cond_1e
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    goto/16 :goto_2

    :cond_1f
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    goto/16 :goto_4

    :cond_20
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :cond_21
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_22
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto/16 :goto_7

    :cond_23
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v1, :cond_24

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto/16 :goto_7

    :cond_24
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v0, v1, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto/16 :goto_7

    :cond_25
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_26

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    :cond_26
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$8;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    :cond_27
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v1, :cond_14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$10;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$10;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    :cond_28
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "notify wireless off"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/sec/sec_epen/epen_wcharging_mode"

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    const-string v0, "/sys/class/sec/switch/wireless"

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    const-string v0, "/sys/class/sec/tsp/cmd"

    const-string v1, "set_wirelesscharger_mode,0"

    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto/16 :goto_3
.end method

.method private readBatteryAsocFromEfsLocked()J
    .locals 10

    .prologue
    const-wide/16 v4, 0x64

    const-wide/16 v8, 0x0

    const-wide/16 v2, -0x1

    const-string v6, "/efs/FactoryApp/asoc"

    invoke-direct {p0, v6}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    .local v0, "asoc":J
    cmp-long v6, v0, v8

    if-gez v6, :cond_0

    const-string v6, "/sys/class/power_supply/battery/fg_asoc"

    invoke-direct {p0, v6}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    const-string v4, "/efs/FactoryApp/asoc"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    move-wide v0, v2

    .end local v0    # "asoc":J
    :cond_0
    :goto_0
    return-wide v0

    .restart local v0    # "asoc":J
    :cond_1
    const-string v2, "/efs/FactoryApp/asoc"

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    move-wide v0, v4

    goto :goto_0
.end method

.method private readBatteryInfo(Ljava/lang/String;)J
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "strData":Ljava/lang/String;
    const-wide/16 v2, -0x1

    .local v2, "ret":J
    if-nez v1, :cond_1

    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@[BatteryInfo] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : data is null."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@[BatteryInfo] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : data is \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readBatteryMaxCurrentFromEfsLocked()J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    const-string v4, "/efs/FactoryApp/max_current"

    invoke-direct {p0, v4}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    .local v0, "maxCurrent":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    const-string v4, "/efs/FactoryApp/max_current"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    move-wide v0, v2

    .end local v0    # "maxCurrent":J
    :cond_0
    return-wide v0
.end method

.method private readBatteryMaxTempFromEfsLocked()J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    const-string v4, "/efs/FactoryApp/max_temp"

    invoke-direct {p0, v4}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    .local v0, "maxTemp":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    const-string v4, "/efs/FactoryApp/max_temp"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    move-wide v0, v2

    .end local v0    # "maxTemp":J
    :cond_0
    return-wide v0
.end method

.method private readBatteryUsageFromEfsLocked()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x1

    const-string v4, "/efs/FactoryApp/batt_discharge_level"

    invoke-direct {p0, v4}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    .local v0, "batteryUsage":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    const-string v4, "/efs/FactoryApp/batt_discharge_level"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    move-wide v0, v2

    .end local v0    # "batteryUsage":J
    :cond_0
    return-wide v0
.end method

.method private readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .local v4, "ret":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@[BatteryInfo] readFromFile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_1
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v6, "!@[BatteryInfo] IOException in readFromFile"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "err":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v6, "!@[BatteryInfo] Exception in readFromFile"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method private registerContentObserver(Landroid/content/ContentResolver;)V
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v7, -0x2

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "led_indicator_charing"

    invoke-static {p1, v1, v2, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    const-string v1, "led_indicator_low_battery"

    invoke-static {p1, v1, v2, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    const-string v1, "ml_battery_charging"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mMoodLightChargingStatusEnable:Z

    const-string v1, "ml_aa_battery_status"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mMoodLightLowBatteryStatusEnable:Z

    const-string v1, "ml_aa_battery_value"

    const/16 v4, 0x14

    invoke-static {p1, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService;->mMoodLightLowBatteryLevel:I

    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@Mood Light Charging Status Setting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mMoodLightChargingStatusEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@Mood Light Low Battery Status Setting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mMoodLightLowBatteryStatusEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@Mood Light Low Battery Level Settings = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/BatteryService;->mMoodLightLowBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@Led Charging Settings = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@Led Low Battery Settings = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "led_indicator_charing"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    invoke-virtual {p1, v1, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "led_indicator_low_battery"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    invoke-virtual {p1, v1, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "ml_battery_charging"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/BatteryService;->mMoodLightSettingsObserver:Lcom/android/server/BatteryService$MoodLightSettingsObserver;

    invoke-virtual {p1, v1, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "ml_aa_battery_status"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/BatteryService;->mMoodLightSettingsObserver:Lcom/android/server/BatteryService$MoodLightSettingsObserver;

    invoke-virtual {p1, v1, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "ml_aa_battery_value"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/BatteryService;->mMoodLightSettingsObserver:Lcom/android/server/BatteryService$MoodLightSettingsObserver;

    invoke-virtual {p1, v1, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "adaptive_fast_charging"

    invoke-static {p1, v1, v2, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@AdaptiveFastCharging Settings = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/sec/switch/afc_disable"

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "sys_afc_value":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    if-eq v1, v2, :cond_1

    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@ need to change AdaptiveFastCharging Settings = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService;->setAdaptiveFastCharging(Z)Z

    :cond_2
    const-string v1, "adaptive_fast_charging"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    invoke-virtual {p1, v1, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "show_wireless_charger_menu"

    invoke-static {p1, v1, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    const-string v1, "wireless_fast_charging"

    invoke-static {p1, v1, v2, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_9

    :goto_6
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@WirelessFastCharging Settings = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    const-string v1, "wireless_fast_charging"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    invoke-virtual {p1, v1, v3, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void

    .end local v0    # "sys_afc_value":Ljava/lang/String;
    :cond_3
    move v1, v3

    goto/16 :goto_0

    :cond_4
    move v1, v3

    goto/16 :goto_1

    :cond_5
    move v1, v3

    goto/16 :goto_2

    :cond_6
    move v1, v3

    goto/16 :goto_3

    :cond_7
    move v1, v3

    goto/16 :goto_4

    .restart local v0    # "sys_afc_value":Ljava/lang/String;
    :cond_8
    move v1, v3

    goto :goto_5

    :cond_9
    move v2, v3

    goto :goto_6
.end method

.method private saveBatteryInfo(Ljava/lang/String;J)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method private sendIntentLocked()V
    .locals 14

    .prologue
    const-wide/16 v12, 0xa

    const/16 v11, 0x64

    const/4 v10, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x60000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, "pogoIntent":Landroid/content/Intent;
    const/high16 v8, 0x20000000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v7, 0x0

    .local v7, "setPogoCondition":I
    iget v5, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    .local v5, "oldPogoIntentState":I
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .local v4, "kids_home_mode":I
    const/4 v1, 0x0

    .local v1, "device_provisioned":I
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v8, v8, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v8, v8, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v8, v8, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v8, v8, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v8, :cond_3

    :cond_0
    const/4 v7, 0x2

    :goto_0
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    :goto_1
    iget v8, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    if-eq v5, v8, :cond_2

    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    if-eqz v8, :cond_1

    const-string v8, "device_provisioned"

    invoke-static {v0, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "kids_home_mode"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    :cond_1
    if-eqz v1, :cond_5

    if-nez v4, :cond_5

    const-string v8, "android.intent.extra.DOCK_STATE"

    iget v9, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/BatteryService$11;

    invoke-direct {v9, p0, v6}, Lcom/android/server/BatteryService$11;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/server/BatteryService;->mTimeMeasurement:Lcom/android/server/BatteryService$TimeMeasurement;

    const-string v9, "BatteryService : SendIntentLocked() - pogo"

    invoke-virtual {v8, v9, v12, v13}, Lcom/android/server/BatteryService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v8, v8, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-direct {p0, v8}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v2

    .local v2, "icon":I
    const-string v8, "status"

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "health"

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "present"

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v9, v9, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "level"

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "scale"

    invoke-virtual {v3, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "icon-small"

    invoke-virtual {v3, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "plugged"

    iget v9, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "voltage"

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "temperature"

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "technology"

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v9, v9, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "invalid_charger"

    iget v9, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "max_charging_current"

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "online"

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryOnline:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "current_avg"

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "charge_type"

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryChargeType:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "power_sharing"

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v9, v9, Landroid/os/BatteryProperties;->batteryPowerSharingOnline:Z

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "hv_charger"

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v9, v9, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "capacity"

    iget v9, p0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "current_now"

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "pogo_plugged"

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "self_discharging"

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v9, v9, Landroid/os/BatteryProperties;->batterySWSelfDischarging:Z

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "level:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", scale:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", status:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", health:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", present:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v10, v10, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", voltage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", temperature: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", technology: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v10, v10, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", AC powered:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v10, v10, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", USB powered:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v10, v10, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", POGO powered:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v10, v10, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Wireless powered:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v10, v10, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", icon:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", invalid charger:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", maxChargingCurrent:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "online:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryOnline:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", current avg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", charge type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryChargeType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", power sharing:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v10, v10, Landroid/os/BatteryProperties;->batteryPowerSharingOnline:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", high voltage charger:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v10, v10, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", capacity:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", batterySWSelfDischarging:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v10, v10, Landroid/os/BatteryProperties;->batterySWSelfDischarging:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", current_now:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/BatteryService$12;

    invoke-direct {v9, p0, v3}, Lcom/android/server/BatteryService$12;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v8, p0, Lcom/android/server/BatteryService;->mTimeMeasurement:Lcom/android/server/BatteryService$TimeMeasurement;

    const-string v9, "BatteryService : sendIntentLocked()"

    invoke-virtual {v8, v9, v12, v13}, Lcom/android/server/BatteryService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    return-void

    .end local v2    # "icon":I
    :cond_3
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_4
    iput v10, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    goto/16 :goto_1

    :cond_5
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "device_provisioned: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "kids_home_mode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private sendOTGIntentLocked()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESPONSE_OTG_CHARGE_BLOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$15;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendSecEventIntentLocked()V
    .locals 5

    .prologue
    const/high16 v4, 0x24000000

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batterySecEvent:I

    iget v3, p0, Lcom/android/server/BatteryService;->mLastBatterySecEvent:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget v3, p0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batterySecEvent:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .local v0, "batteryWaterInConnector":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mLastSecEventWaterInConnector:Z

    if-eq v2, v0, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.server.BatteryService.action.SEC_BATTERY_WATER_IN_CONNECTOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "water"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$13;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/BatteryService$13;-><init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastSecEventWaterInConnector:Z

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget v2, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget v3, p0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-eq v2, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "sec_plug_type"

    iget v3, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$14;

    invoke-direct {v3, p0, v1}, Lcom/android/server/BatteryService$14;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "batteryWaterInConnector":Z
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private sendWirelessPowerSharingIntentLocked(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.systemui.power.action.RESPONSE_WIRELESS_POWER_SHARING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "power_sharing_enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$16;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setWirelessFastCharging(Z)V
    .locals 2
    .param p1, "isWirelessFastChargingSettingsEnable"    # Z

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private shouldSendBatteryLowLocked()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v4, :cond_1

    move v1, v2

    .local v1, "plugged":Z
    :goto_0
    iget v4, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v4, :cond_2

    move v0, v2

    .local v0, "oldPlugged":Z
    :goto_1
    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryStatus:I

    if-eq v4, v2, :cond_3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v4, v5, :cond_3

    if-nez v0, :cond_0

    iget v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-le v4, v5, :cond_3

    :cond_0
    :goto_2
    return v2

    .end local v0    # "oldPlugged":Z
    .end local v1    # "plugged":Z
    :cond_1
    move v1, v3

    goto :goto_0

    .restart local v1    # "plugged":Z
    :cond_2
    move v0, v3

    goto :goto_1

    .restart local v0    # "oldPlugged":Z
    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method private shutdownIfNoPowerLocked()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    if-ltz v2, :cond_1

    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .local v0, "emergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "Emergency mode is on so doesn\'t shutdown"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "emergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_2
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "persist.sys.shutdown"

    const-string v3, "LBSD"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_SupportCiq"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lcom/carrieriq/iqagent/client/metrics/hw/HW0E;

    invoke-direct {v1}, Lcom/carrieriq/iqagent/client/metrics/hw/HW0E;-><init>()V

    .local v1, "hw0E":Lcom/carrieriq/iqagent/client/metrics/hw/HW0E;
    const/4 v2, 0x1

    iput-byte v2, v1, Lcom/carrieriq/iqagent/client/metrics/hw/HW0E;->ucBatteryEvent:B

    iget-object v2, p0, Lcom/android/server/BatteryService;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    invoke-virtual {v2, v1}, Lcom/carrieriq/iqagent/client/IQClient;->submitMetric(Lcom/carrieriq/iqagent/client/Metric;)I

    .end local v1    # "hw0E":Lcom/carrieriq/iqagent/client/metrics/hw/HW0E;
    :cond_4
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$5;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private shutdownIfOverTempLocked()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget v2, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v1, Landroid/os/BatteryProperties;->batteryTemperature:I

    .local v0, "overTemp":I
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$6;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v0    # "overTemp":I
    :cond_0
    return-void
.end method

.method private shutdownIfWeakChargerEmptySOCLocked()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mInitiateShutdown:Z

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "silent_reboot shutdownIfWeakChargerEmptySOCLocked"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mInitiateShutdown:Z

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/BatteryService;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/BatteryService;->runnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mInitiateShutdown:Z

    sput v3, Lcom/android/server/BatteryService;->mWeakChgSocCheckStarted:I

    goto :goto_0
.end method

.method private shutdownIfWeakChargerVoltageCheckLocked()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    .local v7, "vbattNow":I
    const/4 v3, 0x0

    .local v3, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    iget-object v8, p0, Lcom/android/server/BatteryService;->mVoltageNowFile:Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "strVBatt":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :cond_0
    if-lez v7, :cond_4

    div-int/lit16 v7, v7, 0x3e8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "strVBatt":Ljava/lang/String;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :goto_1
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v8, v8, Landroid/os/BatteryProperties;->batteryLevel:I

    if-nez v8, :cond_8

    iget v8, p0, Lcom/android/server/BatteryService;->mWeakChgCutoffVoltageMv:I

    if-gt v7, v8, :cond_7

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "silent_reboot shutdownIfWeakChargerVoltageCheckLocked"

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, "intent":Landroid/content/Intent;
    const-string v8, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v5    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_2
    return-void

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "strVBatt":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "strVBatt":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    :cond_6
    throw v8
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_4
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "Failure in reading battery voltage"

    invoke-static {v8, v9, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "strVBatt":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "strVBatt":Ljava/lang/String;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :goto_5
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "Failure in reading battery voltage"

    invoke-static {v8, v9, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    iget-object v8, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/BatteryService;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v8, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/BatteryService;->runnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x7530

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_8
    sput v10, Lcom/android/server/BatteryService;->mWeakChgSocCheckStarted:I

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "strVBatt":Ljava/lang/String;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "strVBatt":Ljava/lang/String;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3
.end method

.method private simulateValuesLocked()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SIMULATION:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "sys.battery.simulation"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "simVal":I
    if-eq v0, v5, :cond_0

    const-string v1, "sys.battery.level"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_2

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iput v0, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    :cond_2
    const-string v1, "sys.battery.ac"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    if-eqz v0, :cond_11

    move v1, v2

    :goto_1
    iput-boolean v1, v4, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    :cond_3
    const-string v1, "sys.battery.wireless"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_4

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    if-eqz v0, :cond_12

    move v1, v2

    :goto_2
    iput-boolean v1, v4, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    :cond_4
    const-string v1, "sys.battery.usb"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_5

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    if-eqz v0, :cond_13

    move v1, v2

    :goto_3
    iput-boolean v1, v4, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    :cond_5
    const-string v1, "sys.battery.pogo"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_6

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    if-eqz v0, :cond_14

    move v1, v2

    :goto_4
    iput-boolean v1, v4, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    :cond_6
    const-string v1, "sys.battery.status"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_7

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iput v0, v1, Landroid/os/BatteryProperties;->batteryStatus:I

    :cond_7
    const-string v1, "sys.battery.health"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_8

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iput v0, v1, Landroid/os/BatteryProperties;->batteryHealth:I

    :cond_8
    const-string v1, "sys.battery.present"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_9

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    if-eqz v0, :cond_15

    move v1, v2

    :goto_5
    iput-boolean v1, v4, Landroid/os/BatteryProperties;->batteryPresent:Z

    :cond_9
    const-string v1, "sys.battery.voltage"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_a

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iput v0, v1, Landroid/os/BatteryProperties;->batteryVoltage:I

    :cond_a
    const-string v1, "sys.battery.temperature"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_b

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iput v0, v1, Landroid/os/BatteryProperties;->batteryTemperature:I

    :cond_b
    const-string v1, "sys.battery.online"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_c

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iput v0, v1, Landroid/os/BatteryProperties;->batteryOnline:I

    :cond_c
    const-string v1, "sys.battery.currentAvg"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_d

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iput v0, v1, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    :cond_d
    const-string v1, "sys.battery.chargerType"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_e

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iput v0, v1, Landroid/os/BatteryProperties;->batteryChargeType:I

    :cond_e
    const-string v1, "sys.battery.powerSharing"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_f

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    if-eqz v0, :cond_16

    move v1, v2

    :goto_6
    iput-boolean v1, v4, Landroid/os/BatteryProperties;->batteryPowerSharingOnline:Z

    :cond_f
    const-string v1, "sys.battery.AFC"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_10

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    if-eqz v0, :cond_17

    move v1, v2

    :goto_7
    iput-boolean v1, v4, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    :cond_10
    const-string v1, "sys.battery.selfDischg"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    if-eqz v0, :cond_18

    :goto_8
    iput-boolean v2, v1, Landroid/os/BatteryProperties;->batterySWSelfDischarging:Z

    goto/16 :goto_0

    :cond_11
    move v1, v3

    goto/16 :goto_1

    :cond_12
    move v1, v3

    goto/16 :goto_2

    :cond_13
    move v1, v3

    goto/16 :goto_3

    :cond_14
    move v1, v3

    goto/16 :goto_4

    :cond_15
    move v1, v3

    goto/16 :goto_5

    :cond_16
    move v1, v3

    goto :goto_6

    :cond_17
    move v1, v3

    goto :goto_7

    :cond_18
    move v2, v3

    goto :goto_8
.end method

.method private update(Landroid/os/BatteryProperties;)V
    .locals 9
    .param p1, "props"    # Landroid/os/BatteryProperties;

    .prologue
    const-string v6, "debug.batt.no_battery"

    const-string v7, "false"

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "nobattMode":Ljava/lang/String;
    const-string v6, "true"

    if-ne v5, v6, :cond_1

    const/4 v2, 0x4

    .local v2, "NTIMES":I
    const-wide/16 v0, 0x3e8

    .local v0, "NSLEEPMS":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v4, v6, :cond_0

    sget-object v6, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoking sleep: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/InterruptedException;
    sget-object v6, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "interrupted sleep: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_0
    sget-object v6, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v7, "done with sleep..."

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "NSLEEPMS":J
    .end local v2    # "NTIMES":I
    .end local v4    # "i":I
    :cond_1
    iget-object v7, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v6, :cond_3

    iput-object p1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-direct {p0}, Lcom/android/server/BatteryService;->simulateValuesLocked()V

    const-string v6, "false"

    if-ne v5, v6, :cond_2

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    :cond_2
    :goto_2
    monitor-exit v7

    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v6, p1}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private updateBatteryWarningLevelLocked()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .local v0, "defWarnLevel":I
    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v3, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    :cond_0
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "skipping processValuesLocked since mBatteryProps not yet initialized"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeToFile(Ljava/lang/String;J)I
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # J

    .prologue
    const/4 v3, 0x0

    .local v3, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "rw"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .local v4, "raf":Ljava/io/RandomAccessFile;
    if-eqz v4, :cond_0

    const-wide/16 v6, 0x0

    :try_start_1
    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "eol":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@[BatteryInfo] writeToFile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v5, 0x0

    move-object v3, v4

    .end local v1    # "eol":Ljava/lang/String;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :goto_0
    return v5

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    const/4 v5, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_2
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v6, "!@[BatteryInfo] IOException in writeToFile"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .local v2, "err":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v6, "!@[BatteryInfo] Exception in writeToFile"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    const/16 v2, 0x226

    if-ne p1, v2, :cond_1

    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "onBootPhase: PHASE_ACTIVITY_MANAGER_READY"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    new-instance v0, Lcom/android/server/BatteryService$3;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .local v0, "obs":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "low_power_trigger_level"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->registerContentObserver(Landroid/content/ContentResolver;)V

    monitor-exit v3

    .end local v0    # "obs":Landroid/database/ContentObserver;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$4;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v1, "batteryproperties"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    new-instance v2, Lcom/android/server/BatteryService$BatteryListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/BatteryService$BatteryListener;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-interface {v1, v2}, Landroid/os/IBatteryPropertiesRegistrar;->registerListener(Landroid/os/IBatteryPropertiesListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/android/server/BatteryService$NativeDeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/android/server/BatteryService$NativeDeathRecipient;-><init>(Lcom/android/server/BatteryService;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mNativeDeathRecipient:Lcom/android/server/BatteryService$NativeDeathRecipient;

    const-string v1, "battery"

    new-instance v2, Lcom/android/server/BatteryService$BinderService;

    invoke-direct {v2, p0, v4}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v1, Landroid/os/BatteryManagerInternal;

    new-instance v2, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v2, p0, v4}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/BatteryService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method setAdaptiveFastCharging(Z)Z
    .locals 6
    .param p1, "adaptiveFastChargingEnable"    # Z

    .prologue
    const/4 v0, 0x1

    .local v0, "result":Z
    const-string v2, "/sys/class/sec/switch/afc_disable"

    const-wide/16 v4, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v2, v4, v5, v1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "success to set AFC sysfs as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "fail to set AFC sysfs"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method setOTGEnableDisable(Z)Z
    .locals 4
    .param p1, "otgEnable"    # Z

    .prologue
    const-string v0, "/sys/class/power_supply/otg/online"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method setPowerSharing(Z)Z
    .locals 4
    .param p1, "powerSharing"    # Z

    .prologue
    const-string v0, "/sys/class/power_supply/ps/status"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method setWirelessPowerSharing(Z)Z
    .locals 4
    .param p1, "powerSharing"    # Z

    .prologue
    const-string v0, "/sys/class/power_supply/ps/status"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method writeToFile(Ljava/lang/String;JZ)Z
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "value"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .local v3, "randomAccessFile":Ljava/io/RandomAccessFile;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "rw"

    invoke-direct {v4, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v4, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    if-eqz p4, :cond_1

    const-string v6, "1"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    :goto_1
    invoke-virtual {v4, v6}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v5, 0x1

    move-object v3, v4

    .end local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :cond_1
    :try_start_4
    const-string v6, "0"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v6

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method
