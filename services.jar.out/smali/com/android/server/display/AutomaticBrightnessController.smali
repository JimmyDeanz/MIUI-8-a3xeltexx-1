.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;,
        Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;,
        Lcom/android/server/display/AutomaticBrightnessController$UserSwitchedReceiver;,
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;,
        Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_HORIZON:I = 0x2710

.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0x2710

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static final DEBUG:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final HBM_LEVEL_SYSFS_PATH:Ljava/lang/String; = "/sys/class/backlight/panel/auto_brightness_level"

.field public static HBM_USER_ENABLE:Z = false

.field private static final MANUAL_LUX_LIMIT:I = 0x64

.field private static final MSG_BRIGHTNESS_ADJUSTMENT_SAMPLE:I = 0x2

.field private static final MSG_PRINT_LAST_LIGHT_SENSOR_EVENT:I = 0x3

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 3.0f

.field private static SPECIFIC_HBM_FEATURE:Z = false

.field private static final SPECIFIC_HBM_LUX:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field private static final TAG_PAB:Ljava/lang/String; = "[PAB] "

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true

.field private static final USE_TWILIGHT_ADJUSTMENT:Z

.field private static final WEIGHTING_INTERCEPT:I = 0x2710


# instance fields
.field private final AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

.field private final COMMON_LUX_PATH:Ljava/lang/String;

.field private final LIGHT_SENSOR_UPDATE_TIMEOUT_MILLIS:J

.field private final MDNIE_AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

.field private final OFFSET_FIX:I

.field private final OFFSET_SUB:I

.field private final OFFSET_USER:I

.field private final TAG_DAB:Ljava/lang/String;

.field private final TAG_SENSOR:Ljava/lang/String;

.field private final TCON_BRIGHTNESS_MODE_PATH:Ljava/lang/String;

.field private final TCON_LUX_PATH:Ljava/lang/String;

.field private lastLightSensorEventTime:J

.field private lastLightSensorValue:F

.field private lastRawBrightnessValue:F

.field private mAmbientCandela:F

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private mAutoBrightnessForEbookOnly:Z

.field private final mBrighteningLightDebounceConfig:J

.field private mBrighteningLuxThreshold:F

.field private mBrightnessAdjustmentSampleOldAdjustment:F

.field private mBrightnessAdjustmentSampleOldBrightness:I

.field private mBrightnessAdjustmentSampleOldGamma:F

.field private mBrightnessAdjustmentSampleOldLux:F

.field private mBrightnessAdjustmentSamplePending:Z

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private final mDarkeningLightDebounceConfig:J

.field private mDarkeningLuxThreshold:F

.field private mDebounceLuxDirection:I

.field private mDebounceLuxTime:J

.field private final mDozeScaleFactor:F

.field private mDozing:Z

.field private mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

.field private mExistAutoBrightnessLevelPath:Z

.field private mExistCommonLuxPath:Z

.field private mExistMdnieAutoBrightnessLevelPath:Z

.field private mExistTconBrightnessModePath:Z

.field private mExistTconLuxPath:Z

.field private mHBMDisableLevel:I

.field private mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field private mHandlerRegisterInSeperate:Landroid/os/Handler;

.field private mHandlerRegisterInSeperateThread:Landroid/os/HandlerThread;

.field private mHasRetailModeApp:Z

.field private mHighHysteresis:F

.field private mIsBrightnessModeAuto:Z

.field private mIsLockZone:Z

.field private mIsSupportedSensorHubAutoBrightness:Z

.field private mLastAmbientLux:I

.field private mLastHBM:Z

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastObservedSensorHubLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private mLastTemporaryScreenBrightnessSettingOverride:I

.field private mLatestAnimationTarget:I

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private final mLightSensorListenerUpdateTimeoutRunnable:Ljava/lang/Runnable;

.field private final mLightSensorRate:I

.field private mLightSensorWarmUpTimeConfig:I

.field private final mLockPAB:Ljava/lang/Object;

.field private mLowHysteresis:F

.field private mManualAdjustment:F

.field private mNeedToAddPersonalAutoBrightnessPoint:Z

.field private mPendingScreenAutoBrightness:Z

.field private mPendingScreenBrightnessSetting:I

.field private mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

.field private mPrevAutoBrightnessLevel:I

.field private mPrevTconBrightnessMode:Z

.field private mPrevTconLuxLevel:I

.field private mRecentLightSamples:I

.field private mRecentSensorHubSamples:I

.field private final mResetAmbientLuxAfterWarmUpConfig:Z

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSECAverageLux:F

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessAdjustment:F

.field private final mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private mScreenBrightnessModeSetting:I

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private final mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

.field private final mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

.field private final mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

.field private mTemporaryScreenBrightnessSettingOverride:I

.field private mTiltAngle:F

.field private final mTiltListener:Landroid/hardware/SensorEventListener;

.field private mTiltSensor:Landroid/hardware/Sensor;

.field private mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private final mTwilight:Lcom/android/server/twilight/TwilightManager;

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mUseAutoBrightnessController:Z

.field private mUseHbmAtManualMax:Z

.field private mUseManualAutoBrightness:Z

.field private mUseSystemPowerSaveMode:Z

.field private mUserSwitched:Z

