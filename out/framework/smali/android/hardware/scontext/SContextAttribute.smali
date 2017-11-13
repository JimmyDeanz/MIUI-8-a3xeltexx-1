.class public Landroid/hardware/scontext/SContextAttribute;
.super Ljava/lang/Object;
.source "SContextAttribute.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextAttribute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityLocationLogging:Landroid/os/Bundle;

.field private mActivityNotification:Landroid/os/Bundle;

.field private mActivityNotificationEx:Landroid/os/Bundle;

.field private mApproach:Landroid/os/Bundle;

.field private mAutoBrightness:Landroid/os/Bundle;

.field private mAutoRotation:Landroid/os/Bundle;

.field private mDevicePhysicalContextMonitor:Landroid/os/Bundle;

.field private mDualDisplayAngle:Landroid/os/Bundle;

.field private mEnvironment:Landroid/os/Bundle;

.field private mEnvironmentAdaptiveDisplay:Landroid/os/Bundle;

.field private mExercise:Landroid/os/Bundle;

.field private mFlatMotionForTableMode:Landroid/os/Bundle;

.field private mHallSensor:Landroid/os/Bundle;

.field private mInactiveTimer:Landroid/os/Bundle;

.field private mMovementForPositioning:Landroid/os/Bundle;

.field private mPedometer:Landroid/os/Bundle;

.field private mShakeMotion:Landroid/os/Bundle;

.field private mSleepMonitor:Landroid/os/Bundle;

.field private mSlocationCore:Landroid/os/Bundle;

.field private mSpecificPoseAlert:Landroid/os/Bundle;

.field private mStepCountAlert:Landroid/os/Bundle;

.field private mStepLevelMonitor:Landroid/os/Bundle;

.field private mTemperatureAlert:Landroid/os/Bundle;

