.class Lcom/android/services/telephony/EmergencyTonePlayer;
.super Ljava/lang/Object;
.source "EmergencyTonePlayer.java"


# static fields
.field private static final VIBRATE_PATTERN:[J

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mIsVibrating:Z

.field private mSavedInCallVolume:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 40
    new-array v0, v2, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/services/telephony/EmergencyTonePlayer;->VIBRATE_PATTERN:[J

    .line 43
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/EmergencyTonePlayer;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void

    .line 40
    nop

    :array_0
    .array-data 8
        0x3e8
        0x3e8
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mVibrator:Landroid/os/Vibrator;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mIsVibrating:Z

    .line 60
    iput-object p1, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mContext:Landroid/content/Context;

    .line 61
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 62
    return-void
.end method

.method private getToneSetting()I
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_tone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private startAlert()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v1, 0x64

    invoke-direct {v0, v2, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 107
    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mSavedInCallVolume:I

    .line 108
    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 112
    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v0, "An alert is already running."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private startVibrate()V
    .locals 4

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mIsVibrating:Z

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/services/telephony/EmergencyTonePlayer;->VIBRATE_PATTERN:[J

    const/4 v2, 0x0

    sget-object v3, Lcom/android/services/telephony/EmergencyTonePlayer;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mIsVibrating:Z

    .line 92
    :cond_0
    return-void
.end method

.method private stopAlert()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 121
    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 124
    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mSavedInCallVolume:I

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 125
    iput v2, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mSavedInCallVolume:I

    .line 127
    :cond_0
    return-void
.end method

.method private stopVibrate()V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mIsVibrating:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mIsVibrating:Z

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyTonePlayer;->getToneSetting()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 67
    :pswitch_0
    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyTonePlayer;->startVibrate()V

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v1, p0, Lcom/android/services/telephony/EmergencyTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 72
    .local v0, "ringerMode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyTonePlayer;->startAlert()V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyTonePlayer;->stopVibrate()V

    .line 84
    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyTonePlayer;->stopAlert()V

    .line 85
    return-void
.end method
