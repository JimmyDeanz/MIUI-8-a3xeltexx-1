.class public Landroid/preference/SeekBarVolumizer;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/SeekBarVolumizer$Receiver;,
        Landroid/preference/SeekBarVolumizer$Observer;,
        Landroid/preference/SeekBarVolumizer$H;,
        Landroid/preference/SeekBarVolumizer$Callback;
    }
.end annotation


# static fields
.field private static final CHECK_RINGTONE_PLAYBACK_DELAY_MS:I = 0x3e8

.field private static final DEBUG:Z = true

.field private static final DISPLAY_PROFILE_EDIT:I = 0x1

.field private static final DISPLAY_SOUND_SETTING:I = 0x0

.field private static final DUAL_SIM:Z

.field private static final FINEVOLUME_MAX_INDEX:I = 0x96

.field private static final MSG_INIT_SAMPLE:I = 0x3

.field private static final MSG_SET_STREAM_VOLUME:I = 0x0

.field private static final MSG_START_SAMPLE:I = 0x1

.field private static final MSG_STOP_SAMPLE:I = 0x2

.field private static final SUPPORT_FINEVOLUME:Z = true

.field private static final TAG:Ljava/lang/String; = "SeekBarVolumizer"


# instance fields
.field private final SIM_CHANGED_ACTION:Ljava/lang/String;

.field private final VOLUME_CHANGED_ACTION:Ljava/lang/String;

.field private isRingerUpdatedToAudio:Z

.field private mActualRingtoneUri:Landroid/net/Uri;

.field private mAffectedByRingerMode:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Landroid/preference/SeekBarVolumizer$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDefaultUri:Landroid/net/Uri;

.field private mDisplayType:I

.field private mEditMode:I

.field private mHandler:Landroid/os/Handler;

.field private mLastAudibleStreamVolume:I

.field private mLastProgress:I

.field private mLastWaitingToneVolume:I

.field private final mMaxStreamVolume:I

.field private mMuted:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationOrRing:Z

.field private mOriginalLastAudibleStreamVolume:I

.field private mOriginalNotificationVolume:I

.field private mOriginalRingerMode:I

.field private mOriginalStreamVolume:I

.field private mOriginalSystemVolume:I

.field private mProfileMode:I

.field private final mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

.field private mRingerMode:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mRingtoneChangeObserver:Landroid/database/ContentObserver;

.field private final mSamsungAudioManager:Landroid/media/SamsungAudioManager;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field private mSystemSampleStarted:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mUiHandler:Landroid/preference/SeekBarVolumizer$H;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/preference/SeekBarVolumizer;->DUAL_SIM:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .param p4, "callback"    # Landroid/preference/SeekBarVolumizer$Callback;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v1, -0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/preference/SeekBarVolumizer$H;

    invoke-direct {v0, p0, v4}, Landroid/preference/SeekBarVolumizer$H;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$1;)V

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    .line 83
    new-instance v0, Landroid/preference/SeekBarVolumizer$Receiver;

    invoke-direct {v0, p0, v4}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$1;)V

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    .line 97
    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 100
    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 103
    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    .line 104
    iput-object v4, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 118
    iput-boolean v5, p0, Landroid/preference/SeekBarVolumizer;->isRingerUpdatedToAudio:Z

    .line 120
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    .line 121
    const-string v0, "com.samsung.intent.action.DEFAULT_CS_SIM_CHANGED"

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->SIM_CHANGED_ACTION:Ljava/lang/String;

    .line 184
    new-instance v0, Landroid/preference/SeekBarVolumizer$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/preference/SeekBarVolumizer$1;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtoneChangeObserver:Landroid/database/ContentObserver;

    .line 132
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 133
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 134
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 135
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    .line 136
    new-instance v0, Landroid/media/SamsungAudioManager;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    .line 138
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    .line 139
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-ne v0, v2, :cond_4

    .line 140
    const/16 v0, 0x5dc

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    .line 144
    :goto_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mAffectedByRingerMode:Z

    .line 145
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->isNotificationOrRing(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    .line 146
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    .line 149
    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    .line 150
    iput-object p4, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    .line 151
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-ne v0, v2, :cond_5

    .line 152
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v0, v2}, Landroid/media/SamsungAudioManager;->getFineVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 156
    :goto_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_waiting_tone"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    .line 157
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    .line 158
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    .line 159
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    .line 160
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isZenMuted()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/preference/SeekBarVolumizer$Callback;->onMuted(ZZ)V

    .line 163
    :cond_1
    if-nez p3, :cond_2

    .line 164
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v0, v3, :cond_6

    .line 165
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getDefaultRingtoneUri()Landroid/net/Uri;

    move-result-object p3

    .line 172
    :cond_2
    :goto_2
    iput-object p3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 174
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v0, :cond_8

    .line 175
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    .line 183
    :cond_3
    :goto_3
    return-void

    .line 142
    :cond_4
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    goto/16 :goto_0

    .line 154
    :cond_5
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    goto :goto_1

    .line 166
    :cond_6
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 167
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getDefaultNotificationUri()Landroid/net/Uri;

    move-result-object p3

    goto :goto_2

    .line 169
    :cond_7
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 176
    :cond_8
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v0, v5, :cond_9

    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v0, :cond_9

    .line 177
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalSystemVolume:I

    goto :goto_3

    .line 178
    :cond_9
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalLastAudibleStreamVolume:I

    goto :goto_3