.field private mWakeUpVoice:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 356
    new-instance v0, Landroid/hardware/scontext/SContextAttribute$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAttribute$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mApproach:Landroid/os/Bundle;

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mPedometer:Landroid/os/Bundle;

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepCountAlert:Landroid/os/Bundle;

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoRotation:Landroid/os/Bundle;

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironment:Landroid/os/Bundle;

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mMovementForPositioning:Landroid/os/Bundle;

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mShakeMotion:Landroid/os/Bundle;

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mWakeUpVoice:Landroid/os/Bundle;

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mTemperatureAlert:Landroid/os/Bundle;

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityLocationLogging:Landroid/os/Bundle;

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotification:Landroid/os/Bundle;

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSpecificPoseAlert:Landroid/os/Bundle;

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSleepMonitor:Landroid/os/Bundle;

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotificationEx:Landroid/os/Bundle;

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepLevelMonitor:Landroid/os/Bundle;

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mInactiveTimer:Landroid/os/Bundle;

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mFlatMotionForTableMode:Landroid/os/Bundle;

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoBrightness:Landroid/os/Bundle;

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mExercise:Landroid/os/Bundle;

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironmentAdaptiveDisplay:Landroid/os/Bundle;

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mDualDisplayAngle:Landroid/os/Bundle;

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mHallSensor:Landroid/os/Bundle;

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSlocationCore:Landroid/os/Bundle;

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mDevicePhysicalContextMonitor:Landroid/os/Bundle;

    .line 106
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mApproach:Landroid/os/Bundle;

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mPedometer:Landroid/os/Bundle;

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepCountAlert:Landroid/os/Bundle;

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoRotation:Landroid/os/Bundle;

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironment:Landroid/os/Bundle;

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mMovementForPositioning:Landroid/os/Bundle;

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mShakeMotion:Landroid/os/Bundle;

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mWakeUpVoice:Landroid/os/Bundle;

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mTemperatureAlert:Landroid/os/Bundle;

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityLocationLogging:Landroid/os/Bundle;

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotification:Landroid/os/Bundle;

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSpecificPoseAlert:Landroid/os/Bundle;

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSleepMonitor:Landroid/os/Bundle;

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotificationEx:Landroid/os/Bundle;

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepLevelMonitor:Landroid/os/Bundle;

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mInactiveTimer:Landroid/os/Bundle;

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mFlatMotionForTableMode:Landroid/os/Bundle;

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoBrightness:Landroid/os/Bundle;

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mExercise:Landroid/os/Bundle;

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironmentAdaptiveDisplay:Landroid/os/Bundle;

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mDualDisplayAngle:Landroid/os/Bundle;

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mHallSensor:Landroid/os/Bundle;

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSlocationCore:Landroid/os/Bundle;

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mDevicePhysicalContextMonitor:Landroid/os/Bundle;

    .line 112
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextAttribute;->readFromParcel(Landroid/os/Parcel;)V

    .line 113
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mApproach:Landroid/os/Bundle;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mPedometer:Landroid/os/Bundle;

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepCountAlert:Landroid/os/Bundle;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoRotation:Landroid/os/Bundle;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironment:Landroid/os/Bundle;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mMovementForPositioning:Landroid/os/Bundle;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mShakeMotion:Landroid/os/Bundle;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mWakeUpVoice:Landroid/os/Bundle;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mTemperatureAlert:Landroid/os/Bundle;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityLocationLogging:Landroid/os/Bundle;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotification:Landroid/os/Bundle;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSpecificPoseAlert:Landroid/os/Bundle;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSleepMonitor:Landroid/os/Bundle;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotificationEx:Landroid/os/Bundle;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepLevelMonitor:Landroid/os/Bundle;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mInactiveTimer:Landroid/os/Bundle;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mFlatMotionForTableMode:Landroid/os/Bundle;

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoBrightness:Landroid/os/Bundle;

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mExercise:Landroid/os/Bundle;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironmentAdaptiveDisplay:Landroid/os/Bundle;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mDualDisplayAngle:Landroid/os/Bundle;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mHallSensor:Landroid/os/Bundle;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSlocationCore:Landroid/os/Bundle;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mDevicePhysicalContextMonitor:Landroid/os/Bundle;

    .line 349
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public getAttribute(I)Landroid/os/Bundle;
    .locals 1
    .param p1, "service"    # I

    .prologue
    .line 127
    packed-switch p1, :pswitch_data_0

    .line 177
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 129
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mApproach:Landroid/os/Bundle;

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mPedometer:Landroid/os/Bundle;

    goto :goto_0

    .line 133
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepCountAlert:Landroid/os/Bundle;

    goto :goto_0

    .line 135
    :pswitch_4
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoRotation:Landroid/os/Bundle;

    goto :goto_0

    .line 137
    :pswitch_5
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironment:Landroid/os/Bundle;

    goto :goto_0

    .line 139
    :pswitch_6
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mMovementForPositioning:Landroid/os/Bundle;

    goto :goto_0

    .line 141
    :pswitch_7
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mShakeMotion:Landroid/os/Bundle;

    goto :goto_0

    .line 143
    :pswitch_8
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mWakeUpVoice:Landroid/os/Bundle;

    goto :goto_0

    .line 145
    :pswitch_9
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mTemperatureAlert:Landroid/os/Bundle;

    goto :goto_0

    .line 147
    :pswitch_a
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityLocationLogging:Landroid/os/Bundle;

    goto :goto_0

    .line 149
    :pswitch_b
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotification:Landroid/os/Bundle;

    goto :goto_0

    .line 151
    :pswitch_c
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSpecificPoseAlert:Landroid/os/Bundle;

    goto :goto_0

    .line 153
    :pswitch_d
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSleepMonitor:Landroid/os/Bundle;

    goto :goto_0

    .line 155
    :pswitch_e
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotificationEx:Landroid/os/Bundle;

    goto :goto_0

    .line 157
    :pswitch_f
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepLevelMonitor:Landroid/os/Bundle;

    goto :goto_0

    .line 159
    :pswitch_10
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mInactiveTimer:Landroid/os/Bundle;

    goto :goto_0

    .line 161
    :pswitch_11
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mFlatMotionForTableMode:Landroid/os/Bundle;

    goto :goto_0

    .line 163
    :pswitch_12
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoBrightness:Landroid/os/Bundle;

    goto :goto_0

    .line 165
    :pswitch_13
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mExercise:Landroid/os/Bundle;

    goto :goto_0

    .line 167
    :pswitch_14
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironmentAdaptiveDisplay:Landroid/os/Bundle;

    goto :goto_0

    .line 169
    :pswitch_15
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mDualDisplayAngle:Landroid/os/Bundle;

    goto :goto_0

    .line 171
    :pswitch_16
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mHallSensor:Landroid/os/Bundle;

    goto :goto_0

    .line 173
    :pswitch_17
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSlocationCore:Landroid/os/Bundle;

    goto :goto_0

    .line 175
    :pswitch_18
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mDevicePhysicalContextMonitor:Landroid/os/Bundle;

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
    .end packed-switch