.field private mWasTconMaxLevel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    .line 334
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->HBM_USER_ENABLE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIJJZLandroid/hardware/scontext/SContextManager;ZLcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;Landroid/content/Context;)V
    .locals 7
    .param p1, "callbacks"    # Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p4, "autoBrightnessSpline"    # Landroid/util/Spline;
    .param p5, "lightSensorWarmUpTime"    # I
    .param p6, "brightnessMin"    # I
    .param p7, "brightnessMax"    # I
    .param p8, "dozeScaleFactor"    # F
    .param p9, "lightSensorRate"    # I
    .param p10, "brighteningLightDebounceConfig"    # J
    .param p12, "darkeningLightDebounceConfig"    # J
    .param p14, "resetAmbientLuxAfterWarmUpConfig"    # Z
    .param p15, "sContextManager"    # Landroid/hardware/scontext/SContextManager;
    .param p16, "isSupportedSensorHubAutoBrightness"    # Z
    .param p17, "dynamicAutoBrightnessConfig"    # Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    .param p18, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const-string v3, "[DAB] "

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->TAG_DAB:Ljava/lang/String;

    .line 238
    const-string v3, "[sensor] "

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->TAG_SENSOR:Ljava/lang/String;

    .line 242
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    .line 243
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseAutoBrightnessController:Z

    .line 244
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseSystemPowerSaveMode:Z

    .line 247
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTemporaryScreenBrightnessSettingOverride:I

    .line 248
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastTemporaryScreenBrightnessSettingOverride:I

    .line 252
    const-string v3, "/sys/class/backlight/panel/auto_brightness"

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

    .line 253
    const-string v3, "/sys/class/tcon/tcon/auto_br"

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->TCON_BRIGHTNESS_MODE_PATH:Ljava/lang/String;

    .line 254
    const-string v3, "/sys/class/tcon/tcon/lux"

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->TCON_LUX_PATH:Ljava/lang/String;

    .line 255
    const-string v3, "/sys/class/lcd/panel/lux"

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->COMMON_LUX_PATH:Ljava/lang/String;

    .line 256
    const-string v3, "/sys/class/mdnie/mdnie/auto_brightness"

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->MDNIE_AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

    .line 257
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistAutoBrightnessLevelPath:Z

    .line 258
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistTconBrightnessModePath:Z

    .line 259
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistTconLuxPath:Z

    .line 260
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistCommonLuxPath:Z

    .line 261
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistMdnieAutoBrightnessLevelPath:Z

    .line 262
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconLuxLevel:I

    .line 263
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconBrightnessMode:Z

    .line 264
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLux:I

    .line 265
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevAutoBrightnessLevel:I

    .line 269
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHasRetailModeApp:Z

    .line 275
    const-wide/16 v4, 0x190

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->LIGHT_SENSOR_UPDATE_TIMEOUT_MILLIS:J

    .line 279
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLatestAnimationTarget:I

    .line 280
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingScreenAutoBrightness:Z

    .line 290
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMDisableLevel:I

    .line 293
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseHbmAtManualMax:Z

    .line 297
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    .line 313
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 316
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 319
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 725
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v3, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

    .line 750
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$2;

    invoke-direct {v3, p0}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

    .line 767
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$3;

    invoke-direct {v3, p0}, Lcom/android/server/display/AutomaticBrightnessController$3;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListenerUpdateTimeoutRunnable:Ljava/lang/Runnable;

    .line 1053
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLowHysteresis:F

    .line 1054
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighHysteresis:F

    .line 1112
    const/high16 v3, 0x437f0000    # 255.0f

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastRawBrightnessValue:F

    .line 1113
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    .line 1114
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWasTconMaxLevel:Z

    .line 1275
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTiltAngle:F

    .line 1276
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    .line 1278
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$4;

    invoke-direct {v3, p0}, Lcom/android/server/display/AutomaticBrightnessController$4;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTiltListener:Landroid/hardware/SensorEventListener;

    .line 1465
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$5;

    invoke-direct {v3, p0}, Lcom/android/server/display/AutomaticBrightnessController$5;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 1502
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$6;

    invoke-direct {v3, p0}, Lcom/android/server/display/AutomaticBrightnessController$6;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

    .line 1535
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$7;

    invoke-direct {v3, p0}, Lcom/android/server/display/AutomaticBrightnessController$7;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 1791
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;

    .line 1807
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->OFFSET_FIX:I

    .line 1808
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->OFFSET_USER:I

    .line 1809
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->OFFSET_SUB:I

    .line 1810
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z

    .line 1811
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingScreenBrightnessSetting:I

    .line 357
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    .line 360
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 361
    const-class v3, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/twilight/TwilightManager;

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    .line 362
    iput-object p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 363
    iput-object p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 364
    iput p6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    .line 365
    iput p7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    .line 366
    iput p5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    .line 367
    iput p8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    .line 368
    move/from16 v0, p9

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    .line 369
    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 370
    const-wide/16 v4, 0xbb8

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    .line 371
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    .line 373
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-direct {v3, p0, p2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 374
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(J)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 377
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 379
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTiltSensor:Landroid/hardware/Sensor;

    .line 383
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v3, :cond_0

    .line 384
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-interface {v3, v4, v5}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 387
    :cond_0
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 388
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    .line 389
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    .line 390
    new-instance v3, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    .line 392
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "RegisterInSeperateThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperateThread:Landroid/os/HandlerThread;

    .line 393
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperateThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 394
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperateThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    .line 398
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 399
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSettingsObserver:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    .line 404
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->readHbmLevelLimitFromFile()V

    .line 406
    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSettingsObserver:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 420
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessModeSetting:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessModeSetting:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTiltListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTiltSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTiltAngle:F

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTiltAngle:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/AutomaticBrightnessController;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLuxSEC(J)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->collectBrightnessAdjustmentSample()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->printLastLightSensorEvent()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingScreenBrightnessSetting:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    return p1
.end method

.method static synthetic access$2812(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLuxAndCandelaFromSensorHub()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/server/display/AutomaticBrightnessController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastLightSensorEventTime:J

    return-wide p1
.end method

.method static synthetic access$3102(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastLightSensorValue:F

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientCandela:F

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientCandela:F

    return p1
.end method

.method static synthetic access$3402(Lcom/android/server/display/AutomaticBrightnessController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedSensorHubLuxTime:J

    return-wide p1
.end method

.method static synthetic access$3500(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    return-void
.end method

.method static synthetic access$3602(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUserSwitched:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updatePersonalScreenAutoBrightnessTableLocked(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/display/AutomaticBrightnessController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/scontext/SContextListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/scontext/SContextManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    return-object v0
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 840
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 841
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    const-wide/16 v2, 0x2710

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 842
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 845
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 846
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    .line 847
    return-void
.end method

.method private applyLightSensorMeasurementSEC(JF)V
    .locals 9
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 795
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 796
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    if-ne v4, v7, :cond_0

    .line 797
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    .line 834
    :goto_0
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 835
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    .line 836
    return-void

    .line 801
    :cond_0
    const/4 v1, 0x1

    .line 810
    .local v1, "useLockZone":Z
    if-eqz v1, :cond_3

    .line 811
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    .line 812
    .local v0, "prevLockZone":Z
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTiltAngle:F

    const/high16 v5, 0x428c0000    # 70.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 813
    iput-boolean v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    .line 817
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLowHysteresis:F

    cmpg-float v4, p3, v4

    if-gez v4, :cond_1

    .line 818
    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    .line 819
    iget p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLowHysteresis:F

    .line 821
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v4, p3, v4

    if-gez v4, :cond_2

    .line 822
    iget p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 824
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    if-eq v0, v4, :cond_3

    .line 825
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyLightSensorMeasurementSEC : mIsLockZone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    .end local v0    # "prevLockZone":Z
    :cond_3
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    sub-long v2, p1, v4

    .line 830
    .local v2, "timeDelta":J
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    add-float/2addr v4, p3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    goto :goto_0

    .line 815
    .end local v2    # "timeDelta":J
    .restart local v0    # "prevLockZone":Z
    :cond_4
    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLockZone:Z

    goto :goto_1
.end method

.method private calculateAmbientLux(J)F
    .locals 13
    .param p1, "now"    # J

    .prologue
    .line 864
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 865
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 866
    const-string v10, "AutomaticBrightnessController"

    const-string v11, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v10, v11}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/high16 v10, -0x40800000    # -1.0f

    .line 889
    :goto_0
    return v10

    .line 869
    :cond_0
    const/4 v5, 0x0

    .line 870
    .local v5, "sum":F
    const/4 v8, 0x0

    .line 871
    .local v8, "totalWeight":F
    const-wide/16 v2, 0x64

    .line 872
    .local v2, "endTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 873
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v10

    sub-long v6, v10, p1

    .line 874
    .local v6, "startTime":J
    invoke-static {v6, v7, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v9

    .line 875
    .local v9, "weight":F
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    .line 881
    .local v4, "lux":F
    add-float/2addr v8, v9

    .line 882
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v5, v10

    .line 883
    move-wide v2, v6

    .line 872
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 889
    .end local v4    # "lux":F
    .end local v6    # "startTime":J
    .end local v9    # "weight":F
    :cond_1
    div-float v10, v5, v8

    goto :goto_0
.end method

.method private static calculateWeight(JJ)F
    .locals 2
    .param p0, "startDelta"    # J
    .param p2, "endDelta"    # J

    .prologue
    .line 893
    invoke-static {p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v0

    invoke-static {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private cancelBrightnessAdjustmentSample()V
    .locals 2

    .prologue
    .line 1373
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_0

    .line 1374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1375
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1377
    :cond_0
    return-void
.end method

.method private changeModeInSensorHubAutoBrightness(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 672
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>(I)V

    .line 673
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

    const/16 v3, 0x27

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    .line 674
    return-void
.end method

.method private checkMarkerUserDetach(I)V
    .locals 3
    .param p1, "temporaryScreenBrightnessSettingOverride"    # I

    .prologue
    const/4 v2, -0x1

    .line 660
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;

    monitor-enter v1

    .line 661
    :try_start_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTemporaryScreenBrightnessSettingOverride:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastTemporaryScreenBrightnessSettingOverride:I

    .line 662
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTemporaryScreenBrightnessSettingOverride:I

    .line 663
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastTemporaryScreenBrightnessSettingOverride:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTemporaryScreenBrightnessSettingOverride:I

    if-ne v0, v2, :cond_0

    .line 664
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->updatePersonalScreenAutoBrightnessTableLocked(Z)V

    .line 666
    :cond_0
    monitor-exit v1

    .line 667
    return-void

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1353
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private collectBrightnessAdjustmentSample()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1380
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_0

    .line 1381
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1382
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-ltz v0, :cond_0

    .line 1392
    const v0, 0x88b8

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldGamma:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1403
    :cond_0
    return-void
.end method

.method private getAmbientLuxAndCandelaFromSensorHub()V
    .locals 5

    .prologue
    .line 1858
    const/4 v1, 0x2

    .line 1859
    .local v1, "mode":I
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {v0, v1}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>(I)V

    .line 1860
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

    const/16 v4, 0x27

    invoke-virtual {v2, v3, v4, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    .line 1862
    const-string v2, "AutomaticBrightnessController"

    const-string v3, "[PAB] request AmbientLuxAndCandelaFromSensorHub"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    return-void
.end method

.method private static getTwilightGamma(JJJ)F
    .locals 10
    .param p0, "now"    # J
    .param p2, "lastSunset"    # J
    .param p4, "nextSunrise"    # J

    .prologue
    const-wide/32 v8, 0x6ddd00

    const-wide/16 v6, 0x0

    const v4, 0x4adbba00    # 7200000.0f

    const/high16 v0, 0x3fc00000    # 1.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1406
    cmp-long v2, p2, v6

    if-ltz v2, :cond_0

    cmp-long v2, p4, v6

    if-ltz v2, :cond_0

    cmp-long v2, p0, p2

    if-ltz v2, :cond_0

    cmp-long v2, p0, p4

    if-lez v2, :cond_2

    :cond_0
    move v0, v1

    .line 1421
    :cond_1
    :goto_0
    return v0

    .line 1411
    :cond_2
    add-long v2, p2, v8

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    .line 1412
    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_0

    .line 1416
    :cond_3
    sub-long v2, p4, v8

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 1417
    sub-long v2, p4, p0

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private handleLightSensorEvent(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 786
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurementSEC(JF)V

    .line 787
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLuxSEC(J)V

    .line 789
    return-void
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 903
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 904
    .local v0, "N":I
    move-wide v2, p1

    .line 905
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 906
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 911
    :cond_0
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    add-long/2addr v4, v2

    return-wide v4

    .line 909
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 905
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 915
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 916
    .local v0, "N":I
    move-wide v2, p1

    .line 917
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 918
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 923
    :cond_0
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    add-long/2addr v4, v2

    return-wide v4

    .line 921
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 917
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private notifySurfaceFlinger()V
    .locals 5

    .prologue
    .line 1771
    :try_start_0
    const-string v2, "SurfaceFlinger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1772
    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 1773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1774
    .local v0, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1775
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1776
    const/16 v2, 0x3ee

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "flinger":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 1779
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private prepareBrightnessAdjustmentSample()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 1358
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-nez v0, :cond_1

    .line 1359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1360
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    .line 1361
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    :goto_0
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 1362
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    .line 1363
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldGamma:F

    .line 1368
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1370
    return-void

    .line 1361
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 1365
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    goto :goto_1
.end method

.method private printLastLightSensorEvent()V
    .locals 4

    .prologue
    .line 1458
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1459
    const-string v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DAB] printLastLightSensorEvent : lastLightSensorEventTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastLightSensorEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastLightSensorValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastLightSensorValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :cond_0
    return-void
.end method

.method private readHbmLevelLimitFromFile()V
    .locals 4

    .prologue
    .line 478
    const-string v1, "/sys/class/backlight/panel/auto_brightness_level"

    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "hbmLevelLimit":Ljava/lang/String;
    const-string v1, "12"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->SPECIFIC_HBM_FEATURE:Z

    .line 481
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMDisableLevel:I

    .line 482
    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@ SPECIFIC_HBM_FEATURE = true, hbmLevelLimit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_0
    return-void

    .line 484
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->SPECIFIC_HBM_FEATURE:Z

    .line 485
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMDisableLevel:I

    .line 486
    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@ SPECIFIC_HBM_FEATURE = false, hbmLevelLimit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendLuxLevel(F)V
    .locals 10
    .param p1, "lux"    # F

    .prologue
    const/high16 v9, 0x447a0000    # 1000.0f

    const/high16 v8, 0x41700000    # 15.0f

    const/high16 v7, 0x43160000    # 150.0f

    const/4 v6, 0x6

    const v5, 0x471c4000    # 40000.0f

    .line 1681
    const/4 v2, 0x0

    .line 1682
    .local v2, "tconLuxLevel":I
    cmpg-float v3, p1, v7

    if-gez v3, :cond_b

    const/4 v2, 0x0

    .line 1685
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistTconLuxPath:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconLuxLevel:I

    if-eq v3, v2, :cond_0

    .line 1686
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconLuxLevel:I

    .line 1687
    const-string v3, "/sys/class/tcon/tcon/lux"

    invoke-static {v3, v2}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1691
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistTconBrightnessModePath:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconBrightnessMode:Z

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessModeAuto:Z

    if-eq v3, v4, :cond_1

    .line 1692
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessModeAuto:Z

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevTconBrightnessMode:Z

    .line 1693
    const-string v4, "/sys/class/tcon/tcon/auto_br"

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessModeAuto:Z

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    :goto_1
    invoke-static {v4, v3}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1699
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessModeAuto:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseHbmAtManualMax:Z

    if-eqz v3, :cond_e

    :cond_2
    float-to-int v0, p1

    .line 1700
    .local v0, "ambientLux":I
    :goto_2
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistCommonLuxPath:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLux:I

    if-eq v3, v0, :cond_3

    .line 1701
    const-string v3, "/sys/class/lcd/panel/lux"

    invoke-static {v3, v0}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1702
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLux:I

    .line 1707
    :cond_3
    const/4 v1, 0x0

    .line 1708
    .local v1, "autoBrightnessLevel":I
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessModeAuto:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseHbmAtManualMax:Z

    if-eqz v3, :cond_1f

    .line 1709
    :cond_4
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->SPECIFIC_HBM_FEATURE:Z

    if-eqz v3, :cond_19

    .line 1710
    cmpg-float v3, p1, v8

    if-gez v3, :cond_f

    const/4 v1, 0x1

    .line 1735
    :cond_5
    :goto_3
    if-ge v1, v6, :cond_6

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseHbmAtManualMax:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessModeAuto:Z

    if-nez v3, :cond_6

    .line 1736
    const/4 v1, 0x0

    .line 1740
    :cond_6
    if-lt v1, v6, :cond_7

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseSystemPowerSaveMode:Z

    if-eqz v3, :cond_7

    .line 1741
    add-int/lit8 v3, v1, -0x2

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1745
    :cond_7
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->HBM_USER_ENABLE:Z

    if-nez v3, :cond_8

    if-lt v1, v6, :cond_8

    .line 1746
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHBMDisableLevel:I

    .line 1747
    const-string v3, "AutomaticBrightnessController"

    const-string v4, "[DAB] HBM is disabled from user"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    :cond_8
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevAutoBrightnessLevel:I

    if-eq v3, v1, :cond_a

    .line 1751
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevAutoBrightnessLevel:I

    .line 1752
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mExistAutoBrightnessLevelPath:Z

    if-eqz v3, :cond_9

    .line 1753
    const-string v3, "/sys/class/backlight/panel/auto_brightness"

    invoke-static {v3, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1757
    :cond_9
    const-string v3, "/sys/class/mdnie/mdnie/auto_brightness"

    invoke-static {v3, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1765
    :cond_a
    return-void

    .line 1683
    .end local v0    # "ambientLux":I
    .end local v1    # "autoBrightnessLevel":I
    :cond_b
    const v3, 0x469c4000    # 20000.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_c

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1684
    :cond_c
    const/4 v2, 0x2

    goto/16 :goto_0

    .line 1693
    :cond_d
    const/4 v3, 0x0

    goto :goto_1

    .line 1699
    :cond_e
    const/4 v0, -0x1

    goto :goto_2

    .line 1711
    .restart local v0    # "ambientLux":I
    .restart local v1    # "autoBrightnessLevel":I
    :cond_f
    cmpg-float v3, p1, v7

    if-gez v3, :cond_10

    const/4 v1, 0x2

    goto :goto_3

    .line 1712
    :cond_10
    cmpg-float v3, p1, v9

    if-gez v3, :cond_11

    const/4 v1, 0x3

    goto :goto_3

    .line 1713
    :cond_11
    const v3, 0x453b8000    # 3000.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_12

    const/4 v1, 0x4

    goto :goto_3

    .line 1714
    :cond_12
    const/high16 v3, 0x457a0000    # 4000.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_13

    const/4 v1, 0x6

    goto :goto_3

    .line 1715
    :cond_13
    const v3, 0x459c4000    # 5000.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_14

    const/4 v1, 0x7

    goto :goto_3

    .line 1716
    :cond_14
    const v3, 0x461c4000    # 10000.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_15

    const/16 v1, 0x8

    goto :goto_3

    .line 1717
    :cond_15
    const v3, 0x469c4000    # 20000.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_16

    const/16 v1, 0x9

    goto/16 :goto_3

    .line 1718
    :cond_16
    const v3, 0x46ea6000    # 30000.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_17

    const/16 v1, 0xa

    goto/16 :goto_3

    .line 1719
    :cond_17
    cmpg-float v3, p1, v5

    if-gez v3, :cond_18

    const/16 v1, 0xb

    goto/16 :goto_3

    .line 1720
    :cond_18
    cmpl-float v3, p1, v5

    if-ltz v3, :cond_5

    const/16 v1, 0xc

    goto/16 :goto_3

    .line 1722
    :cond_19
    cmpg-float v3, p1, v8

    if-gez v3, :cond_1a

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 1723
    :cond_1a
    cmpg-float v3, p1, v7

    if-gez v3, :cond_1b

    const/4 v1, 0x2

    goto/16 :goto_3

    .line 1724
    :cond_1b
    cmpg-float v3, p1, v9

    if-gez v3, :cond_1c

    const/4 v1, 0x3

    goto/16 :goto_3

    .line 1725
    :cond_1c
    const v3, 0x459c4000    # 5000.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1d

    const/4 v1, 0x4

    goto/16 :goto_3

    .line 1726
    :cond_1d
    cmpg-float v3, p1, v5

    if-gez v3, :cond_1e

    const/4 v1, 0x5

    goto/16 :goto_3

    .line 1727
    :cond_1e
    const/4 v1, 0x6

    goto/16 :goto_3

    .line 1731
    :cond_1f
    cmpl-float v3, p1, v5

    if-nez v3, :cond_5

    const/4 v1, 0x6

    goto/16 :goto_3
.end method

.method private setAmbientLux(F)V
    .locals 2
    .param p1, "lux"    # F

    .prologue
    .line 858
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 859
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    .line 860
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    .line 861
    return-void
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, "sensorSwitched":Z
    if-eqz p1, :cond_1

    .line 680
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez v1, :cond_0

    .line 681
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 689
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 690
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 691
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListenerUpdateTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 692
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 693
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListenerUpdateTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 695
    const/4 v0, 0x1

    .line 721
    :cond_0
    :goto_0
    return v0

    .line 699
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 700
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 701
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 702
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 703
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 704
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 709
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 710
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 711
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListenerUpdateTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 712
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 713
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 714
    const/4 v0, 0x1

    .line 716
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->sendLuxLevel(F)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 701
    goto :goto_1
.end method

.method private setScreenAutoBrightnessAdjustment(F)Z
    .locals 1
    .param p1, "adjustment"    # F

    .prologue
    .line 850
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 851
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 852
    const/4 v0, 0x1

    .line 854
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAmbientLux()V
    .locals 6

    .prologue
    .line 927
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 928
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    const-wide/16 v4, 0x2710

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 929
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 930
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 15
    .param p1, "time"    # J

    .prologue
    .line 935
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v1, :cond_1

    .line 936
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v10, v1

    iget-wide v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    add-long v8, v10, v12

    .line 938
    .local v8, "timeWhenSensorWarmedUp":J
    cmp-long v1, p1, v8

    if-gez v1, :cond_0

    .line 944
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v10, 0x1

    invoke-virtual {v1, v10, v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 990
    .end local v8    # "timeWhenSensorWarmedUp":J
    :goto_0
    return-void

    .line 948
    .restart local v8    # "timeWhenSensorWarmedUp":J
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 949
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 955
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 958
    .end local v8    # "timeWhenSensorWarmedUp":J
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v2

    .line 959
    .local v2, "nextBrightenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v4

    .line 960
    .local v4, "nextDarkenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    move-result v0

    .line 962
    .local v0, "ambientLux":F
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    cmp-long v1, v2, p1

    if-lez v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_4

    cmp-long v1, v4, p1

    if-gtz v1, :cond_4

    .line 964
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 972
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 973
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v2

    .line 974
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v4

    .line 976
    :cond_4
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 983
    .local v6, "nextTransitionTime":J
    cmp-long v1, v6, p1

    if-lez v1, :cond_5

    .line 989
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v10, 0x1

    invoke-virtual {v1, v10, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 983
    :cond_5
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    int-to-long v10, v1

    add-long v6, p1, v10

    goto :goto_1
.end method

.method private updateAmbientLuxSEC(J)V
    .locals 9
    .param p1, "time"    # J

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1059
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    sub-long v2, p1, v2

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 1062
    :cond_0
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1063
    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 1064
    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    .line 1065
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    .line 1066
    iput-boolean v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z

    .line 1067
    invoke-direct {p0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V

    .line 1110
    :cond_1
    :goto_0
    return-void

    .line 1072
    :cond_2
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighHysteresis:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 1073
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    if-gtz v2, :cond_3

    .line 1074
    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    .line 1075
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    .line 1077
    :cond_3
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    add-long v0, v2, v4

    .line 1078
    .local v0, "debounceTime":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    .line 1079
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1080
    invoke-direct {p0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V

    goto :goto_0

    .line 1082
    :cond_4
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v6, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 1088
    .end local v0    # "debounceTime":J
    :cond_5
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLowHysteresis:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_8

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v3, 0x40800000    # 4.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 1089
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    if-ltz v2, :cond_6

    .line 1090
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    .line 1091
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    .line 1093
    :cond_6
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    add-long v0, v2, v4

    .line 1094
    .restart local v0    # "debounceTime":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_7

    .line 1097
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1098
    invoke-direct {p0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V

    goto :goto_0

    .line 1100
    :cond_7
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v6, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 1106
    .end local v0    # "debounceTime":J
    :cond_8
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    if-eqz v2, :cond_1

    .line 1107
    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    .line 1108
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    goto :goto_0
.end method

.method private updateAutoBrightness(Z)V
    .locals 14
    .param p1, "sendUpdate"    # Z

    .prologue
    .line 993
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v2, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v13

    .line 998
    .local v13, "value":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1000
    .local v8, "gamma":F
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 1002
    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    neg-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    .line 1004
    .local v6, "adjGamma":F
    mul-float/2addr v8, v6

    .line 1010
    .end local v6    # "adjGamma":F
    :cond_2
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v2, :cond_3

    .line 1011
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v2}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v12

    .line 1012
    .local v12, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1013
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1014
    .local v0, "now":J
    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getYesterdaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getTodaySunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/AutomaticBrightnessController;->getTwilightGamma(JJJ)F

    move-result v7

    .line 1016
    .local v7, "earlyGamma":F
    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getTodaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getTomorrowSunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/AutomaticBrightnessController;->getTwilightGamma(JJJ)F

    move-result v10

    .line 1018
    .local v10, "lateGamma":F
    mul-float v2, v7, v10

    mul-float/2addr v8, v2

    .line 1026
    .end local v0    # "now":J
    .end local v7    # "earlyGamma":F
    .end local v10    # "lateGamma":F
    .end local v12    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v8, v2

    if-eqz v2, :cond_4

    .line 1027
    move v9, v13

    .line 1028
    .local v9, "in":F
    invoke-static {v13, v8}, Landroid/util/MathUtils;->pow(FF)F

    move-result v13

    .line 1035
    .end local v9    # "in":F
    :cond_4
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v11

    .line 1037
    .local v11, "newScreenAutoBrightness":I
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-eq v2, v11, :cond_0

    .line 1044
    iput v11, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1045
    iput v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 1046
    if-eqz p1, :cond_0

    .line 1047
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v2}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    goto :goto_0
.end method

.method private updateAutoBrightnessSEC(Z)V
    .locals 5
    .param p1, "sendUpdate"    # Z

    .prologue
    .line 1129
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v3, :cond_0

    .line 1130
    const-string v3, "AutomaticBrightnessController"

    const-string v4, "[DAB] no lux value from sensor manager"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseManualAutoBrightness:Z

    .line 1166
    :goto_0
    return-void

    .line 1136
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1137
    .local v1, "gamma":F
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v2

    .line 1138
    .local v2, "value":F
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    invoke-virtual {v3, v2}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessLowHysteresis(F)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLowHysteresis:F

    .line 1139
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    invoke-virtual {v3, v2}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessHighHysteresis(F)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighHysteresis:F

    .line 1141
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 1165
    .local v0, "autoBrightnessAdj":F
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->updateFinalAutoBrightness(ZFFF)V

    goto :goto_0
.end method

.method private updateFinalAutoBrightness(ZFFF)V
    .locals 15
    .param p1, "sendUpdate"    # Z
    .param p2, "value"    # F
    .param p3, "gamma"    # F
    .param p4, "autoBrightnessAdj"    # F

    .prologue
    .line 1170
    const/4 v12, 0x0

    cmpl-float v12, p4, v12

    if-eqz v12, :cond_a

    .line 1172
    :goto_0
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, -0x40800000    # -1.0f

    move/from16 v0, p4

    neg-float v14, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/high16 v13, -0x3f600000    # -5.0f

    mul-float v2, v12, v13

    .line 1173
    .local v2, "adjLevel":F
    const/4 v3, 0x0

    .line 1175
    .local v3, "autoBrightnessLevelStepRatio":F
    iget-boolean v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    if-eqz v12, :cond_b

    .line 1176
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v3, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioForEbook:F

    .line 1187
    :goto_1
    const/4 v12, 0x0

    cmpl-float v12, v2, v12

    if-lez v12, :cond_e

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v3

    move v13, v12

    :goto_2
    const/4 v12, 0x0

    cmpl-float v12, v2, v12

    if-lez v12, :cond_f

    move v12, v2

    :goto_3
    invoke-static {v13, v12}, Landroid/util/FloatMath;->pow(FF)F

    move-result v1

    .line 1188
    .local v1, "adjGamma":F
    mul-float p3, p3, v1

    .line 1194
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v12, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mValueOfVirtualZeroCandela:I

    int-to-float v12, v12

    sub-float v12, p2, v12

    mul-float v12, v12, p3

    iget-object v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v13, v13, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mValueOfVirtualZeroCandela:I

    int-to-float v13, v13

    add-float v10, v12, v13

    .line 1195
    .local v10, "valueFromGamma":F
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v7, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumBrightnessStepValue:I

    .line 1196
    .local v7, "minBrightnessStep":I
    float-to-int v12, v2

    mul-int/2addr v12, v7

    move/from16 v0, p2

    float-to-int v13, v0

    add-int v11, v12, v13

    .line 1197
    .local v11, "valueFromOffset":I
    const/4 v12, 0x0

    cmpl-float v12, p4, v12

    if-lez v12, :cond_0

    int-to-float v12, v11

    cmpg-float v12, v10, v12

    if-ltz v12, :cond_1

    :cond_0
    const/4 v12, 0x0

    cmpg-float v12, p4, v12

    if-gez v12, :cond_10

    int-to-float v12, v11

    cmpl-float v12, v10, v12

    if-lez v12, :cond_10

    .line 1199
    :cond_1
    int-to-float v0, v11

    move/from16 p2, v0

    .line 1208
    .end local v1    # "adjGamma":F
    .end local v2    # "adjLevel":F
    .end local v3    # "autoBrightnessLevelStepRatio":F
    .end local v7    # "minBrightnessStep":I
    .end local v10    # "valueFromGamma":F
    .end local v11    # "valueFromOffset":I
    :cond_2
    :goto_4
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    move/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getFinalDynamicAutoBrightnessValue(FF)I

    move-result v12

    int-to-float v0, v12

    move/from16 p2, v0

    .line 1211
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v9

    .line 1213
    .local v9, "newScreenAutoBrightness":I
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastRawBrightnessValue:F

    cmpl-float v12, p2, v12

    if-nez v12, :cond_3

    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    const/4 v13, 0x1

    if-gt v12, v13, :cond_4

    .line 1214
    :cond_3
    const-string v13, "AutomaticBrightnessController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[DAB] updateAutoBrightnessSEC : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ")    "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLowHysteresis:F

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " < "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " < "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHighHysteresis:F

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " ("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-boolean v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    if-eqz v12, :cond_11

    const-string v12, " (ebook)"

    :goto_5
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_4
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v13, 0x471c4000    # 40000.0f

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_12

    const/4 v8, 0x1

    .line 1220
    .local v8, "needHBM":Z
    :goto_6
    const/4 v4, 0x0

    .line 1223
    .local v4, "isHBMChanged":Z
    sget-boolean v12, Lcom/android/server/display/AutomaticBrightnessController;->SPECIFIC_HBM_FEATURE:Z

    if-eqz v12, :cond_5

    .line 1224
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v13, 0x453b8000    # 3000.0f

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_13

    const/4 v8, 0x1

    .line 1227
    :cond_5
    :goto_7
    iget-boolean v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    if-eq v12, v8, :cond_6

    .line 1228
    const-string v13, "AutomaticBrightnessController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[DAB] HBM is "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz v8, :cond_14

    const-string v12, "Enabled"

    :goto_8
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ". mScreenAutoBrightness = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iput-boolean v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    .line 1232
    const/4 v4, 0x1

    .line 1234
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "high_brightness_mode_pms_enter"

    if-eqz v8, :cond_15

    const/4 v12, 0x1

    :goto_9
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1238
    :cond_6
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v13, 0x469c4000    # 20000.0f

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_16

    const/4 v6, 0x1

    .line 1239
    .local v6, "isTconMaxLevel":Z
    :goto_a
    const/4 v5, 0x0

    .line 1240
    .local v5, "isTconLevelChanged":Z
    iget-boolean v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWasTconMaxLevel:Z

    if-eq v12, v6, :cond_7

    .line 1241
    if-eqz v6, :cond_17

    .line 1242
    const-string v12, "AutomaticBrightnessController"

    const-string v13, "[DAB] The Ambient Lux has gone over 20000."

    invoke-static {v12, v13}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :goto_b
    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWasTconMaxLevel:Z

    .line 1248
    const/4 v5, 0x1

    .line 1251
    :cond_7
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-ne v12, v9, :cond_8

    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    iget v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLatestAnimationTarget:I

    if-eq v12, v13, :cond_18

    .line 1253
    :cond_8
    iput v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1254
    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 1255
    if-eqz p1, :cond_9

    .line 1256
    const-string v12, "AutomaticBrightnessController"

    const-string/jumbo v13, "mCallbacks.updateBrightness()"

    invoke-static {v12, v13}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v12}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 1258
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-direct {p0, v12}, Lcom/android/server/display/AutomaticBrightnessController;->sendLuxLevel(F)V

    .line 1270
    :cond_9
    :goto_c
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->lastRawBrightnessValue:F

    .line 1271
    return-void

    .line 1170
    .end local v4    # "isHBMChanged":Z
    .end local v5    # "isTconLevelChanged":Z
    .end local v6    # "isTconMaxLevel":Z
    .end local v8    # "needHBM":Z
    .end local v9    # "newScreenAutoBrightness":I
    :cond_a
    const/4 v12, 0x0

    cmpl-float v12, p4, v12

    if-eqz v12, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->isManualAutoBrightnessValid()Z

    move-result v12

    if-eqz v12, :cond_2

    goto/16 :goto_0

    .line 1179
    .restart local v2    # "adjLevel":F
    .restart local v3    # "autoBrightnessLevelStepRatio":F
    :cond_b
    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->ZERO_PROJECT:Z

    if-nez v12, :cond_c

    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->NOBLE_PROJECT:Z

    if-nez v12, :cond_c

    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->ZERO2_PROJECT:Z

    if-nez v12, :cond_c

    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->AX_PROJECT:Z

    if-eqz v12, :cond_d

    :cond_c
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_d

    const/4 v12, 0x0

    cmpg-float v12, v2, v12

    if-gez v12, :cond_d

    .line 1181
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v3, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioAt0Lux:F

    goto/16 :goto_1

    .line 1183
    :cond_d
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v3, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatio:F

    goto/16 :goto_1

    .line 1187
    :cond_e
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v3

    move v13, v12

    goto/16 :goto_2

    :cond_f
    neg-float v12, v2

    goto/16 :goto_3

    .line 1201
    .restart local v1    # "adjGamma":F
    .restart local v7    # "minBrightnessStep":I
    .restart local v10    # "valueFromGamma":F
    .restart local v11    # "valueFromOffset":I
    :cond_10
    move/from16 p2, v10

    goto/16 :goto_4

    .line 1214
    .end local v1    # "adjGamma":F
    .end local v2    # "adjLevel":F
    .end local v3    # "autoBrightnessLevelStepRatio":F
    .end local v7    # "minBrightnessStep":I
    .end local v10    # "valueFromGamma":F
    .end local v11    # "valueFromOffset":I
    .restart local v9    # "newScreenAutoBrightness":I
    :cond_11
    const-string v12, ""

    goto/16 :goto_5

    .line 1219
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 1224
    .restart local v4    # "isHBMChanged":Z
    .restart local v8    # "needHBM":Z
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 1228
    :cond_14
    const-string v12, "Disabled"

    goto/16 :goto_8

    .line 1234
    :cond_15
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 1238
    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 1244
    .restart local v5    # "isTconLevelChanged":Z
    .restart local v6    # "isTconMaxLevel":Z
    :cond_17
    const-string v12, "AutomaticBrightnessController"

    const-string v13, "[DAB] The Ambient Lux has dropped below 20000."

    invoke-static {v12, v13}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1263
    :cond_18
    if-eqz p1, :cond_9

    if-nez v4, :cond_19

    if-eqz v5, :cond_9

    .line 1264
    :cond_19
    iget-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v12}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 1265
    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-direct {p0, v12}, Lcom/android/server/display/AutomaticBrightnessController;->sendLuxLevel(F)V

    goto :goto_c
.end method

.method private updatePersonalScreenAutoBrightnessTableLocked(Z)V
    .locals 2
    .param p1, "needUpdate"    # Z

    .prologue
    .line 1815
    const-string v0, "AutomaticBrightnessController"

    const-string v1, "[PAB] PowerManagerUtil.USE_PERSONAL_AUTO_BRIGHTNESS is false."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    return-void
.end method

.method private static weightIntegral(J)F
    .locals 4
    .param p0, "x"    # J

    .prologue
    .line 899
    long-to-float v0, p0

    long-to-float v1, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const v2, 0x461c4000    # 10000.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public configure(ZFZZZZFZZI)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "adjustment"    # F
    .param p3, "dozing"    # Z
    .param p4, "userInitiatedChange"    # Z
    .param p5, "autoBrightnessForEbookOnly"    # Z
    .param p6, "useSystemPowerSaveMode"    # Z
    .param p7, "manualAdjustment"    # F
    .param p8, "isBrightnessModeAuto"    # Z
    .param p9, "useHbmAtManualMax"    # Z
    .param p10, "temporaryScreenBrightnessSettingOverride"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 563
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    .line 564
    const-string v1, "AutomaticBrightnessController"

    const-string v2, "[DAB] mLightSensor is null."

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    iput-boolean p6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseSystemPowerSaveMode:Z

    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    if-eq v1, p5, :cond_3

    .line 575
    iput-boolean p5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    .line 576
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    if-eqz v1, :cond_2

    .line 578
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->changeModeInSensorHubAutoBrightness(I)V

    .line 582
    :cond_2
    or-int/lit8 v0, v0, 0x1

    .line 585
    .end local v0    # "changed":Z
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseAutoBrightnessController:Z

    if-ne v1, p1, :cond_4

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualAdjustment:F

    cmpl-float v1, v1, p7

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessModeAuto:Z

    if-ne v1, p8, :cond_4

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseHbmAtManualMax:Z

    if-eq v1, p9, :cond_5

    .line 589
    :cond_4
    iput p7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManualAdjustment:F

    .line 590
    iput-boolean p8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessModeAuto:Z

    .line 591
    iput-boolean p9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseHbmAtManualMax:Z

    .line 592
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseAutoBrightnessController:Z

    .line 593
    or-int/lit8 v0, v0, 0x1

    .line 595
    :cond_5
    if-eqz p1, :cond_8

    if-nez p3, :cond_8

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 596
    .restart local v0    # "changed":Z
    invoke-direct {p0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenAutoBrightnessAdjustment(F)Z

    move-result v1

    or-int/2addr v0, v1

    .line 598
    if-eqz v0, :cond_6

    .line 599
    invoke-direct {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V

    .line 601
    :cond_6
    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    .line 602
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->prepareBrightnessAdjustmentSample()V

    goto :goto_0

    :cond_7
    move v1, v3

    .line 578
    goto :goto_1

    .end local v0    # "changed":Z
    :cond_8
    move v2, v3

    .line 595
    goto :goto_2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 608
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 609
    const-string v0, "Automatic Brightness Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mResetAmbientLuxAfterWarmUpConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 619
    const-string v0, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTwilight.getCurrentState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 638
    const-string v0, "Automatic Brightness in Sensorhub:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsSupportedSensorHubAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientCandela="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientCandela:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedSensorHubLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedSensorHubLuxTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentSensorHubSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentSensorHubSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  HBM_USER_ENABLE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->HBM_USER_ENABLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastHBM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SPECIFIC_HBM_FEATURE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->SPECIFIC_HBM_FEATURE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method public getAmbientLux()F
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    return v0
.end method

.method public getAutomaticScreenBrightness()I
    .locals 2

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    if-eqz v0, :cond_0

    .line 522
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 524
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    goto :goto_0
.end method

.method public isAmbientLuxValid()Z
    .locals 1

    .prologue
    .line 1118
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    return v0
.end method

.method public isHbmEnabled()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    return v0
.end method

.method public isManualAutoBrightnessValid()Z
    .locals 1

    .prologue
    .line 1124
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseManualAutoBrightness:Z

    return v0
.end method

.method public isPabUpdatePending()Z
    .locals 2

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z

    monitor-exit v1

    return v0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 493
    .local v1, "line":Ljava/lang/String;
    const/4 v2, 0x0

    .line 496
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 499
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 504
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail to read file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    if-eqz v2, :cond_0

    .line 508
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 515
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 506
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_1
    if-eqz v3, :cond_3

    .line 508
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v3

    .line 512
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 509
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 511
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail to close file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 512
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 509
    :catch_2
    move-exception v0

    .line 511
    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail to close file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 506
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_2

    .line 508
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 512
    :cond_2
    :goto_4
    throw v5

    .line 509
    :catch_3
    move-exception v0

    .line 511
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fail to close file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 506
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 502
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_3
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public setOutdoorMode(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1676
    if-eqz p1, :cond_0

    const v0, 0x471c4000    # 40000.0f

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->sendLuxLevel(F)V

    .line 1677
    return-void

    .line 1676
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
