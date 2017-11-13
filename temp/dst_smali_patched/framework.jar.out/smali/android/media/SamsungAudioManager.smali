.class public Landroid/media/SamsungAudioManager;
.super Ljava/lang/Object;
.source "SamsungAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SamsungAudioManager$AudioLog;
    }
.end annotation


# static fields
.field public static final ACTION_SPLIT_SOUND:Ljava/lang/String; = "com.sec.android.intent.action.SPLIT_SOUND"

.field public static final BACKGROUND_MUSIC_ID_WIZARD:I = 0x0

.field public static final FLAG_DISMISS_UI_WARNINGS:I = 0x10000000

.field public static final FLAG_KEY_ACTION_DOWN:I = 0x20000000

.field public static final FLAG_SKIP_RINGER_MODES:I = 0x4000000

.field public static final FLAG_UDATE_STATE:I = 0x2000000

.field public static final FLAG_UI_EXPANDED:I = 0x8000000

.field public static final FM_RADIO:Ljava/lang/String; = "FM_RADIO"

.field public static final FORCE_EARPIECE:I = 0xe

.field public static final FORCE_NONE:I = 0x0

.field private static final GAIN_MAX:F = 1.0f

.field private static final GAIN_MIN:F = 0.0f

.field public static final MYSPACE_EFFECT_CENTER_TO_RIGHT:I = 0x1

.field public static final MYSPACE_EFFECT_DELAY:I = 0x32

.field public static final MYSPACE_EFFECT_DIRECT_LEFT_TO_CENTER:I = 0x2

.field public static final MYSPACE_EFFECT_LEFT_TO_CENTER:I = 0x0

.field public static final MYSPACE_EFFECT_MAX_TIMED_OUT:I = 0x5dc

.field public static final MYSPACE_EFFECT_TIMED_OUT:I = 0x3e8

.field public static final MYSPACE_FADEIN_FOR_MUSIC:I = 0x2

.field public static final MYSPACE_FADEIN_FOR_RINGTONE:I = 0x3

.field public static final MYSPACE_FADEOUT_FOR_NOTIFICATION:I = 0x0

.field public static final MYSPACE_FADEOUT_FOR_RINGTONE:I = 0x1

.field public static final SAMSUNG_EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final SAMSUNG_EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final SAMSUNG_VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field public static final STREAM_BLUETOOTH_SCO:I = 0x4

.field public static final STREAM_FM_RADIO:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x5

.field public static final STREAM_VIDEO_CALL:I = 0x2

.field public static final STREAM_VOICENOTE:I = 0x3

.field public static final SUPPORT_AOBLE:Ljava/lang/String; = "android.bluetooth.aoble.extra.SUPPORT_AOBLE"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field mMySpaceManager:Landroid/media/MySpaceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "SamsungAudioManager"

    sput-object v0, Landroid/media/SamsungAudioManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MySpaceManager;

    invoke-direct {v0}, Landroid/media/MySpaceManager;-><init>()V

    iput-object v0, p0, Landroid/media/SamsungAudioManager;->mMySpaceManager:Landroid/media/MySpaceManager;

    iput-object p1, p0, Landroid/media/SamsungAudioManager;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private static clampGainOrLevel(F)F
    .locals 1
    .param p0, "gainOrLevel"    # F

    .prologue
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public static getDeviceOut(I)I
    .locals 1
    .param p0, "typeDevice"    # I

    .prologue
    invoke-static {p0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    return v0
.end method

.method public static getVideoCallMode()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    return v0
.end method

.method public static stream(I)I
    .locals 1
    .param p0, "samsung_stream"    # I

    .prologue
    const/4 v0, -0x1

    .local v0, "valid_stream":I
    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getAvailableDeviceMaskForQuickSoundPath()I
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "device_mask_QSP"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "strReturn":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const v1, 0x7fffffff

    goto :goto_0
.end method

.method public getCurrentDeviceType()I
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "audioParam;outDevice"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Landroid/media/SamsungAudioManager;->TAG:Ljava/lang/String;

    const-string v2, "isDeviceTypeActive : Can\'t get outDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v1

    goto :goto_0
.end method

.method public getFineMediaVolume()I
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "fine_volume"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "strReturn":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFineVolume(I)I
    .locals 5
    .param p1, "streamType"    # I

    .prologue
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad stream type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "fine_volume_v2"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "strReturn":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isHMTmounted()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "HMTstate"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "strReturn":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRemoteSubmixOn()Z
    .locals 2

    .prologue
    const-string v1, "audioParam;split_sound_for_call"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "isRemoteSubmixOn":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSafeMediaVolumeDeviceOn()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "SafeMediaVolumeDevice"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "strReturn":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSplitSoundOn()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "SplitSound"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "strReturn":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSplitSoundRunning()Z
    .locals 2

    .prologue
    const-string v1, "audioParam;split_sound_for_call"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "isRemoteSubmixOn":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsingAudio(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUseAudio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "strIsUsingAudio":Ljava/lang/String;
    const-string v2, "true"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public playHighampereGame(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "audioParam;High_ampere_game=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "audioParam;High_ampere_game=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playMySpaceEffect(I)I
    .locals 5
    .param p1, "effectType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .local v0, "GLOBAL_EFFECT_ENABLED":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/SamsungAudioManager;->isSplitSoundOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/media/SamsungAudioManager;->isHMTmounted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/SamsungAudioManager;->mMySpaceManager:Landroid/media/MySpaceManager;

    invoke-virtual {v1}, Landroid/media/MySpaceManager;->checkEnableCondition()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v1, p0, Landroid/media/SamsungAudioManager;->mMySpaceManager:Landroid/media/MySpaceManager;

    iget-object v2, p0, Landroid/media/SamsungAudioManager;->mMySpaceManager:Landroid/media/MySpaceManager;

    iget-object v2, v2, Landroid/media/MySpaceManager;->mRingAttributes:Landroid/media/AudioAttributes;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/media/MySpaceManager;->playMySpaceEffect(Landroid/media/AudioAttributes;I)V

    sget-object v1, Landroid/media/SamsungAudioManager;->TAG:Ljava/lang/String;

    const-string v2, "playMySpaceEffect RING FADE OUT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAppVolume(IF)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "trackVolume"    # F

    .prologue
    invoke-static {p2}, Landroid/media/SamsungAudioManager;->clampGainOrLevel(F)F

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appVolume_pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";appVolume_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public setAppVolume(Ljava/lang/String;F)V
    .locals 2
    .param p1, "packageNames"    # Ljava/lang/String;
    .param p2, "trackVolume"    # F

    .prologue
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Landroid/media/SamsungAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "packageNames is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/media/SamsungAudioManager;->clampGainOrLevel(F)F

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appVolume_packagenames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";appVolume_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFineMediaVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    iget-object v0, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fine_volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    return-void
.end method

.method public setFineVolume(III)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/media/SamsungAudioManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/SamsungAudioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFineVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SamsungAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fine_volume_v2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fine_volume_v2_flag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    return-void
.end method

.method public setForceUseForMedia(I)V
    .locals 3
    .param p1, "forced_config"    # I

    .prologue
    iget-object v0, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setForceUseForMedia="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    return-void
.end method

.method public updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sampleRate"    # I

    .prologue
    iget-object v0, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UHQ_BT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    return-void
.end method