.end method

.method setAttribute(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/os/Bundle;

    .prologue
    .line 188
    packed-switch p1, :pswitch_data_0

    .line 264
    :goto_0
    :pswitch_0
    return-void

    .line 190
    :pswitch_1
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mApproach:Landroid/os/Bundle;

    goto :goto_0

    .line 193
    :pswitch_2
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mPedometer:Landroid/os/Bundle;

    goto :goto_0

    .line 196
    :pswitch_3
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mStepCountAlert:Landroid/os/Bundle;

    goto :goto_0

    .line 199
    :pswitch_4
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoRotation:Landroid/os/Bundle;

    goto :goto_0

    .line 202
    :pswitch_5
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironment:Landroid/os/Bundle;

    goto :goto_0

    .line 205
    :pswitch_6
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mMovementForPositioning:Landroid/os/Bundle;

    goto :goto_0

    .line 208
    :pswitch_7
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mShakeMotion:Landroid/os/Bundle;

    goto :goto_0

    .line 211
    :pswitch_8
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mWakeUpVoice:Landroid/os/Bundle;

    goto :goto_0

    .line 214
    :pswitch_9
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mTemperatureAlert:Landroid/os/Bundle;

    goto :goto_0

    .line 217
    :pswitch_a
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityLocationLogging:Landroid/os/Bundle;

    goto :goto_0

    .line 220
    :pswitch_b
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotification:Landroid/os/Bundle;

    goto :goto_0

    .line 223
    :pswitch_c
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mSpecificPoseAlert:Landroid/os/Bundle;

    goto :goto_0

    .line 226
    :pswitch_d
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mSleepMonitor:Landroid/os/Bundle;

    goto :goto_0

    .line 229
    :pswitch_e
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotificationEx:Landroid/os/Bundle;

    goto :goto_0

    .line 232
    :pswitch_f
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mStepLevelMonitor:Landroid/os/Bundle;

    goto :goto_0

    .line 235
    :pswitch_10
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mInactiveTimer:Landroid/os/Bundle;

    goto :goto_0

    .line 238
    :pswitch_11
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mFlatMotionForTableMode:Landroid/os/Bundle;

    goto :goto_0

    .line 241
    :pswitch_12
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoBrightness:Landroid/os/Bundle;

    goto :goto_0

    .line 244
    :pswitch_13
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mExercise:Landroid/os/Bundle;

    goto :goto_0

    .line 247
    :pswitch_14
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironmentAdaptiveDisplay:Landroid/os/Bundle;

    goto :goto_0

    .line 250
    :pswitch_15
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mDualDisplayAngle:Landroid/os/Bundle;

    goto :goto_0

    .line 253
    :pswitch_16
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mHallSensor:Landroid/os/Bundle;

    goto :goto_0

    .line 256
    :pswitch_17
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mSlocationCore:Landroid/os/Bundle;

    goto :goto_0

    .line 259
    :pswitch_18
    iput-object p2, p0, Landroid/hardware/scontext/SContextAttribute;->mDevicePhysicalContextMonitor:Landroid/os/Bundle;

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 292
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mApproach:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 293
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mPedometer:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 294
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepCountAlert:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 295
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoRotation:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 296
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironment:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 297
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mMovementForPositioning:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 298
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mShakeMotion:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 299
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mWakeUpVoice:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 300
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mTemperatureAlert:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 301
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityLocationLogging:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 302
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotification:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 303
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSpecificPoseAlert:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 304
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSleepMonitor:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 305
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mActivityNotificationEx:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 306
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mStepLevelMonitor:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 307
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mInactiveTimer:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 308
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mFlatMotionForTableMode:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 309
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mAutoBrightness:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 310
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mExercise:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 311
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mEnvironmentAdaptiveDisplay:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 312
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mDualDisplayAngle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 313
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mHallSensor:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 314
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mSlocationCore:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 315
    iget-object v0, p0, Landroid/hardware/scontext/SContextAttribute;->mDevicePhysicalContextMonitor:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 316
    return-void
.end method