.end method

.method static synthetic access$1000(Landroid/preference/SeekBarVolumizer;)V
    .locals 0
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->updateSlider()V

    return-void
.end method

.method static synthetic access$1100(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    return p1
.end method

.method static synthetic access$1300(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Landroid/preference/SeekBarVolumizer;->DUAL_SIM:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/preference/SeekBarVolumizer;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 62
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mActualRingtoneUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/preference/SeekBarVolumizer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 62
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->isRingerUpdatedToAudio:Z

    return v0
.end method

.method static synthetic access$1702(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    return p1
.end method

.method static synthetic access$1800(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/preference/SeekBarVolumizer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 62
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    return v0
.end method

.method static synthetic access$200(Landroid/preference/SeekBarVolumizer;)V
    .locals 0
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onInitSample()V

    return-void
.end method

.method static synthetic access$2000(Landroid/preference/SeekBarVolumizer;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer;->isNotificationOrRing(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    return-object v0
.end method

.method static synthetic access$300(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$402(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    return p1
.end method

.method static synthetic access$500(Landroid/preference/SeekBarVolumizer;)I
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 62
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    return v0
.end method

.method static synthetic access$502(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    return p1
.end method

.method static synthetic access$600(Landroid/preference/SeekBarVolumizer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 62
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    return v0
.end method

.method static synthetic access$602(Landroid/preference/SeekBarVolumizer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    return p1
.end method

.method static synthetic access$700(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    return-object v0
.end method

.method static synthetic access$800(Landroid/preference/SeekBarVolumizer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isZenMuted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/preference/SeekBarVolumizer;)I
    .locals 1
    .param p0, "x0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 62
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method private checkDefaultNotificationUri()V
    .locals 4

    .prologue
    .line 432
    const/4 v1, 0x0

    .line 433
    .local v1, "notificationUri":Landroid/net/Uri;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v2

    .line 434
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 436
    .local v0, "currentSimSlot":I
    sget-boolean v3, Landroid/preference/SeekBarVolumizer;->DUAL_SIM:Z

    if-eqz v3, :cond_1

    .line 437
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 438
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 445
    :goto_0
    return-void

    .line 440
    :cond_0
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    .line 443
    :cond_1
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private checkDefaultRingtoneUri()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 412
    const/4 v1, 0x0

    .line 413
    .local v1, "ringtoneUri":Landroid/net/Uri;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v2

    .line 414
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 416
    .local v0, "currentSimSlot":I
    sget-boolean v3, Landroid/preference/SeekBarVolumizer;->DUAL_SIM:Z

    if-eqz v3, :cond_2

    .line 417
    if-ne v0, v4, :cond_1

    .line 418
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    .line 423
    :cond_2
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 425
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mActualRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 426
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getDefaultNotificationUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 210
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    .line 211
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 213
    .local v0, "currentSimSlot":I
    sget-boolean v2, Landroid/preference/SeekBarVolumizer;->DUAL_SIM:Z

    if-eqz v2, :cond_1

    .line 214
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 215
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    .line 220
    :goto_0
    return-object v2

    .line 217
    :cond_0
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 220
    :cond_1
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getDefaultRingtoneUri()Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 192
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    .line 193
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 195
    .local v0, "currentSimSlot":I
    sget-boolean v2, Landroid/preference/SeekBarVolumizer;->DUAL_SIM:Z

    if-eqz v2, :cond_1

    .line 196
    if-ne v0, v3, :cond_0

    .line 197
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    const/16 v3, 0x80

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mActualRingtoneUri:Landroid/net/Uri;

    .line 198
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    .line 205
    :goto_0
    return-object v2

    .line 200
    :cond_0
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mActualRingtoneUri:Landroid/net/Uri;

    .line 201
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_0

    .line 204
    :cond_1
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mActualRingtoneUri:Landroid/net/Uri;

    .line 205
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getImpliedLevel(I)I
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 517
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v1, v2, -0x1

    .line 518
    .local v1, "n":I
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 520
    .local v0, "level":I
    :goto_0
    return v0

    .line 518
    .end local v0    # "level":I
    :cond_0
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    div-int/lit8 v0, v2, 0x64

    goto :goto_0

    :cond_1
    int-to-float v2, p1

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v0, v2, 0x1

    goto :goto_0
.end method

.method private getImpliedMediaVolumeLevel(I)I
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 524
    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 702
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 703
    .local v0, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 704
    const-string v1, "SeekBarVolumizer"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_0
    return-object v0
.end method

.method private isNotificationOrRing(I)Z
    .locals 3
    .param p1, "stream"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 225
    iget-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-eqz v2, :cond_2

    .line 226
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 226
    goto :goto_0

    .line 228
    :cond_2
    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isUserInCall(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 668
    const/4 v2, 0x0

    .line 669
    .local v2, "isVoiceCall":Z
    const/4 v1, 0x0

    .line 670
    .local v1, "isVoIP":Z
    const-string/jumbo v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 671
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-eqz v6, :cond_3

    move v2, v4

    .line 673
    :goto_0
    iget-object v6, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 674
    .local v0, "audioMode":I
    const/4 v6, 0x3

    if-eq v0, v6, :cond_0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_4

    :cond_0
    move v1, v4

    .line 676
    :goto_1
    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v5, v4

    :cond_2
    return v5

    .end local v0    # "audioMode":I
    :cond_3
    move v2, v5

    .line 671
    goto :goto_0

    .restart local v0    # "audioMode":I
    :cond_4
    move v1, v5

    .line 674
    goto :goto_1
.end method

.method private isZenMuted()Z
    .locals 2

    .prologue
    .line 251
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onInitSample()V
    .locals 4

    .prologue
    .line 344
    :try_start_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 345
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception happens in onInitSample() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onStartSample()V
    .locals 7

    .prologue
    .line 361
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v4

    if-nez v4, :cond_2

    .line 362
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v4, :cond_0

    .line 363
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v4, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 365
    :cond_0
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_2

    .line 367
    :try_start_0
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    iget-object v6, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v6}, Landroid/media/Ringtone;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    const/16 v6, 0xc0

    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 372
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 373
    .local v3, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 374
    .local v2, "opPackageName":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 376
    :try_start_1
    const-string v4, "SeekBarVolumizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isRinging : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v4, "SeekBarVolumizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isOffhook : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-interface {v3, v2}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 379
    :cond_1
    const-string v4, "SeekBarVolumizer"

    const-string v5, "don\'t play ringtone in volumepreference: return called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 409
    .end local v2    # "opPackageName":Ljava/lang/String;
    .end local v3    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_2
    :goto_0
    return-void

    .line 382
    .restart local v2    # "opPackageName":Ljava/lang/String;
    .restart local v3    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 383
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "SeekBarVolumizer"

    const-string v5, "ITelephony threw RemoteException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v4

    if-nez v4, :cond_2

    .line 390
    const-string v4, "SeekBarVolumizer"

    const-string/jumbo v5, "sample : mRingtone.play()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mActualRingtoneUri:Landroid/net/Uri;

    if-eqz v4, :cond_6

    .line 393
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->checkDefaultRingtoneUri()V

    .line 398
    :cond_4
    :goto_1
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)Z

    .line 399
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_5

    .line 400
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v5, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 402
    :cond_5
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 404
    .end local v2    # "opPackageName":Ljava/lang/String;
    .end local v3    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Throwable;
    const-string v4, "SeekBarVolumizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error playing ringtone, stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 394
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "opPackageName":Ljava/lang/String;
    .restart local v3    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_6
    :try_start_3
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 395
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->checkDefaultNotificationUri()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method private onStopSample()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 459
    :cond_0
    return-void
.end method

.method private postSetVolume(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    const/4 v2, 0x0

    .line 635
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 639
    :goto_0
    return-void

    .line 636
    :cond_0
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 637
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 638
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private postStartSample()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 354
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->isUserInCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x3e8

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private postStopSample()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 448
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 451
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private stopToneGenerator()V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 628
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 632
    :cond_0
    return-void
.end method

.method private updateSlider()V
    .locals 5

    .prologue
    .line 781
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_0

    .line 782
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 783
    .local v2, "volume":I
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 784
    .local v0, "lastAudibleVolume":I
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 785
    .local v1, "mute":Z
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    invoke-virtual {v3, v2, v0, v1}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    .line 787
    .end local v0    # "lastAudibleVolume":I
    .end local v1    # "mute":Z
    .end local v2    # "volume":I
    :cond_0
    return-void
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 718
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 719
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 720
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    .line 721
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 722
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 308
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 337
    const-string v0, "SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid SeekBarVolumizer message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    :goto_0
    return v5

    .line 316
    :pswitch_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 317
    iput-boolean v5, p0, Landroid/preference/SeekBarVolumizer;->isRingerUpdatedToAudio:Z

    .line 319
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 321
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 322
    :cond_1
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 323
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 328
    :pswitch_1
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onStartSample()V

    goto :goto_0

    .line 331
    :pswitch_2
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onStopSample()V

    goto :goto_0

    .line 334
    :pswitch_3
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onInitSample()V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public muteVolume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 725
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    .line 726
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 727
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 728
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    .line 729
    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 736
    :goto_0
    return-void

    .line 731
    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 732
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 733
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    .line 734
    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 12
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    const/4 v11, 0x5

    const/16 v10, 0x8

    const/4 v9, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 529
    if-eqz p3, :cond_2

    .line 530
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v4, v9, :cond_4

    .line 531
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->getImpliedMediaVolumeLevel(I)I

    move-result p2

    .line 535
    :goto_0
    const-string v4, "SeekBarVolumizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onProgressChanged : stream = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", progress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v4, v8, :cond_0

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v4, v10, :cond_0

    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v4

    if-nez v4, :cond_0

    .line 538
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->startSample()V

    .line 540
    :cond_0
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->stopToneGenerator()V

    .line 542
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 543
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_SupportPhoneProfile"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 544
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mDisplayType:I

    if-ne v4, v8, :cond_1

    .line 545
    if-ge p2, v8, :cond_1

    .line 546
    const/4 p2, 0x1

    .line 550
    :cond_1
    invoke-virtual {p0, p2}, Landroid/preference/SeekBarVolumizer;->setSeekBarVolume(I)V

    .line 614
    :goto_1
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v4, v8, :cond_2

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v4, v10, :cond_2

    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v4

    if-nez v4, :cond_2

    .line 616
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->startSample()V

    .line 620
    :cond_2
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v4, :cond_3

    .line 621
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v4, p1, p2, p3}, Landroid/preference/SeekBarVolumizer$Callback;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 623
    :cond_3
    return-void

    .line 533
    :cond_4
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->getImpliedLevel(I)I

    move-result p2

    goto :goto_0

    .line 551
    :cond_5
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v4, v11, :cond_8

    .line 552
    if-nez p2, :cond_6

    .line 553
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 555
    :cond_6
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v11, p2, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 556
    if-nez p2, :cond_7

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-nez v4, :cond_7

    iget-boolean v4, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-nez v4, :cond_7

    .line 557
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 559
    :cond_7
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto :goto_1

    .line 561
    :cond_8
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v4, v8, :cond_e

    .line 562
    const-string v4, "SeekBarVolumizer"

    const-string v5, "******onProgressChanged*****"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v4, :cond_9

    .line 564
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v4, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 566
    :cond_9
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v8, p2, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 569
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 570
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "opPackageName":Ljava/lang/String;
    if-eqz v2, :cond_b

    :try_start_0
    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 574
    :cond_a
    const-string v4, "SeekBarVolumizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isRinging : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string v4, "SeekBarVolumizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isOffhook : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const-string v4, "SeekBarVolumizer"

    const-string v5, "don\'t play STREAM_SYSTEM in volumepreference."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_2
    const-string v4, "SeekBarVolumizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onProgressChanged : AudioManager.STREAM_SYSTEM["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 579
    :cond_b
    :try_start_1
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v4

    if-nez v4, :cond_d

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-eq v4, p2, :cond_d

    .line 580
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/16 v5, 0x64

    int-to-float v6, p2

    invoke-virtual {v4, v5, v6}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 581
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/preference/SeekBarVolumizer;->mSystemSampleStarted:Z

    .line 582
    const-string v4, "SeekBarVolumizer"

    const-string/jumbo v5, "sample : playSoundEffect()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_c
    :goto_3
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "SeekBarVolumizer"

    const-string v5, "ITelephony threw RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 583
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_d
    :try_start_2
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-ne v4, p2, :cond_c

    .line 584
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/preference/SeekBarVolumizer;->mSystemSampleStarted:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 592
    .end local v1    # "opPackageName":Ljava/lang/String;
    .end local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_e
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v4, v10, :cond_10

    .line 593
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "volume_waiting_tone"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 597
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v4, :cond_f

    .line 598
    new-instance v4, Landroid/media/ToneGenerator;

    invoke-direct {v4, v10, v7}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v4, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 599
    :cond_f
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-int/lit8 v6, p2, -0x2

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    .line 600
    .local v3, "volFloat":F
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v6, "situation=15;device=0"

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v3

    invoke-virtual {v4, v5}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 601
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v5, 0x16

    const/16 v6, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 602
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto/16 :goto_1

    .line 603
    .end local v3    # "volFloat":F
    :cond_10
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v4, v9, :cond_12

    .line 604
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v4, v9, :cond_11

    .line 605
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v4, v9, p2, v7}, Landroid/media/SamsungAudioManager;->setFineVolume(III)V

    .line 606
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto/16 :goto_1

    .line 608
    :cond_11
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto/16 :goto_1

    .line 611
    :cond_12
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto/16 :goto_1
.end method

.method public onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 2
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    .prologue
    .line 746
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 747
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 748
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 749
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 751
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 1
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    .prologue
    .line 739
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 740
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    .line 741
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 743
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 642
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 645
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-boolean v4, p0, Landroid/preference/SeekBarVolumizer;->mSystemSampleStarted:Z

    if-nez v4, :cond_1

    .line 646
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 647
    .local v3, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, "opPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/preference/SeekBarVolumizer;->getImpliedLevel(I)I

    move-result v2

    .line 650
    .local v2, "progress":I
    if-eqz v3, :cond_2

    :try_start_0
    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 652
    :cond_0
    const-string v4, "SeekBarVolumizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onStopTrackingTouch]isRinging : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string v4, "SeekBarVolumizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onStopTrackingTouch]isOffhook : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string v4, "SeekBarVolumizer"

    const-string v5, "[onStopTrackingTouch]don\'t play STREAM_SYSTEM in volumepreference."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .end local v1    # "opPackageName":Ljava/lang/String;
    .end local v2    # "progress":I
    .end local v3    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_0
    return-void

    .line 656
    .restart local v1    # "opPackageName":Ljava/lang/String;
    .restart local v2    # "progress":I
    .restart local v3    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_2
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 657
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/16 v5, 0x64

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 658
    const-string v4, "SeekBarVolumizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onStopTrackingTouch]sample : playSoundEffect() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "SeekBarVolumizer"

    const-string v5, "ITelephony threw RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public revertVolume()V
    .locals 5

    .prologue
    const/high16 v4, 0x4000000

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 495
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 496
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_waiting_tone"

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 514
    :goto_0
    return-void

    .line 497
    :cond_0
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 498
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v2, :cond_2

    .line 499
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v1, :cond_1

    .line 500
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 501
    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 503
    :cond_2
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 504
    :cond_3
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 505
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalSystemVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 507
    :cond_4
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    if-nez v0, :cond_6

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v2, :cond_6

    .line 508
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v1, :cond_5

    .line 509
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 510
    :cond_5
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalLastAudibleStreamVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 512
    :cond_6
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0
.end method

.method public setDisplayType(I)V
    .locals 3
    .param p1, "displayType"    # I

    .prologue
    .line 302
    const-string v0, "SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mDisplayType:I

    .line 304
    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 236
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 239
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 240
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 241
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 247
    :goto_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 248
    return-void

    .line 241
    :cond_0
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 244
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->updateSeekBar()V

    goto :goto_1
.end method

.method public setSeekBarVolume(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 297
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->isRingerUpdatedToAudio:Z

    .line 299
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 480
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SeekBarVolumizer.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 482
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 483
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 484
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 485
    new-instance v1, Landroid/preference/SeekBarVolumizer$Observer;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Landroid/preference/SeekBarVolumizer$Observer;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    .line 486
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 489
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    invoke-virtual {v1, v5}, Landroid/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 490
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 491
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mRingtoneChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public startSample()V
    .locals 6

    .prologue
    .line 684
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 685
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, "opPackageName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 688
    :try_start_0
    const-string v3, "SeekBarVolumizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRinging : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v3, "SeekBarVolumizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOffhook : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    :cond_0
    const-string v3, "SeekBarVolumizer"

    const-string v4, "don\'t play ringtone in volumepreference: return called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SeekBarVolumizer"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    .line 464
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->stopToneGenerator()V

    .line 465
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 467
    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 469
    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 470
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 471
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mRingtoneChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 472
    :cond_2
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 473
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 474
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 475
    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 476
    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    goto :goto_0
.end method

.method public stopSample()V
    .locals 0

    .prologue
    .line 710
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    .line 711
    return-void
.end method

.method protected updateSeekBar()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 257
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    .line 258
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    .line 263
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    if-eq v1, v5, :cond_1

    .line 264
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    if-nez v1, :cond_2

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eq v1, v4, :cond_2

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    if-eq v1, v5, :cond_2

    .line 267
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 268
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 270
    :cond_2
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-ne v1, v4, :cond_3

    .line 271
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v1, v4}, Landroid/media/SamsungAudioManager;->getFineVolume(I)I

    move-result v0

    .line 272
    .local v0, "media_volume":I
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->getImpliedMediaVolumeLevel(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 273
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-eq v1, v0, :cond_0

    .line 274
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    mul-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 275
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->getImpliedMediaVolumeLevel(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto :goto_0

    .line 278
    .end local v0    # "media_volume":I
    :cond_3
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 279
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 281
    :cond_4
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->getImpliedLevel(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 282
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 283
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_5

    .line 284
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 289
    :goto_1
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->getImpliedLevel(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto/16 :goto_0

    .line 287
    :cond_5
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1
.end method
