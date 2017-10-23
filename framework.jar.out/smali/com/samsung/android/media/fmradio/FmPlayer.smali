.class public Lcom/samsung/android/media/fmradio/FmPlayer;
.super Ljava/lang/Object;
.source "FmPlayer.java"


# static fields
.field public static final AUDIO_MODE_MONO:I = 0x8

.field public static final AUDIO_MODE_STEREO:I = 0x9

.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "FmPlayer"

.field public static final OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final OFF_BATTERY_LOW:I = 0x7

.field public static final OFF_CALL_ACTIVE:I = 0x1

.field public static final OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final OFF_NORMAL:I = 0x0

.field public static final OFF_PAUSE_COMMAND:I = 0x5

.field public static final OFF_STOP_COMMAND:I = 0x4

.field static mContext:Landroid/content/Context;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sput-object p1, Lcom/samsung/android/media/fmradio/FmPlayer;->mContext:Landroid/content/Context;

    .line 83
    const-string v0, "FMPlayer"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    .line 86
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Player created :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->log(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method private checkBusy()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 671
    const/4 v0, 0x0

    .line 673
    .local v0, "code":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isBusy()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 678
    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 679
    new-instance v2, Lcom/samsung/android/media/fmradio/FmPlayerScanningException;

    const-string v3, "Player is scanning channel"

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "Player is busy in scanning. Use cancelScan to stop scanning"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/media/fmradio/FmPlayerScanningException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 674
    :catch_0
    move-exception v1

    .line 675
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0

    .line 685
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private checkOnStatus()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->isRadioEnabled()Z

    move-result v0

    .line 657
    .local v0, "val":Z
    if-nez v0, :cond_0

    .line 658
    new-instance v1, Lcom/samsung/android/media/fmradio/FmPlayerNotEnabledException;

    const-string v2, "Player is not ON.Call on() method to start player"

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "Player is not ON. use method on() to switch on FM player"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/media/fmradio/FmPlayerNotEnabledException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 663
    :cond_0
    return-void
.end method

.method private remoteError(Landroid/os/RemoteException;)V
    .locals 3
    .param p1, "e"    # Landroid/os/RemoteException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 471
    new-instance v0, Lcom/samsung/android/media/fmradio/FmPlayerNotEnabledException;

    const-string v1, "Radio service is not running restart the phone."

    invoke-virtual {p1}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/fmradio/FmPlayerNotEnabledException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/samsung/android/media/fmradio/FmEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/media/fmradio/FmEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 734
    if-nez p1, :cond_0

    .line 741
    :goto_0
    return-void

    .line 737
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    iget-object v2, p1, Lcom/samsung/android/media/fmradio/FmEventListener;->callback:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public cancelAFSwitching()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->cancelAFSwitching()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public cancelScan()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->cancelScan()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 436
    :goto_0
    return v1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 436
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelSeek()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 551
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->cancelSeek()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_0
    return-void

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public configureSoftmute(III)V
    .locals 2
    .param p1, "minRssi"    # I
    .param p2, "maxRssi"    # I
    .param p3, "maxAttenuation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 812
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setSoftMuteControl(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :goto_0
    return-void

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public disableRadio()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v1, 0x0

    .line 212
    .local v1, "val":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->off()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 216
    :goto_0
    return v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public enableRadio()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->isAirPlaneMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    new-instance v4, Lcom/samsung/android/media/fmradio/AirPlaneModeEnabledException;

    const-string v5, "AirPlane mode is on."

    new-instance v6, Ljava/lang/Throwable;

    const-string v7, "AirPlane mode is on."

    invoke-direct {v6, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/media/fmradio/AirPlaneModeEnabledException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 102
    :cond_0
    const/4 v2, 0x0

    .line 103
    .local v2, "val":Z
    const-string v4, "factory"

    const-string/jumbo v5, "ro.factory.factory_binary"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 105
    .local v1, "isFactoryBinary":Z
    if-eqz v1, :cond_1

    .line 107
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->on_in_testmode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    move v3, v2

    .line 133
    .end local v2    # "val":Z
    .local v3, "val":Z
    :goto_1
    return v3

    .line 108
    .end local v3    # "val":Z
    .restart local v2    # "val":Z
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->isTvOutPlugged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    new-instance v4, Lcom/samsung/android/media/fmradio/TvOutConnectedException;

    const-string v5, "TV out is on"

    new-instance v6, Ljava/lang/Throwable;

    const-string v7, "TV out is on."

    invoke-direct {v6, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/media/fmradio/TvOutConnectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->isHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_3

    .line 120
    new-instance v4, Lcom/samsung/android/media/fmradio/HeadsetNotConnectedException;

    const-string v5, "Headset is not presents."

    new-instance v6, Ljava/lang/Throwable;

    const-string v7, "Headset is not presents."

    invoke-direct {v6, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/media/fmradio/HeadsetNotConnectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 125
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->on()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 129
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->isBatteryLow()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 130
    new-instance v4, Lcom/samsung/android/media/fmradio/LowBatteryException;

    const-string v5, "Battery is low."

    new-instance v6, Ljava/lang/Throwable;

    const-string v7, "Batterys is low."

    invoke-direct {v6, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/media/fmradio/LowBatteryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 126
    :catch_1
    move-exception v0

    .line 127
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_2

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    move v3, v2

    .line 133
    .end local v2    # "val":Z
    .restart local v3    # "val":Z
    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 822
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 823
    iput-object v0, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 824
    iput-object v0, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    .line 825
    return-void
.end method

.method public getCurrentChannel()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkOnStatus()V

    .line 565
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkBusy()V

    .line 566
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getCurrentChannel()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 570
    :goto_0
    return-wide v2

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 570
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getLastScanResult()[J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 640
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->isScanning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    :goto_0
    return-object v1

    .line 643
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getLastScanResult()[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getMaxVolume()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 624
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getMaxVolume()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 628
    :goto_0
    return-wide v2

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 628
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getPlayedFreq()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getPlayedFreq()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 313
    :goto_0
    return-wide v2

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 313
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getTunningParameter(Ljava/lang/String;I)I
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 865
    move v1, p2

    .line 866
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->isRadioEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 868
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getIntegerTunningParameter(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 873
    :cond_0
    :goto_0
    return v1

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getTunningParameter(Ljava/lang/String;J)J
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 900
    move-wide v2, p2

    .line 901
    .local v2, "val":J
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->isRadioEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getLongTunningParameter(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 908
    :cond_0
    :goto_0
    return-wide v2

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getTunningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 935
    move-object v1, p2

    .line 936
    .local v1, "val":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->isRadioEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 938
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 943
    :cond_0
    :goto_0
    return-object v1

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getVolume()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 596
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getVolume()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 601
    :goto_0
    return-wide v2

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 601
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public isAirPlaneMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isAirPlaneMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 169
    :goto_0
    return v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 169
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAlternateFrequencyEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 720
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isAFEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 724
    :goto_0
    return v1

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 724
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBatteryLow()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isBatteryLow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 181
    :goto_0
    return v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 181
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHeadsetPlugged()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isHeadsetPlugged()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 145
    :goto_0
    return v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 145
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRadioDataSystemEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 694
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isRDSEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 698
    :goto_0
    return v1

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 698
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRadioDomainNameSystemEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 708
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isDNSEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 712
    :goto_0
    return v1

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 712
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRadioEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 230
    :goto_0
    return v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 230
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScanning()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isScanning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 450
    :goto_0
    return v1

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 450
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSeeking()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isSeeking()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 465
    :goto_0
    return v1

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 465
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSoftmuteEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 792
    const/4 v1, 0x0

    .line 794
    .local v1, "val":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getSoftMuteMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 798
    :goto_0
    return v1

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public isTvOutPlugged()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isTvOutPlugged()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 157
    :goto_0
    return v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 157
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, "FmPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public removeListener(Lcom/samsung/android/media/fmradio/FmEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/media/fmradio/FmEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 751
    if-nez p1, :cond_0

    .line 758
    :goto_0
    return-void

    .line 754
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    iget-object v2, p1, Lcom/samsung/android/media/fmradio/FmEventListener;->callback:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->removeListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public searchAll()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkOnStatus()V

    .line 323
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkBusy()V

    .line 324
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->searchAll()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 328
    :goto_0
    return-wide v2

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 328
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public searchDown()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkOnStatus()V

    .line 260
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkBusy()V

    .line 261
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->searchDown()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 265
    :goto_0
    return-wide v2

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 265
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public searchUp()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkOnStatus()V

    .line 295
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkBusy()V

    .line 296
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->searchUp()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 300
    :goto_0
    return-wide v2

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 300
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public seekDown()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkOnStatus()V

    .line 536
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkBusy()V

    .line 537
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->seekDown()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 541
    :goto_0
    return-wide v2

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 541
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public seekUp()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkOnStatus()V

    .line 519
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkBusy()V

    .line 520
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->seekUp()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 524
    :goto_0
    return-wide v2

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 524
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public setAlternateFrequencyEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkOnStatus()V

    .line 380
    if-eqz p1, :cond_0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->enableAF()V

    .line 387
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->disableAF()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setAudioMode(I)V
    .locals 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkOnStatus()V

    .line 279
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setStereo()V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setMono()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setBand(I)V
    .locals 2
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setBand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setChannelSpacing(I)V
    .locals 2
    .param p1, "spacing"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setChannelSpacing(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setFMIntenna(Z)V
    .locals 2
    .param p1, "setFMIntenna"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkOnStatus()V

    .line 766
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setFMIntenna(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :goto_0
    return-void

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setInternetStreamingEnabled(Z)V
    .locals 2
    .param p1, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 835
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setInternetStreamingMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :goto_0
    return-void

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setMuteEnabled(Z)Z
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkOnStatus()V

    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->mute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    const/4 v1, 0x1

    .line 507
    :goto_0
    return v1

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 507
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadioDataSystemEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkOnStatus()V

    .line 342
    if-eqz p1, :cond_0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->enableRDS()V

    .line 349
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->disableRDS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setRadioDomainNameSystemEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkOnStatus()V

    .line 361
    if-eqz p1, :cond_0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->enableDNS()V

    .line 368
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->disableDNS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setRecordMode(Z)V
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 612
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setRecordMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setSoftmuteEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 780
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setSoftmute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_0
    return-void

    .line 781
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setSpeakerEnabled(Z)Z
    .locals 3
    .param p1, "speakerOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting speakerOn = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/media/fmradio/FmPlayer;->log(Ljava/lang/String;)V

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setSpeakerOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    .line 200
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0

    .line 200
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setTunningParameter(Ljava/lang/String;I)V
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkOnStatus()V

    .line 851
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setIntegerTunningParameter(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :goto_0
    return-void

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setTunningParameter(Ljava/lang/String;J)V
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 884
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkOnStatus()V

    .line 886
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setLongTunningParameter(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :goto_0
    return-void

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setTunningParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 919
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkOnStatus()V

    .line 921
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    :goto_0
    return-void

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setVolume(J)V
    .locals 3
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setVolume(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public startScan()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkOnStatus()V

    .line 243
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkBusy()V

    .line 244
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->scan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public tune(J)Z
    .locals 3
    .param p1, "frequency"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/FmPlayerException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/FmPlayer;->checkOnStatus()V

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/FmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->tune(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    const/4 v1, 0x1

    .line 490
    :goto_0
    return v1

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/FmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 490
    const/4 v1, 0x0

    goto :goto_0
.end method
