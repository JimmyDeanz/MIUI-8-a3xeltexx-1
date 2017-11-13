.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$5;,
        Lcom/android/server/VibratorService$SecSettingsObserver;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$VibrationInfo;,
        Lcom/android/server/VibratorService$Vibration;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static HAS_DUAL_MOTORS:I = 0x0

.field private static LEVEL_TO_MAGNITUDE:[I = null

.field private static LEVEL_TO_TOUCH_MAGNITUDE:[I = null

.field private static final SAFE_DEBUG:Z

.field private static final SET_FREQUNCY_PARAM_PATH:Ljava/lang/String; = "/dev/block/param"

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "VibratorService"

.field private static final TYPE_MAGNITUDE_FEEDBACK:I = 0x0

.field private static final TYPE_MAGNITUDE_NOTIFICATION:I = 0x2

.field private static final TYPE_MAGNITUDE_RECVCALL:I = 0x1

.field private static USE_SET_MAX_MAGNITUE:Z = false

.field private static final VIB_DEBUG:Z = true

.field private static mIsEnableIntensity:Z

.field private static mIsSupportedHaptic:Z

.field private static final mTypeURIs:[Ljava/lang/String;


# instance fields
.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private mCallMagnitude:I

.field private mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private mDefaultMagnitude:I

.field private final mH:Landroid/os/Handler;

.field private mHMTMount:Z

.field private mHasVibrator:Z

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastEndWakeLock:Ljava/lang/String;

.field private mLastStartWakeLock:Ljava/lang/String;

.field private mLowPowerMode:Z

.field private mMaxMagnitudeValue:I

.field private mMinMagnitudeValue:I

.field private mMotorType:I

.field private mNotiMagnitude:I

.field private mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPreviousVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private mTempMagnitude:I

.field private mTempToken:Landroid/os/IBinder;

.field volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTouchMagnitude:I

.field private mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationRunnable:Ljava/lang/Runnable;

.field private final mVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$Vibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mvibePatternA:[J

.field private mvibePatternB:[J

.field private mvibePatternC:[J

.field private mvibePatternD:[J

.field private mvibePatternE:[J

.field private mvibePatternF:[J

.field private mvibePatternG:[J

.field private mvibePatternH:[J

.field private mvibePatternI:[J

.field private mvibePatternJ:[J

.field private mvibePatternK:[J

.field private mvibePatternL:[J

.field private mvibePatternM:[J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    aput-object v3, v0, v1

    const-string v3, "VIB_RECVCALL_MAGNITUDE"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "VIB_NOTIFICATION_MAGNITUDE"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    .line 104
    sput v1, Lcom/android/server/VibratorService;->HAS_DUAL_MOTORS:I

    .line 105
    sput-boolean v1, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 106
    sput-boolean v1, Lcom/android/server/VibratorService;->mIsSupportedHaptic:Z

    .line 107
    const-string v0, "Max"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_ConfigVibService"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    return-void

    :cond_0
    move v0, v2

    .line 91
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, -0x2

    const/4 v10, 0x2

    const/16 v5, 0x270f

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 342
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 108
    iput-boolean v9, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    .line 124
    iput v5, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 125
    iput v5, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    .line 126
    iput v5, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    .line 127
    iput v5, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 128
    iput v5, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    .line 129
    iput v5, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    .line 130
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/VibratorService;->mMotorType:I

    .line 137
    iput-boolean v9, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    .line 147
    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5}, Landroid/os/WorkSource;-><init>()V

    iput-object v5, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 148
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 161
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 165
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 768
    new-instance v5, Lcom/android/server/VibratorService$3;

    invoke-direct {v5, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v5, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    .line 1123
    new-instance v5, Lcom/android/server/VibratorService$4;

    invoke-direct {v5, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v5, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1387
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 345
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 347
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 348
    const-string/jumbo v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 350
    .local v3, "pm":Landroid/os/PowerManager;
    const-string v5, "VibratorService"

    invoke-virtual {v3, v8, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 351
    iget-object v5, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 353
    const-string v5, "appops"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 354
    const-string v5, "batterystats"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 357
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e009a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    .line 360
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    .line 361
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 363
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 364
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 380
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070070

    invoke-static {v5, v6}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->mvibePatternA:[J

    .line 382
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070071

    invoke-static {v5, v6}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->mvibePatternB:[J

    .line 384
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070072

    invoke-static {v5, v6}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->mvibePatternC:[J

    .line 386
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070073

    invoke-static {v5, v6}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->mvibePatternD:[J

    .line 388
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070074

    invoke-static {v5, v6}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->mvibePatternE:[J

    .line 390
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070075

    invoke-static {v5, v6}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->mvibePatternF:[J

    .line 392
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070076

    invoke-static {v5, v6}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->mvibePatternG:[J

    .line 394
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070077

    invoke-static {v5, v6}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->mvibePatternH:[J

    .line 396
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070078

    invoke-static {v5, v6}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->mvibePatternI:[J

    .line 398
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070079

    invoke-static {v5, v6}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->mvibePatternJ:[J

    .line 400
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107007a

    invoke-static {v5, v6}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->mvibePatternK:[J

    .line 402
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107007b

    invoke-static {v5, v6}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->mvibePatternL:[J

    .line 404
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107007c

    invoke-static {v5, v6}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->mvibePatternM:[J

    .line 407
    invoke-static {}, Lcom/android/server/VibratorService;->getVibratorMotorType()I

    move-result v5

    iput v5, p0, Lcom/android/server/VibratorService;->mMotorType:I

    .line 408
    sget-boolean v5, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mMType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/VibratorService;->mMotorType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    iget v5, p0, Lcom/android/server/VibratorService;->mMotorType:I

    packed-switch v5, :pswitch_data_0

    .line 425
    sput-boolean v9, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 426
    sput-boolean v9, Lcom/android/server/VibratorService;->mIsSupportedHaptic:Z

    .line 430
    :goto_0
    sget-boolean v5, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v5, :cond_2

    .line 431
    sget-object v5, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v5, v5

    add-int/lit8 v2, v5, -0x1

    .line 432
    .local v2, "magnitudeMaxLevel":I
    sget-object v5, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v5, v5

    add-int/lit8 v4, v5, -0x1

    .line 433
    .local v4, "touchMagnitudeMaxLevel":I
    if-lt v2, v10, :cond_1

    if-ge v4, v10, :cond_3

    .line 434
    :cond_1
    const-string v5, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "magnitudeMaxLevel : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", touchMagnitudeMaxLevel : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v2    # "magnitudeMaxLevel":I
    .end local v4    # "touchMagnitudeMaxLevel":I
    :cond_2
    :goto_1
    return-void

    .line 413
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107007d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    sput-object v5, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    .line 414
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107007e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    sput-object v5, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 415
    sput-boolean v8, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 416
    sput-boolean v8, Lcom/android/server/VibratorService;->mIsSupportedHaptic:Z

    goto :goto_0

    .line 419
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107007f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    sput-object v5, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    .line 420
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107007f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    sput-object v5, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 421
    sput-boolean v8, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    .line 422
    sput-boolean v9, Lcom/android/server/VibratorService;->mIsSupportedHaptic:Z

    goto :goto_0

    .line 438
    .restart local v2    # "magnitudeMaxLevel":I
    .restart local v4    # "touchMagnitudeMaxLevel":I
    :cond_3
    sget-object v5, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v5, v5, v4

    iput v5, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 439
    sget-object v5, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v5, v5, v2

    iput v5, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    .line 440
    sget-object v5, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v5, v5, v2

    iput v5, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    .line 441
    sget-object v5, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v5, v5, v2

    iput v5, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 442
    sget-object v5, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v5, v5, v2

    iput v5, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    .line 443
    sget-object v5, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v5, v5, v8

    iput v5, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    .line 445
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    .line 446
    new-instance v5, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v5, p0, v9}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v5, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 447
    new-instance v5, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v5, p0, v8}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v5, p0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 448
    new-instance v5, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v5, p0, v10}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v5, p0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 450
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-static {v5, v6, v4, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 451
    .local v1, "magnitudeLevel":I
    if-le v1, v4, :cond_5

    .end local v1    # "magnitudeLevel":I
    :goto_2
    iput v1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 453
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-static {v5, v6, v2, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 454
    .restart local v1    # "magnitudeLevel":I
    if-le v1, v2, :cond_6

    .end local v1    # "magnitudeLevel":I
    :goto_3
    iput v1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    .line 456
    iget-object v5, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-static {v5, v6, v2, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 457
    .restart local v1    # "magnitudeLevel":I
    if-le v1, v2, :cond_7

    .end local v1    # "magnitudeLevel":I
    :goto_4
    iput v1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    .line 459
    sget-boolean v5, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    if-nez v5, :cond_4

    .line 460
    iget v5, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    iput v5, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    .line 463
    :cond_4
    iget v5, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    int-to-long v6, v5

    invoke-static {v6, v7}, Lcom/android/server/VibratorService;->vibratorIntensity(J)V

    goto/16 :goto_1

    .line 451
    .restart local v1    # "magnitudeLevel":I
    :cond_5
    sget-object v5, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v1, v5, v1

    goto :goto_2

    .line 454
    :cond_6
    sget-object v5, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v1, v5, v1

    goto :goto_3

    .line 457
    :cond_7
    sget-object v5, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v1, v5, v1

    goto :goto_4

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/VibratorService;->mLastStartWakeLock:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/VibratorService;JIII)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 83
    invoke-direct/range {p0 .. p5}, Lcom/android/server/VibratorService;->doVibratorOn(JIII)V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/VibratorService;->mLastEndWakeLock:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/server/VibratorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    return p1
.end method

.method static synthetic access$2400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    return v0
.end method

.method static synthetic access$2700()[I
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic access$2800()[I
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    return p1
.end method

.method static synthetic access$3200()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    return-void
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 11
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v0, v1, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/server/VibratorService$VibrationInfo;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mStartTime:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v6

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v1 .. v10}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JJ[JIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 741
    return-void
.end method

.method private doCancelVibrateLocked()V
    .locals 3

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_0

    .line 781
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    monitor-enter v1

    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    .line 783
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 784
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 787
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 788
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 789
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    .line 790
    return-void

    .line 784
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doVibratorExists()Z
    .locals 1

    .prologue
    .line 954
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .locals 5

    .prologue
    .line 1010
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1014
    :try_start_0
    iget v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_0

    .line 1016
    :try_start_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget v4, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    invoke-interface {v2, v4}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    :goto_0
    const/4 v2, -0x1

    :try_start_2
    iput v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 1021
    :cond_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1022
    .local v1, "vibratorCount":I
    if-eqz v1, :cond_1

    .line 1023
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1024
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 1023
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1027
    .end local v0    # "i":I
    :cond_1
    const-string v2, "VibratorService"

    const-string v4, "Turning vibrator off"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 1030
    :cond_2
    monitor-exit v3

    .line 1031
    return-void

    .line 1030
    .end local v1    # "vibratorCount":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1017
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private doVibratorOn(JII)V
    .locals 7
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I

    .prologue
    .line 958
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v4

    .line 963
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 964
    iput p3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 968
    .local v2, "vibratorCount":I
    if-eqz v2, :cond_0

    .line 969
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 971
    .local v0, "attributes":Landroid/media/AudioAttributes;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 972
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 971
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 975
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    .end local v1    # "i":I
    :cond_0
    const-string v3, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vibratorOn() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 978
    :cond_1
    monitor-exit v4

    .line 979
    return-void

    .line 978
    .end local v2    # "vibratorCount":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 965
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private doVibratorOn(JIII)V
    .locals 9
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I
    .param p5, "magnitude"    # I

    .prologue
    .line 983
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v4

    .line 988
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 989
    iput p3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 993
    .local v2, "vibratorCount":I
    if-eqz v2, :cond_0

    .line 994
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 996
    .local v0, "attributes":Landroid/media/AudioAttributes;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 997
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 996
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1000
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    .end local v1    # "i":I
    :cond_0
    const-string v3, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vibratorOn() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", magnitude :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    sget-boolean v3, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v3, :cond_1

    .line 1002
    int-to-long v6, p5

    invoke-static {v6, v7}, Lcom/android/server/VibratorService;->vibratorIntensity(J)V

    .line 1004
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 1006
    :cond_2
    monitor-exit v4

    .line 1007
    return-void

    .line 1006
    .end local v2    # "vibratorCount":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 990
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getCommonPattern(I)[J
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1297
    packed-switch p1, :pswitch_data_0

    .line 1358
    :pswitch_0
    const/4 v2, 0x2

    new-array v0, v2, [J

    fill-array-data v0, :array_0

    .line 1359
    .local v0, "pattern":[J
    move-object v1, v0

    .line 1362
    .end local v0    # "pattern":[J
    .local v1, "vibePattern":[J
    :goto_0
    return-object v1

    .line 1309
    .end local v1    # "vibePattern":[J
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mvibePatternA:[J

    .line 1310
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1313
    .end local v1    # "vibePattern":[J
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/VibratorService;->mvibePatternB:[J

    .line 1314
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1318
    .end local v1    # "vibePattern":[J
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/VibratorService;->mvibePatternC:[J

    .line 1319
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1321
    .end local v1    # "vibePattern":[J
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/VibratorService;->mvibePatternD:[J

    .line 1322
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1324
    .end local v1    # "vibePattern":[J
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/VibratorService;->mvibePatternE:[J

    .line 1325
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1329
    .end local v1    # "vibePattern":[J
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/VibratorService;->mvibePatternF:[J

    .line 1330
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1332
    .end local v1    # "vibePattern":[J
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/VibratorService;->mvibePatternG:[J

    .line 1333
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1336
    .end local v1    # "vibePattern":[J
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/VibratorService;->mvibePatternH:[J

    .line 1337
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1340
    .end local v1    # "vibePattern":[J
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/VibratorService;->mvibePatternI:[J

    .line 1341
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1344
    .end local v1    # "vibePattern":[J
    :pswitch_a
    iget-object v1, p0, Lcom/android/server/VibratorService;->mvibePatternJ:[J

    .line 1345
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1349
    .end local v1    # "vibePattern":[J
    :pswitch_b
    iget-object v1, p0, Lcom/android/server/VibratorService;->mvibePatternK:[J

    .line 1350
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1352
    .end local v1    # "vibePattern":[J
    :pswitch_c
    iget-object v1, p0, Lcom/android/server/VibratorService;->mvibePatternL:[J

    .line 1353
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1355
    .end local v1    # "vibePattern":[J
    :pswitch_d
    iget-object v1, p0, Lcom/android/server/VibratorService;->mvibePatternM:[J

    .line 1356
    .restart local v1    # "vibePattern":[J
    goto :goto_0

    .line 1297
    :pswitch_data_0
    .packed-switch 0xc359
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_8
        :pswitch_b
        :pswitch_2
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 1358
    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    .line 1284
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1285
    .local v0, "ar":[I
    if-nez v0, :cond_1

    .line 1286
    const/4 v2, 0x0

    .line 1292
    :cond_0
    return-object v2

    .line 1288
    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    .line 1289
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1290
    aget v3, v0, v1

    int-to-long v4, v3

    aput-wide v4, v2, v1

    .line 1289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getMinMagnitude()I
    .locals 5

    .prologue
    .line 1431
    iget v1, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    .line 1433
    .local v1, "magnitude":I
    :try_start_0
    sget-object v2, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    const/4 v3, 0x1

    aget v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1437
    :goto_0
    return v1

    .line 1434
    :catch_0
    move-exception v0

    .line 1435
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Min magnitude should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static native getVibratorMotorType()I
.end method

.method private isAll0([J)Z
    .locals 6
    .param p1, "pattern"    # [J

    .prologue
    .line 665
    array-length v0, p1

    .line 666
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 667
    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 668
    const/4 v2, 0x0

    .line 671
    :goto_1
    return v2

    .line 666
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 856
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 857
    .local v0, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 858
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    .line 859
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 860
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 861
    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 871
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :goto_0
    return-object v1

    .line 867
    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 868
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 869
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    goto :goto_0

    .line 871
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reportFinishVibrationLocked()V
    .locals 5

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_0

    .line 845
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 852
    :cond_0
    return-void

    .line 848
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startNextVibrationLocked()V
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 795
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    .line 796
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 801
    :goto_0
    return-void

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$Vibration;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 800
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_0
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 7
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/4 v2, 0x3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 817
    .local v0, "mode":I
    if-nez v0, :cond_0

    .line 818
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v0

    .line 821
    :cond_0
    if-eqz v0, :cond_3

    .line 822
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 823
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Would be an error: vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_1
    sget-boolean v1, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Infinite: vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_2
    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    .end local v0    # "mode":I
    :goto_0
    return-void

    .line 829
    :catch_0
    move-exception v1

    .line 831
    :cond_3
    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 832
    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1300(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v1

    if-eqz v1, :cond_4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1400(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    :goto_1
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/VibratorService;->doVibratorOn(JIII)V

    .line 833
    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 832
    :cond_4
    iget v6, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    goto :goto_1

    .line 837
    :cond_5
    new-instance v1, Lcom/android/server/VibratorService$VibrateThread;

    invoke-direct {v1, p0, p1}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 838
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto :goto_0
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 875
    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    .line 879
    :try_start_0
    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 880
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateInputDeviceVibrators()V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 887
    iget-object v6, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6

    .line 888
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 890
    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 891
    const/4 v8, 0x0

    :try_start_1
    iput-boolean v8, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    :try_start_2
    iget-object v8, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "vibrate_input_devices"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_2

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 899
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v4}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    .line 901
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_3

    .line 902
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v4, :cond_0

    .line 903
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 904
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v4, p0, v5}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 913
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 914
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_4

    .line 915
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    .line 916
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 917
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 918
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    .line 919
    .local v3, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 920
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    .end local v3    # "vibrator":Landroid/os/Vibrator;
    :cond_2
    move v4, v5

    .line 893
    goto :goto_0

    .line 907
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v4, :cond_0

    .line 908
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 909
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    goto :goto_2

    .line 924
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    .line 927
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 924
    :cond_4
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 926
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 927
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 928
    return-void

    .line 896
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 550
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method private vibrate(ILjava/lang/String;JILandroid/os/IBinder;I)V
    .locals 15
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "magnitude"    # I

    .prologue
    .line 615
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 617
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 621
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v2, :cond_1

    .line 622
    const-string v2, "VibratorService"

    const-string/jumbo v4, "vibrate() : HMTMount is TRUE. "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :goto_0
    return-void

    .line 626
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 630
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 635
    :cond_2
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentVibration.hasLongerTimeout(milliseconds) => true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 645
    :cond_3
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", magnitude:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v3, Lcom/android/server/VibratorService$Vibration;

    move-object v4, p0

    move-object/from16 v5, p6

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;I)V

    .line 650
    .local v3, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 652
    .local v12, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 653
    :try_start_1
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 654
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 655
    iput-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 656
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 657
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 658
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 658
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 660
    :catchall_1
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorIntensity(J)V
.end method

.method static native vibratorIntensityExists()Z
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 745
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    const-string v5, "cancelVibrate"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 752
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 753
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    .line 754
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-ne v2, v3, :cond_0

    .line 758
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 759
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 761
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 764
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 766
    return-void

    .line 761
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 764
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1655
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump vibrator service from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1687
    :goto_0
    return-void

    .line 1663
    :cond_0
    const-string v2, "Previous vibrations:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1664
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v3

    .line 1665
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1666
    .local v1, "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1669
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1670
    const-string v2, "Current Info:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLowPowerMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mTouchMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mCallMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mNotiMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mDefaultMagnitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mMax = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mMin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mMType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService;->mMotorType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mHMTMount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mHasVibrator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mIsEnableInt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mIsSupportedH = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/VibratorService;->mIsSupportedHaptic:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  USE_SET_MAX_MAGNITUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getMagnitude(Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1441
    invoke-static {p1}, Landroid/os/Vibrator$MagnitudeTypes;->valueOf(Ljava/lang/String;)Landroid/os/Vibrator$MagnitudeTypes;

    move-result-object v0

    .line 1442
    .local v0, "magnitudeType":Landroid/os/Vibrator$MagnitudeTypes;
    sget-object v1, Lcom/android/server/VibratorService$5;->$SwitchMap$android$os$Vibrator$MagnitudeTypes:[I

    invoke-virtual {v0}, Landroid/os/Vibrator$MagnitudeTypes;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1454
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1444
    :pswitch_0
    iget v1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    goto :goto_0

    .line 1446
    :pswitch_1
    iget v1, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    goto :goto_0

    .line 1448
    :pswitch_2
    iget v1, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    goto :goto_0

    .line 1450
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/VibratorService;->getMaxMagnitude()I

    move-result v1

    goto :goto_0

    .line 1452
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/VibratorService;->getMinMagnitude()I

    move-result v1

    goto :goto_0

    .line 1442
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getMaxMagnitude()I
    .locals 5

    .prologue
    .line 1421
    iget v1, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    .line 1423
    .local v1, "magnitude":I
    :try_start_0
    sget-object v2, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    :goto_0
    return v1

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default magnitude = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMotorType()I
    .locals 3

    .prologue
    .line 1416
    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMotorType() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VibratorService;->mMotorType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_0
    iget v0, p0, Lcom/android/server/VibratorService;->mMotorType:I

    return v0
.end method

.method public hasVibrator()Z
    .locals 4

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    .line 522
    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 523
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hasVibrator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsEnableIntensity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsSupportedHaptic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/VibratorService;->mIsSupportedHaptic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v1

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_1

    .line 530
    const-string v0, "VibratorService"

    const-string v2, "***** Current vibration info *****"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$Vibration;->printInfo()V

    .line 533
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 534
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mVibrations.size() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last package that started the wakelock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mLastStartWakeLock:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last package that ended the wakelock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mLastEndWakeLock:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mHasVibrator:Z

    return v0

    .line 539
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isEnableIntensity()Z
    .locals 3

    .prologue
    .line 545
    sget-boolean v0, Lcom/android/server/VibratorService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnableIntensity() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/VibratorService;->mIsSupportedHaptic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    sget-boolean v0, Lcom/android/server/VibratorService;->mIsSupportedHaptic:Z

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 932
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 933
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 937
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 938
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 942
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 943
    return-void
.end method

.method public readFromFile(J)I
    .locals 11
    .param p1, "offset"    # J

    .prologue
    const/4 v7, -0x1

    .line 1609
    const/4 v4, 0x0

    .line 1610
    .local v4, "randomAccessFile":Ljava/io/RandomAccessFile;
    new-instance v3, Ljava/io/File;

    const-string v8, "/dev/block/param"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1612
    .local v3, "file":Ljava/io/File;
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1613
    const-string v8, "VibratorService"

    const-string v9, "It\'s not Factory Binary"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1650
    :goto_0
    return v6

    .line 1617
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1618
    const-string v8, "VibratorService"

    const-string v9, "/dev/block/param is not found"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1619
    goto :goto_0

    .line 1621
    :cond_1
    const/4 v6, -0x1

    .line 1625
    .local v6, "value":I
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    new-instance v8, Ljava/io/File;

    const-string v9, "/dev/block/param"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "rw"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1631
    .end local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v5, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v5, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1633
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 1634
    .local v0, "byteData":[B
    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v5, v0, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1636
    const/4 v8, 0x3

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    const/4 v9, 0x2

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    const/4 v9, 0x1

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    const/4 v9, 0x0

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    or-int v6, v8, v9

    .line 1638
    const-string v8, "VibratorService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "get frequency : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    .line 1650
    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 1626
    .end local v0    # "byteData":[B
    :catch_0
    move-exception v1

    .line 1627
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v6, v7

    .line 1628
    goto :goto_0

    .line 1640
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 1641
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1643
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move v6, v7

    .line 1647
    goto :goto_0

    .line 1644
    :catch_2
    move-exception v2

    .line 1645
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1640
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .end local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method reloadContentObserver()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, -0x2

    .line 1458
    sget-boolean v3, Lcom/android/server/VibratorService;->mIsEnableIntensity:Z

    if-eqz v3, :cond_1

    .line 1459
    iget-object v3, p0, Lcom/android/server/VibratorService;->mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v3}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 1460
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v3}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 1461
    iget-object v3, p0, Lcom/android/server/VibratorService;->mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v3}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 1464
    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 1465
    .local v1, "magnitudeMaxLevel":I
    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    .line 1466
    .local v2, "touchMagnitudeMaxLevel":I
    if-lt v1, v7, :cond_0

    if-ge v2, v7, :cond_2

    .line 1467
    :cond_0
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "magnitudeMaxLevel(reloadContentObserver) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", touchMagnitudeMaxLevel(reloadContentObserver) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    .end local v1    # "magnitudeMaxLevel":I
    .end local v2    # "touchMagnitudeMaxLevel":I
    :cond_1
    :goto_0
    return-void

    .line 1472
    .restart local v1    # "magnitudeMaxLevel":I
    .restart local v2    # "touchMagnitudeMaxLevel":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1473
    .local v0, "magnitudeLevel":I
    if-le v0, v2, :cond_3

    .end local v0    # "magnitudeLevel":I
    :goto_1
    iput v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 1475
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-static {v3, v4, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1476
    .restart local v0    # "magnitudeLevel":I
    if-le v0, v1, :cond_4

    .end local v0    # "magnitudeLevel":I
    :goto_2
    iput v0, p0, Lcom/android/server/VibratorService;->mCallMagnitude:I

    .line 1478
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-static {v3, v4, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1479
    .restart local v0    # "magnitudeLevel":I
    if-le v0, v1, :cond_5

    .end local v0    # "magnitudeLevel":I
    :goto_3
    iput v0, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    .line 1481
    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v3, v3, v1

    iput v3, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    .line 1482
    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v3, v3, v8

    iput v3, p0, Lcom/android/server/VibratorService;->mMinMagnitudeValue:I

    .line 1484
    sget-boolean v3, Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z

    if-nez v3, :cond_1

    .line 1485
    iget v3, p0, Lcom/android/server/VibratorService;->mNotiMagnitude:I

    iput v3, p0, Lcom/android/server/VibratorService;->mDefaultMagnitude:I

    goto :goto_0

    .line 1473
    .restart local v0    # "magnitudeLevel":I
    :cond_3
    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v0, v3, v0

    goto :goto_1

    .line 1476
    :cond_4
    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v3, v0

    goto :goto_2

    .line 1479
    :cond_5
    sget-object v3, Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v3, v0

    goto :goto_3
.end method

.method public resetMagnitude()V
    .locals 2

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1408
    :cond_0
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    if-gez v0, :cond_1

    .line 1413
    :goto_0
    return-void

    .line 1411
    :cond_1
    iget v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 1412
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    goto :goto_0
.end method

.method public setMagnitude(I)V
    .locals 2
    .param p1, "magnitude"    # I

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1393
    :cond_0
    if-gez p1, :cond_2

    .line 1394
    const/4 p1, 0x0

    .line 1398
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    iput v0, p0, Lcom/android/server/VibratorService;->mTempMagnitude:I

    .line 1399
    iput p1, p0, Lcom/android/server/VibratorService;->mTouchMagnitude:I

    .line 1400
    return-void

    .line 1395
    :cond_2
    iget v0, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    if-le p1, v0, :cond_1

    .line 1396
    iget p1, p0, Lcom/android/server/VibratorService;->mMaxMagnitudeValue:I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    .line 469
    new-instance v0, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 471
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 472
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/VibratorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 480
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_input_devices"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 484
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/VibratorService$2;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 492
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    .line 506
    return-void
.end method

.method public vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V
    .locals 15
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;

    .prologue
    .line 563
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 569
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v2, :cond_1

    .line 570
    const-string v2, "VibratorService"

    const-string/jumbo v4, "vibrate() : HMTMount is TRUE. "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_0
    return-void

    .line 574
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 578
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 583
    :cond_2
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentVibration.hasLongerTimeout(milliseconds) => true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 593
    :cond_3
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance v3, Lcom/android/server/VibratorService$Vibration;

    move-object v4, p0

    move-object/from16 v5, p6

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;)V

    .line 598
    .local v3, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 600
    .local v12, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 601
    :try_start_1
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 602
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 603
    iput-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 604
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 605
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 606
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 606
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 608
    :catchall_1
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public vibrateCommonPatternMagnitude(ILjava/lang/String;IILandroid/os/IBinder;II)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "repeat"    # I
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "magnitude"    # I
    .param p7, "usageHint"    # I

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1372
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v0, :cond_1

    .line 1373
    const-string v0, "VibratorService"

    const-string/jumbo v1, "vibrateCommonPatternMagnitude() : HMTMount is TRUE. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :goto_0
    return-void

    .line 1377
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->getCommonPattern(I)[J

    move-result-object v3

    .line 1378
    .local v3, "vibePattern":[J
    array-length v0, v3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1379
    const/4 v0, 0x0

    aget-wide v0, v3, v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 1380
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p7

    move-object v6, p5

    move v7, p6

    .line 1384
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/VibratorService;->vibratePatternMagnitude(ILjava/lang/String;[JIILandroid/os/IBinder;I)V

    goto :goto_0
.end method

.method public vibrateMagnitude(ILjava/lang/String;JILandroid/os/IBinder;I)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "magnitude"    # I

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1191
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v0, :cond_1

    .line 1192
    const-string v0, "VibratorService"

    const-string/jumbo v1, "vibrateMagnitude() : HMTMount is TRUE. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :goto_0
    return-void

    .line 1196
    :cond_1
    const/4 v0, -0x1

    if-ne p7, v0, :cond_2

    .line 1197
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V

    goto :goto_0

    .line 1199
    :cond_2
    invoke-direct/range {p0 .. p7}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;I)V

    goto :goto_0
.end method

.method public vibratePattern(ILjava/lang/String;[JIILandroid/os/IBinder;)V
    .locals 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;

    .prologue
    .line 677
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 679
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 683
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v3, :cond_1

    .line 684
    const-string v3, "VibratorService"

    const-string/jumbo v4, "vibratePattern() : HMTMount is TRUE. "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_0
    return-void

    .line 688
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 702
    .local v12, "identity":J
    if-eqz p3, :cond_2

    :try_start_0
    move-object/from16 v0, p3

    array-length v3, v0

    if-eqz v3, :cond_2

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p3

    array-length v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v0, p4

    if-ge v0, v3, :cond_2

    if-nez p6, :cond_3

    .line 731
    :cond_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 708
    :cond_3
    :try_start_1
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    move-object v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 710
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p6

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 715
    :try_start_3
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 716
    :try_start_4
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 717
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 718
    if-ltz p4, :cond_4

    .line 719
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 720
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 727
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 728
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 731
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 711
    :catch_0
    move-exception v10

    .line 731
    .local v10, "e":Landroid/os/RemoteException;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 724
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_5
    iput-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 725
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_1

    .line 728
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 731
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_1
    move-exception v3

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public vibratePatternMagnitude(ILjava/lang/String;[JIILandroid/os/IBinder;I)V
    .locals 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "magnitude"    # I

    .prologue
    .line 1205
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1207
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1211
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mHMTMount:Z

    if-eqz v3, :cond_1

    .line 1212
    const-string v3, "VibratorService"

    const-string/jumbo v4, "vibratePatternMagnitude() : HMTMount is TRUE. "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :goto_0
    return-void

    .line 1216
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 1218
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1230
    .local v12, "identity":J
    if-eqz p3, :cond_2

    :try_start_0
    move-object/from16 v0, p3

    array-length v3, v0

    if-eqz v3, :cond_2

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->isAll0([J)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, p4

    if-ge v0, v3, :cond_2

    if-nez p6, :cond_3

    .line 1233
    :cond_2
    const-string v3, "VibratorService"

    const-string/jumbo v4, "vibratePatternMagnitude() is failed by illegal argument."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1279
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1238
    :cond_3
    const/4 v3, -0x1

    move/from16 v0, p7

    if-ne v0, v3, :cond_4

    .line 1240
    :try_start_1
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibratePatternMagnitude - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", repeat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    move-object v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1258
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    :goto_1
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p6

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1263
    :try_start_3
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1264
    :try_start_4
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 1265
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1266
    if-ltz p4, :cond_6

    .line 1267
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1268
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    .line 1275
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 1276
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1279
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1244
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :cond_4
    if-nez p7, :cond_5

    .line 1245
    :try_start_5
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1246
    :try_start_6
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 1247
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1248
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1279
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1248
    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1279
    :catchall_1
    move-exception v3

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1252
    :cond_5
    :try_start_9
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibratePatternMagnitude - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", repeat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    move-object v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .restart local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    goto/16 :goto_1

    .line 1259
    :catch_0
    move-exception v11

    .line 1279
    .local v11, "e":Landroid/os/RemoteException;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1272
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_6
    :try_start_a
    iput-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 1273
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto/16 :goto_2

    .line 1276
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method

.method public writeToFile(JI)Z
    .locals 11
    .param p1, "offset"    # J
    .param p3, "value"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1557
    const/4 v4, 0x0

    .line 1558
    .local v4, "randomAccessFile":Ljava/io/RandomAccessFile;
    new-instance v3, Ljava/io/File;

    const-string v8, "/dev/block/param"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1560
    .local v3, "file":Ljava/io/File;
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1561
    const-string v7, "VibratorService"

    const-string v8, "It\'s not Factory Binary"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :goto_0
    return v6

    .line 1565
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1566
    const-string v7, "VibratorService"

    const-string v8, "/dev/block/param is not found"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1572
    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    new-instance v8, Ljava/io/File;

    const-string v9, "/dev/block/param"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "rw"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1578
    .end local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v5, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v5, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1580
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 1581
    .local v0, "byteData":[B
    const/4 v8, 0x0

    and-int/lit16 v9, p3, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 1582
    const/4 v8, 0x1

    shr-int/lit8 v9, p3, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 1583
    const/4 v8, 0x2

    shr-int/lit8 v9, p3, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 1584
    const/4 v8, 0x3

    shr-int/lit8 v9, p3, 0x18

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 1586
    const/4 v8, 0x0

    aget-byte v8, v0, v8

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1587
    const/4 v8, 0x1

    aget-byte v8, v0, v8

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1588
    const/4 v8, 0x2

    aget-byte v8, v0, v8

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1589
    const/4 v8, 0x3

    aget-byte v8, v0, v8

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1591
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    move v6, v7

    .line 1602
    goto :goto_0

    .line 1573
    .end local v0    # "byteData":[B
    :catch_0
    move-exception v1

    .line 1574
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1592
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 1593
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1595
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1596
    :catch_2
    move-exception v2

    .line 1597
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1592
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .end local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method
