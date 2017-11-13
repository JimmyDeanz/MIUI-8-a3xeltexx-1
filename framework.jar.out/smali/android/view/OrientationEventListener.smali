.class public abstract Landroid/view/OrientationEventListener;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OrientationEventListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final ORIENTATION_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OrientationEventListener"

.field private static final localLOGV:Z

.field private static mRotationMode:I


# instance fields
.field private fSumRotateAngle_Y:F

.field private fSumRotateAngle_Z:F

.field private mAccStuckCheckMode:Z

.field private mDataIndex:Z

.field private mEnabled:Z

.field private mEnabledGyro:Z

.field private mGyro:Landroid/hardware/Sensor;

.field private mOldListener:Landroid/view/OrientationListener;

.field private mOrientation:I

.field private mPreOrientation:I

.field private mPredata:[F

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mX_StuckCnt:I

.field private mY_StuckCnt:I

.field private mZ_StuckCnt:I

.field private m_StableCnt:I

.field private m_StcukDurationTHD:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput v0, Landroid/view/OrientationEventListener;->mRotationMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rate"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v3, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    .line 36
    iput v3, p0, Landroid/view/OrientationEventListener;->mPreOrientation:I

    .line 38
    iput-boolean v2, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 42
    iput-boolean v2, p0, Landroid/view/OrientationEventListener;->mEnabledGyro:Z

    .line 46
    iput-boolean v2, p0, Landroid/view/OrientationEventListener;->mAccStuckCheckMode:Z

    .line 49
    iput v2, p0, Landroid/view/OrientationEventListener;->mX_StuckCnt:I

    .line 50
    iput v2, p0, Landroid/view/OrientationEventListener;->mY_StuckCnt:I

    .line 51
    iput v2, p0, Landroid/view/OrientationEventListener;->mZ_StuckCnt:I

    .line 52
    iput v2, p0, Landroid/view/OrientationEventListener;->m_StableCnt:I

    .line 56
    iput v1, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Y:F

    .line 57
    iput v1, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Z:F

    .line 59
    iput-boolean v2, p0, Landroid/view/OrientationEventListener;->mDataIndex:Z

    .line 60
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/view/OrientationEventListener;->mPredata:[F

    .line 89
    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "DEVICE_NAME":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 92
    iput-boolean v2, p0, Landroid/view/OrientationEventListener;->mAccStuckCheckMode:Z

    .line 100
    :cond_0
    :goto_0
    const-string/jumbo v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 102
    iput p2, p0, Landroid/view/OrientationEventListener;->mRate:I

    .line 103
    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    .line 104
    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 106
    new-instance v1, Landroid/view/OrientationEventListener$SensorEventListenerImpl;

    invoke-direct {v1, p0}, Landroid/view/OrientationEventListener$SensorEventListenerImpl;-><init>(Landroid/view/OrientationEventListener;)V

    iput-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 109
    :cond_1
    iget-boolean v1, p0, Landroid/view/OrientationEventListener;->mAccStuckCheckMode:Z

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Landroid/view/OrientationEventListener;->mGyro:Landroid/hardware/Sensor;

    .line 112
    iget v1, p0, Landroid/view/OrientationEventListener;->mRate:I

    packed-switch v1, :pswitch_data_0

    .line 130
    const/16 v1, 0xa

    iput v1, p0, Landroid/view/OrientationEventListener;->m_StcukDurationTHD:I

    .line 133
    :goto_1
    const-string v1, "OrientationEventListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/OrientationEventListener;->mRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/OrientationEventListener;->m_StcukDurationTHD:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    return-void

    .line 94
    :cond_3
    const-string/jumbo v1, "zerolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "zeroflte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    :cond_4
    iput-boolean v4, p0, Landroid/view/OrientationEventListener;->mAccStuckCheckMode:Z

    .line 97
    const-string v1, "OrientationEventListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAccStuckCheckMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/OrientationEventListener;->mAccStuckCheckMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 114
    :pswitch_0
    const/16 v1, 0x90

    iput v1, p0, Landroid/view/OrientationEventListener;->m_StcukDurationTHD:I

    goto :goto_1

    .line 118
    :pswitch_1
    const/16 v1, 0x24

    iput v1, p0, Landroid/view/OrientationEventListener;->m_StcukDurationTHD:I

    goto :goto_1

    .line 122
    :pswitch_2
    const/16 v1, 0xc

    iput v1, p0, Landroid/view/OrientationEventListener;->m_StcukDurationTHD:I

    goto :goto_1

    .line 126
    :pswitch_3
    const/4 v1, 0x6

    iput v1, p0, Landroid/view/OrientationEventListener;->m_StcukDurationTHD:I

    goto :goto_1

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/view/OrientationEventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mAccStuckCheckMode:Z

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 31
    sget v0, Landroid/view/OrientationEventListener;->mRotationMode:I

    return v0
.end method

.method static synthetic access$1000(Landroid/view/OrientationEventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mDataIndex:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/view/OrientationEventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/OrientationEventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Landroid/view/OrientationEventListener;->mDataIndex:Z

    return p1
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 31
    sput p0, Landroid/view/OrientationEventListener;->mRotationMode:I

    return p0
.end method

.method static synthetic access$1100(Landroid/view/OrientationEventListener;)[F
    .locals 1
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mPredata:[F

    return-object v0
.end method

.method static synthetic access$1200(Landroid/view/OrientationEventListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget v0, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    return v0
.end method

.method static synthetic access$1202(Landroid/view/OrientationEventListener;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/OrientationEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    return p1
.end method

.method static synthetic access$1300(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;
    .locals 1
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/view/OrientationEventListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget v0, p0, Landroid/view/OrientationEventListener;->mPreOrientation:I

    return v0
.end method

.method static synthetic access$1402(Landroid/view/OrientationEventListener;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/OrientationEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Landroid/view/OrientationEventListener;->mPreOrientation:I

    return p1
.end method

.method static synthetic access$1500(Landroid/view/OrientationEventListener;)F
    .locals 1
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget v0, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Y:F

    return v0
.end method

.method static synthetic access$1502(Landroid/view/OrientationEventListener;F)F
    .locals 0
    .param p0, "x0"    # Landroid/view/OrientationEventListener;
    .param p1, "x1"    # F

    .prologue
    .line 31
    iput p1, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Y:F

    return p1
.end method

.method static synthetic access$1518(Landroid/view/OrientationEventListener;D)F
    .locals 3
    .param p0, "x0"    # Landroid/view/OrientationEventListener;
    .param p1, "x1"    # D

    .prologue
    .line 31
    iget v0, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Y:F

    float-to-double v0, v0

    add-double/2addr v0, p1

    double-to-float v0, v0

    iput v0, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Y:F

    return v0
.end method

.method static synthetic access$1600(Landroid/view/OrientationEventListener;)F
    .locals 1
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget v0, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Z:F

    return v0
.end method

.method static synthetic access$1602(Landroid/view/OrientationEventListener;F)F
    .locals 0
    .param p0, "x0"    # Landroid/view/OrientationEventListener;
    .param p1, "x1"    # F

    .prologue
    .line 31
    iput p1, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Z:F

    return p1
.end method

.method static synthetic access$1618(Landroid/view/OrientationEventListener;D)F
    .locals 3
    .param p0, "x0"    # Landroid/view/OrientationEventListener;
    .param p1, "x1"    # D

    .prologue
    .line 31
    iget v0, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Z:F

    float-to-double v0, v0

    add-double/2addr v0, p1

    double-to-float v0, v0

    iput v0, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Z:F

    return v0
.end method

.method static synthetic access$200(Landroid/view/OrientationEventListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget v0, p0, Landroid/view/OrientationEventListener;->mX_StuckCnt:I

    return v0
.end method

.method static synthetic access$202(Landroid/view/OrientationEventListener;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/OrientationEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Landroid/view/OrientationEventListener;->mX_StuckCnt:I

    return p1
.end method

.method static synthetic access$208(Landroid/view/OrientationEventListener;)I
    .locals 2
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget v0, p0, Landroid/view/OrientationEventListener;->mX_StuckCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/view/OrientationEventListener;->mX_StuckCnt:I

    return v0
.end method

.method static synthetic access$300(Landroid/view/OrientationEventListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget v0, p0, Landroid/view/OrientationEventListener;->mY_StuckCnt:I

    return v0
.end method

.method static synthetic access$302(Landroid/view/OrientationEventListener;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/OrientationEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Landroid/view/OrientationEventListener;->mY_StuckCnt:I

    return p1
.end method

.method static synthetic access$308(Landroid/view/OrientationEventListener;)I
    .locals 2
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget v0, p0, Landroid/view/OrientationEventListener;->mY_StuckCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/view/OrientationEventListener;->mY_StuckCnt:I

    return v0
.end method

.method static synthetic access$400(Landroid/view/OrientationEventListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget v0, p0, Landroid/view/OrientationEventListener;->mZ_StuckCnt:I

    return v0
.end method

.method static synthetic access$402(Landroid/view/OrientationEventListener;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/OrientationEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Landroid/view/OrientationEventListener;->mZ_StuckCnt:I

    return p1
.end method

.method static synthetic access$408(Landroid/view/OrientationEventListener;)I
    .locals 2
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget v0, p0, Landroid/view/OrientationEventListener;->mZ_StuckCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/view/OrientationEventListener;->mZ_StuckCnt:I

    return v0
.end method

.method static synthetic access$500(Landroid/view/OrientationEventListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget v0, p0, Landroid/view/OrientationEventListener;->m_StcukDurationTHD:I

    return v0
.end method

.method static synthetic access$600(Landroid/view/OrientationEventListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget v0, p0, Landroid/view/OrientationEventListener;->m_StableCnt:I

    return v0
.end method

.method static synthetic access$602(Landroid/view/OrientationEventListener;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/OrientationEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Landroid/view/OrientationEventListener;->m_StableCnt:I

    return p1
.end method

.method static synthetic access$608(Landroid/view/OrientationEventListener;)I
    .locals 2
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget v0, p0, Landroid/view/OrientationEventListener;->m_StableCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/view/OrientationEventListener;->m_StableCnt:I

    return v0
.end method

.method static synthetic access$700(Landroid/view/OrientationEventListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabledGyro:Z

    return v0
.end method

.method static synthetic access$702(Landroid/view/OrientationEventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/OrientationEventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Landroid/view/OrientationEventListener;->mEnabledGyro:Z

    return p1
.end method

.method static synthetic access$800(Landroid/view/OrientationEventListener;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mGyro:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$900(Landroid/view/OrientationEventListener;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 166
    const-string v0, "OrientationEventListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 172
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 173
    iput-boolean v2, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 176
    :cond_2
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mAccStuckCheckMode:Z

    if-eqz v0, :cond_0

    .line 177
    sput v2, Landroid/view/OrientationEventListener;->mRotationMode:I

    .line 178
    iput v2, p0, Landroid/view/OrientationEventListener;->mX_StuckCnt:I

    .line 179
    iput v2, p0, Landroid/view/OrientationEventListener;->mY_StuckCnt:I

    .line 180
    iput v2, p0, Landroid/view/OrientationEventListener;->mZ_StuckCnt:I

    goto :goto_0
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 148
    const-string v0, "OrientationEventListener"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Landroid/view/OrientationEventListener;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    goto :goto_0
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method registerListener(Landroid/view/OrientationListener;)V
    .locals 0
    .param p1, "lis"    # Landroid/view/OrientationListener;

    .prologue
    .line 138
    iput-object p1, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    .line 139
    return-void
.end method
