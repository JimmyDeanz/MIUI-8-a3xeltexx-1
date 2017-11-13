.class public Lcom/android/server/FMPlayerNative;
.super Ljava/lang/Object;
.source "FMPlayerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FMPlayerNative$FmReceiverCallback;,
        Lcom/android/server/FMPlayerNative$PIECCData;,
        Lcom/android/server/FMPlayerNative$RTPlusData;,
        Lcom/android/server/FMPlayerNative$RDSData;
    }
.end annotation


# static fields
.field private static AF_THRESHOLD:I = 0x0

.field private static AF_TOLERANCE:I = 0x0

.field private static final APP_DRI_FRE_FACTOR:I = 0xa

.field private static COS:I = 0x0

.field private static final DEBUG:Z

.field private static DEConstant:I = 0x0

.field private static FrequencyOffset_th:I = 0x0

.field private static IsEnabled:Z = false

.field private static IsSoftmute:Z = false

.field private static Max_Channel:J = 0x0L

.field private static Min_Channel:J = 0x0L

.field private static NoisePower_th:I = 0x0

.field private static PilotPower_th:I = 0x0

.field public static RDSdata:Lcom/android/server/FMPlayerNative$RDSData; = null

.field private static RSSI_SNR:I = 0x0

.field private static RSSI_th:I = 0x0

.field private static SeekIsCancel:Z = false

.field private static SeekIsRounding:Z = false

.field private static SeekIsWorking:Z = false

.field private static final TAG:Ljava/lang/String; = "FMPlayerNative_brcm"

.field private static af_mode:I

.field private static bIsNewConnection:Z

.field private static current_rssi:J

.field private static current_snr:J

.field private static mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

.field private static mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

.field private static mContext:Landroid/content/Context;

.field private static mService:Lcom/android/server/FMRadioService;

.field private static mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

.field private static rdsFeatures:I

.field private static rds_mode:I

.field private static region:I

.field private static settedVol:J

.field private static tuned_freq:J


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 45
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUG:Z

    .line 47
    sput-object v3, Lcom/android/server/FMPlayerNative;->mContext:Landroid/content/Context;

    .line 48
    sput-object v3, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    .line 49
    sput-object v3, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    .line 50
    sput-object v3, Lcom/android/server/FMPlayerNative;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    .line 52
    sput-object v3, Lcom/android/server/FMPlayerNative;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    .line 58
    const-wide/16 v4, 0x222e

    sput-wide v4, Lcom/android/server/FMPlayerNative;->Min_Channel:J

    .line 59
    const-wide/16 v4, 0x2a30

    sput-wide v4, Lcom/android/server/FMPlayerNative;->Max_Channel:J

    .line 60
    sput v1, Lcom/android/server/FMPlayerNative;->region:I

    .line 61
    sput v2, Lcom/android/server/FMPlayerNative;->DEConstant:I

    .line 63
    sput-boolean v2, Lcom/android/server/FMPlayerNative;->IsEnabled:Z

    .line 64
    sput-boolean v2, Lcom/android/server/FMPlayerNative;->SeekIsWorking:Z

    .line 65
    sput-boolean v2, Lcom/android/server/FMPlayerNative;->SeekIsCancel:Z

    .line 66
    sput-boolean v2, Lcom/android/server/FMPlayerNative;->SeekIsRounding:Z

    .line 67
    sget-wide v0, Lcom/android/server/FMPlayerNative;->Min_Channel:J

    sput-wide v0, Lcom/android/server/FMPlayerNative;->tuned_freq:J

    .line 68
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/FMPlayerNative;->settedVol:J

    .line 69
    sput-wide v6, Lcom/android/server/FMPlayerNative;->current_rssi:J

    .line 70
    sput-wide v6, Lcom/android/server/FMPlayerNative;->current_snr:J

    .line 72
    sput v2, Lcom/android/server/FMPlayerNative;->rds_mode:I

    .line 73
    sput v2, Lcom/android/server/FMPlayerNative;->af_mode:I

    .line 75
    sput-object v3, Lcom/android/server/FMPlayerNative;->RDSdata:Lcom/android/server/FMPlayerNative$RDSData;

    .line 82
    sput-boolean v2, Lcom/android/server/FMPlayerNative;->IsSoftmute:Z

    .line 83
    sput-boolean v2, Lcom/android/server/FMPlayerNative;->bIsNewConnection:Z

    return-void

    :cond_0
    move v0, v2

    .line 45
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMPlayerNative;->mLocked:Z

    .line 269
    new-instance v0, Lcom/android/server/FMPlayerNative$1;

    invoke-direct {v0, p0}, Lcom/android/server/FMPlayerNative$1;-><init>(Lcom/android/server/FMPlayerNative;)V

    iput-object v0, p0, Lcom/android/server/FMPlayerNative;->mConnection:Landroid/content/ServiceConnection;

    .line 92
    sput-object p1, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    .line 93
    invoke-virtual {p1}, Lcom/android/server/FMRadioService;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMPlayerNative;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method static synthetic access$000()Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/server/FMPlayerNative;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    return-object v0
.end method

.method static synthetic access$002(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    .locals 0
    .param p0, "x0"    # Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    .prologue
    .line 42
    sput-object p0, Lcom/android/server/FMPlayerNative;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    return-object p0
.end method

.method static synthetic access$1002(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 42
    sput-wide p0, Lcom/android/server/FMPlayerNative;->current_rssi:J

    return-wide p0
.end method

.method static synthetic access$1100()J
    .locals 2

    .prologue
    .line 42
    sget-wide v0, Lcom/android/server/FMPlayerNative;->Min_Channel:J

    return-wide v0
.end method

.method static synthetic access$1200()J
    .locals 2

    .prologue
    .line 42
    sget-wide v0, Lcom/android/server/FMPlayerNative;->Max_Channel:J

    return-wide v0
.end method

.method static synthetic access$200()Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/broadcom/fm/fmreceiver/IFmReceiverService;)Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    .locals 0
    .param p0, "x0"    # Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    .prologue
    .line 42
    sput-object p0, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    return-object p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 42
    sput-boolean p0, Lcom/android/server/FMPlayerNative;->bIsNewConnection:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->IsEnabled:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 42
    sput-boolean p0, Lcom/android/server/FMPlayerNative;->IsEnabled:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/FMPlayerNative;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/FMPlayerNative;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/FMPlayerNative;->turnOnRadio()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700()Lcom/android/server/FMRadioService;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/FMPlayerVolumeTable;)Lcom/android/server/FMPlayerVolumeTable;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMPlayerVolumeTable;

    .prologue
    .line 42
    sput-object p0, Lcom/android/server/FMPlayerNative;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    return-object p0
.end method

.method static synthetic access$900()J
    .locals 2

    .prologue
    .line 42
    sget-wide v0, Lcom/android/server/FMPlayerNative;->tuned_freq:J

    return-wide v0
.end method

.method static synthetic access$902(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 42
    sput-wide p0, Lcom/android/server/FMPlayerNative;->tuned_freq:J

    return-wide p0
.end method

.method private initValue()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 226
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "initValue "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sput-boolean v2, Lcom/android/server/FMPlayerNative;->IsEnabled:Z

    .line 229
    sput-boolean v2, Lcom/android/server/FMPlayerNative;->SeekIsWorking:Z

    .line 230
    sput-boolean v2, Lcom/android/server/FMPlayerNative;->SeekIsCancel:Z

    .line 231
    sput-boolean v2, Lcom/android/server/FMPlayerNative;->SeekIsRounding:Z

    .line 232
    sget-wide v0, Lcom/android/server/FMPlayerNative;->Min_Channel:J

    sput-wide v0, Lcom/android/server/FMPlayerNative;->tuned_freq:J

    .line 233
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/FMPlayerNative;->settedVol:J

    .line 234
    sput-wide v4, Lcom/android/server/FMPlayerNative;->current_rssi:J

    .line 235
    sput-wide v4, Lcom/android/server/FMPlayerNative;->current_snr:J

    .line 237
    sput v2, Lcom/android/server/FMPlayerNative;->rds_mode:I

    .line 238
    sput v2, Lcom/android/server/FMPlayerNative;->af_mode:I

    .line 239
    const/16 v0, 0x44

    sput v0, Lcom/android/server/FMPlayerNative;->rdsFeatures:I

    .line 240
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMPlayerNative;->RDSdata:Lcom/android/server/FMPlayerNative$RDSData;

    .line 242
    const/16 v0, 0x6f

    sput v0, Lcom/android/server/FMPlayerNative;->RSSI_th:I

    .line 243
    const/16 v0, 0xa

    sput v0, Lcom/android/server/FMPlayerNative;->RSSI_SNR:I

    .line 244
    const/16 v0, 0x8

    sput v0, Lcom/android/server/FMPlayerNative;->COS:I

    .line 246
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNative;->getAF_th()I

    move-result v0

    sput v0, Lcom/android/server/FMPlayerNative;->AF_THRESHOLD:I

    .line 247
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNative;->getAFValid_th()I

    move-result v0

    sput v0, Lcom/android/server/FMPlayerNative;->AF_TOLERANCE:I

    .line 249
    new-instance v0, Lcom/android/server/FMPlayerVolumeTable;

    invoke-direct {v0}, Lcom/android/server/FMPlayerVolumeTable;-><init>()V

    sput-object v0, Lcom/android/server/FMPlayerNative;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    .line 250
    return-void
.end method

.method private setRdsMode(II)V
    .locals 5
    .param p1, "rdsMode"    # I
    .param p2, "afMode"    # I

    .prologue
    .line 1013
    const/4 v1, 0x2

    .line 1015
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 1016
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setRdsMode() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/FMPlayerNative;->RDSdata:Lcom/android/server/FMPlayerNative$RDSData;

    .line 1024
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget v3, Lcom/android/server/FMPlayerNative;->rdsFeatures:I

    sget v4, Lcom/android/server/FMPlayerNative;->AF_THRESHOLD:I

    invoke-interface {v2, p1, v3, p2, v4}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setRdsMode(IIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1030
    :goto_1
    if-eqz v1, :cond_0

    .line 1031
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRdsMode() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setRdsMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private turnOnRadio()J
    .locals 12

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 546
    const/4 v3, 0x2

    .line 548
    .local v3, "returnCode":I
    const-string/jumbo v8, "service.brcm.fm.start_mute"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "Softmute":Ljava/lang/String;
    const-string/jumbo v8, "off"

    sget-object v9, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SOFTMUTE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "255"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 552
    :cond_0
    const-string v8, "FMPlayerNative_brcm"

    const-string/jumbo v9, "on() Softmute disable."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    sput-boolean v10, Lcom/android/server/FMPlayerNative;->IsSoftmute:Z

    .line 555
    :try_start_0
    sget-object v8, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/16 v9, 0x60

    const-string v10, "com.sec.android.app.fm"

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->turnOnRadio(I[C)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 574
    :goto_0
    if-nez v3, :cond_6

    .line 576
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNative;->isLocked()Z

    move-result v8

    if-nez v8, :cond_1

    sget-boolean v8, Lcom/android/server/FMPlayerNative;->bIsNewConnection:Z

    if-eqz v8, :cond_1

    .line 577
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNative;->wait_lock()V

    .line 578
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/server/FMPlayerNative;->bIsNewConnection:Z

    .line 581
    :cond_1
    const/4 v2, 0x0

    .local v2, "retry":I
    :goto_1
    const/16 v8, 0xf

    if-ge v2, v8, :cond_5

    .line 582
    sget-boolean v8, Lcom/android/server/FMPlayerNative;->IsEnabled:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v8, v11, :cond_4

    .line 598
    .end local v2    # "retry":I
    :cond_2
    :goto_2
    return-wide v4

    .line 558
    :catch_0
    move-exception v1

    .line 559
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "FMPlayerNative_brcm"

    const-string/jumbo v9, "turnOnRadio() failed"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 562
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v8, "FMPlayerNative_brcm"

    const-string/jumbo v9, "on() Softmute enable."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    sput-boolean v11, Lcom/android/server/FMPlayerNative;->IsSoftmute:Z

    .line 565
    :try_start_2
    sget-object v8, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/16 v9, 0x160

    const-string v10, "com.sec.android.app.fm"

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->turnOnRadio(I[C)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    goto :goto_0

    .line 569
    :catch_1
    move-exception v1

    .line 570
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v8, "FMPlayerNative_brcm"

    const-string/jumbo v9, "turnOnRadio() failed"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 585
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "retry":I
    :cond_4
    const-wide/16 v8, 0x14

    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 581
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 588
    :cond_5
    sget-boolean v8, Lcom/android/server/FMPlayerNative;->IsEnabled:Z

    if-nez v8, :cond_2

    .line 589
    const-string v8, "FMPlayerNative_brcm"

    const-string/jumbo v9, "on() FMRadio of driver side is offed !!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    move-wide v4, v6

    .line 590
    goto :goto_2

    .line 592
    .end local v2    # "retry":I
    :catch_2
    move-exception v1

    .line 593
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v6, "FMPlayerNative_brcm"

    const-string/jumbo v7, "on() InterruptedException ::"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 597
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_6
    const-string v4, "FMPlayerNative_brcm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "turnOnRadio() is failed. result="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v6

    .line 598
    goto :goto_2
.end method


# virtual methods
.method cancelAFSwitching()V
    .locals 2

    .prologue
    .line 1089
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "cancelAFSwitching() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    return-void
.end method

.method public cancelSeek()V
    .locals 5

    .prologue
    .line 813
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 814
    const-string v2, "FMPlayerNative_brcm"

    const-string v3, "cancelSeek() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    sget-boolean v2, Lcom/android/server/FMPlayerNative;->SeekIsWorking:Z

    if-eqz v2, :cond_0

    .line 819
    const-string v2, "FMPlayerNative_brcm"

    const-string v3, "cancelSeek() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/FMPlayerNative;->SeekIsCancel:Z

    .line 822
    const/4 v1, 0x2

    .line 825
    .local v1, "returnCode":I
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->seekStationAbort()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 830
    :goto_1
    if-eqz v1, :cond_0

    .line 831
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelSeek() is failed. result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string v3, "cancelSeek() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public declared-synchronized connectService()V
    .locals 8

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    const-string v4, "FMPlayerNative_brcm"

    const-string v5, "connectService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 180
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_1

    .line 181
    const-string v4, "FMPlayerNative_brcm"

    const-string v5, "BluetoothAdapter is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :cond_1
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v3, "intent":Landroid/content/Intent;
    sget-object v4, Lcom/android/server/FMPlayerNative;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 203
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 205
    if-eqz v1, :cond_2

    sget-object v4, Lcom/android/server/FMPlayerNative;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/FMPlayerNative;->mConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    sget-object v7, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 206
    :cond_2
    const-string v4, "FMPlayerNative_brcm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not bind to IFmReceiverService with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 210
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v1    # "comp":Landroid/content/ComponentName;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_3
    :try_start_2
    sget-object v4, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/FMPlayerNative;->isLocked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNative;->wait_lock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v2

    .line 213
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "FMPlayerNative_brcm"

    const-string v5, "connectService() InterruptedException ::"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public disableAF()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1076
    sget v0, Lcom/android/server/FMPlayerNative;->af_mode:I

    if-nez v0, :cond_0

    .line 1077
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "disableAF() :: AF is already disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :goto_0
    return-void

    .line 1081
    :cond_0
    sput v1, Lcom/android/server/FMPlayerNative;->af_mode:I

    .line 1082
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isRDSEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/FMPlayerNative;->setRdsMode(II)V

    goto :goto_0

    .line 1085
    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/android/server/FMPlayerNative;->setRdsMode(II)V

    goto :goto_0
.end method

.method public disableDNS()V
    .locals 5

    .prologue
    .line 992
    const/4 v1, 0x2

    .line 994
    .local v1, "returnCode":I
    const-string v2, "FMPlayerNative_brcm"

    const-string v3, "disableDNS() start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 996
    const-string v2, "FMPlayerNative_brcm"

    const-string v3, "disableDNS() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setPiEccMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1007
    :goto_1
    if-eqz v1, :cond_0

    .line 1008
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableDNS() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string v3, "disableDNS() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public disableRDS()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1050
    sget v0, Lcom/android/server/FMPlayerNative;->rds_mode:I

    if-nez v0, :cond_0

    .line 1051
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "disableRDS() :: RDS is already disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :goto_0
    return-void

    .line 1055
    :cond_0
    sput v1, Lcom/android/server/FMPlayerNative;->rds_mode:I

    .line 1056
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAFEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1057
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/FMPlayerNative;->setRdsMode(II)V

    goto :goto_0

    .line 1059
    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/android/server/FMPlayerNative;->setRdsMode(II)V

    goto :goto_0
.end method

.method public declared-synchronized disconnectService()V
    .locals 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "disconnectService "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v0, Lcom/android/server/FMPlayerNative;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMPlayerNative;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableAF()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1063
    sget v0, Lcom/android/server/FMPlayerNative;->af_mode:I

    if-eqz v0, :cond_0

    .line 1064
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "enableAF() :: AF is already enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :goto_0
    return-void

    .line 1068
    :cond_0
    sput v1, Lcom/android/server/FMPlayerNative;->af_mode:I

    .line 1069
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isRDSEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1070
    invoke-direct {p0, v1, v1}, Lcom/android/server/FMPlayerNative;->setRdsMode(II)V

    goto :goto_0

    .line 1072
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/FMPlayerNative;->setRdsMode(II)V

    goto :goto_0
.end method

.method public enableDNS()V
    .locals 5

    .prologue
    .line 971
    const/4 v1, 0x2

    .line 973
    .local v1, "returnCode":I
    const-string v2, "FMPlayerNative_brcm"

    const-string v3, "enableDNS() start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 975
    const-string v2, "FMPlayerNative_brcm"

    const-string v3, "enableDNS() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setPiEccMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 986
    :goto_1
    if-eqz v1, :cond_0

    .line 987
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableDNS() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string v3, "enableDNS() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public enableRDS()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1037
    sget v0, Lcom/android/server/FMPlayerNative;->rds_mode:I

    if-eqz v0, :cond_0

    .line 1038
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "enableRDS() :: RDS is already enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :goto_0
    return-void

    .line 1042
    :cond_0
    sput v1, Lcom/android/server/FMPlayerNative;->rds_mode:I

    .line 1043
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAFEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1044
    invoke-direct {p0, v1, v1}, Lcom/android/server/FMPlayerNative;->setRdsMode(II)V

    goto :goto_0

    .line 1046
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/FMPlayerNative;->setRdsMode(II)V

    goto :goto_0
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

    .line 97
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 98
    sput-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    .line 99
    sput-object v0, Lcom/android/server/FMPlayerNative;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    .line 100
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/server/FMPlayerNative;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 343
    :try_start_1
    sget-object v1, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget-object v2, Lcom/android/server/FMPlayerNative;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->unregisterCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lcom/android/server/FMPlayerNative;->mCallback:Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNative;->disconnectService()V

    .line 351
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "FMPlayerNative_brcm"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 341
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAFRMSSISamples()I
    .locals 2

    .prologue
    .line 1647
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "getAFRMSSISamples() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    const/4 v0, 0x0

    return v0
.end method

.method public getAFRMSSIThreshold()I
    .locals 2

    .prologue
    .line 1638
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "getAFRMSSIThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    const/4 v0, 0x0

    return v0
.end method

.method public getAFValid_th()I
    .locals 2

    .prologue
    .line 1412
    const-string/jumbo v1, "service.brcm.fm.af_snrtolerance"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1414
    .local v0, "AF":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1415
    const-string v0, "7"

    .line 1418
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/FMPlayerNative;->AF_TOLERANCE:I

    .line 1420
    sget v1, Lcom/android/server/FMPlayerNative;->AF_TOLERANCE:I

    return v1
.end method

.method public getAF_th()I
    .locals 2

    .prologue
    .line 1393
    const-string/jumbo v1, "service.brcm.fm.af_snrthresh"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1395
    .local v0, "AF":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1396
    const-string v0, "12"

    .line 1399
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/FMPlayerNative;->AF_THRESHOLD:I

    .line 1401
    sget v1, Lcom/android/server/FMPlayerNative;->AF_THRESHOLD:I

    return v1
.end method

.method public getCFOTh12()I
    .locals 2

    .prologue
    .line 1611
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "getCFOTh12() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    const/4 v0, 0x0

    return v0
.end method

.method public getCnt_th()I
    .locals 1

    .prologue
    .line 1382
    sget v0, Lcom/android/server/FMPlayerNative;->COS:I

    return v0
.end method

.method public getCurrentChannel()J
    .locals 4

    .prologue
    .line 837
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 838
    const-string v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentChannel() tuned_freq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/FMPlayerNative;->tuned_freq:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_0
    sget-wide v0, Lcom/android/server/FMPlayerNative;->tuned_freq:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getCurrentRSSI()J
    .locals 6

    .prologue
    .line 1283
    sget-object v1, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v1, :cond_0

    .line 1284
    const-string v1, "FMPlayerNative_brcm"

    const-string v2, "getCurrentRSSI() mBcomService is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    sget-wide v2, Lcom/android/server/FMPlayerNative;->current_rssi:J

    .line 1295
    :goto_0
    return-wide v2

    .line 1289
    :cond_0
    const-wide/16 v2, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->getCurrentRssi()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/FMPlayerNative;->current_rssi:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    :goto_1
    const-string v1, "FMPlayerNative_brcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentRSSI() current_rssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/android/server/FMPlayerNative;->current_rssi:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    sget-wide v2, Lcom/android/server/FMPlayerNative;->current_rssi:J

    goto :goto_0

    .line 1290
    :catch_0
    move-exception v0

    .line 1291
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FMPlayerNative_brcm"

    const-string v2, "getCurrentRSSI() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getCurrentSNR()J
    .locals 6

    .prologue
    .line 1299
    sget-object v1, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v1, :cond_0

    .line 1300
    const-string v1, "FMPlayerNative_brcm"

    const-string v2, "getCurrentSNR() mBcomService is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    sget-wide v2, Lcom/android/server/FMPlayerNative;->current_snr:J

    .line 1311
    :goto_0
    return-wide v2

    .line 1305
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->getCurrentSNR()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/FMPlayerNative;->current_snr:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    :goto_1
    const-string v1, "FMPlayerNative_brcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentSNR() current_snr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/android/server/FMPlayerNative;->current_snr:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    sget-wide v2, Lcom/android/server/FMPlayerNative;->current_snr:J

    goto :goto_0

    .line 1306
    :catch_0
    move-exception v0

    .line 1307
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FMPlayerNative_brcm"

    const-string v2, "getCurrentSNR() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getFrequencyOffsetThreshold()I
    .locals 1

    .prologue
    .line 1545
    sget v0, Lcom/android/server/FMPlayerNative;->FrequencyOffset_th:I

    return v0
.end method

.method public getGoodChannelRMSSIThreshold()I
    .locals 2

    .prologue
    .line 1656
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "getGoodChannelRMSSIThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const/4 v0, 0x0

    return v0
.end method

.method public getHybridSearch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1665
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "getHybridSearch() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxVolume()J
    .locals 2

    .prologue
    .line 1247
    const-wide/16 v0, 0xf

    return-wide v0
.end method

.method public getNoisePowerThreshold()I
    .locals 1

    .prologue
    .line 1553
    sget v0, Lcom/android/server/FMPlayerNative;->NoisePower_th:I

    return v0
.end method

.method public getOffChannelThreshold()I
    .locals 2

    .prologue
    .line 1593
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "getOffChannelThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    const/4 v0, 0x0

    return v0
.end method

.method public getOnChannelThreshold()I
    .locals 2

    .prologue
    .line 1584
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "getOnChannelThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const/4 v0, 0x0

    return v0
.end method

.method public getPilotPowerThreshold()I
    .locals 1

    .prologue
    .line 1549
    sget v0, Lcom/android/server/FMPlayerNative;->PilotPower_th:I

    return v0
.end method

.method public getRMSSIFirstStage()I
    .locals 2

    .prologue
    .line 1620
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "getRMSSIFirstStage() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    const/4 v0, 0x0

    return v0
.end method

.method public getRSSI_th()I
    .locals 1

    .prologue
    .line 1328
    sget v0, Lcom/android/server/FMPlayerNative;->RSSI_th:I

    return v0
.end method

.method public getSINRFirstStage()I
    .locals 2

    .prologue
    .line 1629
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "getSINRFirstStage() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const/4 v0, 0x0

    return v0
.end method

.method public getSINRSamples()I
    .locals 2

    .prologue
    .line 1575
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "getSINRSamples() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    const/4 v0, 0x0

    return v0
.end method

.method public getSINRThreshold()I
    .locals 2

    .prologue
    .line 1602
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "getSINRThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    const/4 v0, 0x0

    return v0
.end method

.method public getSNR_th()I
    .locals 1

    .prologue
    .line 1355
    sget v0, Lcom/android/server/FMPlayerNative;->RSSI_SNR:I

    return v0
.end method

.method public getSearchAlgoType()I
    .locals 2

    .prologue
    .line 1566
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "getSearchAlgoType() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    const/4 v0, 0x0

    return v0
.end method

.method public getSeekDC()I
    .locals 2

    .prologue
    .line 1676
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "getSeekDC() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    const/4 v0, -0x1

    return v0
.end method

.method public getSeekQA()I
    .locals 2

    .prologue
    .line 1685
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "getSeekQA() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    const/4 v0, -0x1

    return v0
.end method

.method public getSoftMuteMode()Z
    .locals 1

    .prologue
    .line 1467
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->IsSoftmute:Z

    return v0
.end method

.method public getVolume()J
    .locals 2

    .prologue
    .line 923
    sget-wide v0, Lcom/android/server/FMPlayerNative;->settedVol:J

    return-wide v0
.end method

.method protected initService(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 258
    const-string v1, "FMPlayerNative_brcm"

    const-string v2, "initService "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    move-result-object v1

    sput-object v1, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    const/4 v1, 0x1

    .line 265
    :goto_0
    return v1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "FMPlayerNative_brcm"

    const-string v2, "Unable to initialize BluetoothFM proxy with service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isLocked()Z
    .locals 3

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    const-string v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLocked :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/FMPlayerNative;->mLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-boolean v0, p0, Lcom/android/server/FMPlayerNative;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public muteOff()V
    .locals 5

    .prologue
    .line 949
    const/4 v1, 0x2

    .line 951
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 952
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "muteOff() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 956
    :cond_1
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "muteOff()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->muteAudio(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 965
    :goto_1
    if-eqz v1, :cond_0

    .line 966
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "muteOff() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "muteOff() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public muteOn()V
    .locals 5

    .prologue
    .line 927
    const/4 v1, 0x2

    .line 929
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 930
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "muteOn() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "muteOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->muteAudio(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 943
    :goto_1
    if-eqz v1, :cond_0

    .line 944
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "muteOn() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "muteOn() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public declared-synchronized notify_unlock()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMPlayerNative;->mLocked:Z

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized off()V
    .locals 5

    .prologue
    .line 621
    monitor-enter p0

    :try_start_0
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "off : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    iget-boolean v4, v4, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v1, 0x2

    .line 625
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 626
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "off() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 630
    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/android/server/FMPlayerNative;->SeekIsWorking:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/server/FMPlayerNative;->SeekIsCancel:Z

    if-nez v2, :cond_2

    .line 631
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "off() : seek is working. So cancel seek."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNative;->cancelSeek()V

    .line 635
    :cond_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/FMPlayerNative;->IsEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    :try_start_2
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget-object v3, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    iget-boolean v3, v3, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->turnOffRadio(Z)I
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 646
    :goto_1
    if-nez v1, :cond_3

    .line 648
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNative;->isLocked()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    iget-boolean v2, v2, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    if-nez v2, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNative;->wait_lock()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "off() InterruptedException ::"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 621
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "returnCode":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 640
    .restart local v1    # "returnCode":I
    :catch_1
    move-exception v0

    .line 641
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_5
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "turnOffRadio() failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 642
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_2
    move-exception v0

    .line 643
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "turnOffRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 654
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "turnOffRadio() is failed. result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    sget-object v2, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    iget-boolean v2, v2, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    if-nez v2, :cond_4

    .line 656
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNative;->finish()V

    .line 657
    :cond_4
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/FMPlayerNative;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public offFMService()V
    .locals 5

    .prologue
    .line 662
    const/4 v1, 0x2

    .line 664
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_0

    .line 665
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "offFMService() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_0
    return-void

    .line 671
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->offFMService()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 676
    :goto_1
    if-eqz v1, :cond_1

    .line 677
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "offFMService() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/FMPlayerNative;->IsEnabled:Z

    .line 682
    sget-object v2, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    iget-boolean v2, v2, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    if-nez v2, :cond_2

    .line 683
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNative;->finish()V

    .line 684
    :cond_2
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/FMPlayerNative;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "offFMService() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public on()J
    .locals 2

    .prologue
    .line 604
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "on "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-direct {p0}, Lcom/android/server/FMPlayerNative;->initValue()V

    .line 608
    sget-object v0, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v0, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNative;->connectService()V

    .line 612
    :cond_0
    sget-object v0, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v0, :cond_1

    .line 613
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "on() mBcomService is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-wide/16 v0, 0x0

    .line 617
    :goto_0
    return-wide v0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/FMPlayerNative;->turnOnRadio()J

    move-result-wide v0

    goto :goto_0
.end method

.method public searchAll()J
    .locals 14

    .prologue
    .line 852
    const-wide/16 v12, 0x0

    .line 854
    .local v12, "seekfreq":J
    sget-object v0, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v0, :cond_0

    .line 855
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "searchAll() mBcomService is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const-wide/16 v0, 0x0

    .line 888
    :goto_0
    return-wide v0

    .line 859
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMPlayerNative;->RDSdata:Lcom/android/server/FMPlayerNative$RDSData;

    .line 861
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsWorking:Z

    .line 862
    const-string v0, "2"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 865
    .local v9, "ChipVendor":I
    const/4 v0, 0x6

    if-ne v9, v0, :cond_1

    .line 866
    :try_start_0
    sget-object v0, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget-wide v2, Lcom/android/server/FMPlayerNative;->Min_Channel:J

    long-to-int v1, v2

    sget-wide v2, Lcom/android/server/FMPlayerNative;->Max_Channel:J

    long-to-int v2, v2

    sget v3, Lcom/android/server/FMPlayerNative;->RSSI_th:I

    const/16 v4, 0x80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->seekStationCombo(IIIIIZII)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 875
    :goto_1
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsCancel:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 876
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "searchAll():: Seek is canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsCancel:Z

    .line 878
    const-wide/16 v12, 0x0

    .line 879
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/FMPlayerNative;->tuned_freq:J

    .line 886
    :goto_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsWorking:Z

    .line 888
    const-wide/16 v0, 0xa

    mul-long/2addr v0, v12

    goto :goto_0

    .line 868
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/16 v1, 0x80

    sget v2, Lcom/android/server/FMPlayerNative;->RSSI_th:I

    invoke-interface {v0, v1, v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->seekStation(II)J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v12

    goto :goto_1

    .line 870
    :catch_0
    move-exception v10

    .line 871
    .local v10, "e":Landroid/os/RemoteException;
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekStation() failed"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    sget-wide v12, Lcom/android/server/FMPlayerNative;->Max_Channel:J

    goto :goto_1

    .line 880
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_3

    .line 881
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "searchAll() is finished."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/FMPlayerNative;->tuned_freq:J

    goto :goto_2

    .line 884
    :cond_3
    sput-wide v12, Lcom/android/server/FMPlayerNative;->tuned_freq:J

    goto :goto_2
.end method

.method public searchDown()J
    .locals 2

    .prologue
    .line 844
    sget-wide v0, Lcom/android/server/FMPlayerNative;->tuned_freq:J

    return-wide v0
.end method

.method public searchUp()J
    .locals 2

    .prologue
    .line 848
    sget-wide v0, Lcom/android/server/FMPlayerNative;->tuned_freq:J

    return-wide v0
.end method

.method public seekDown()J
    .locals 14

    .prologue
    .line 765
    sget-wide v12, Lcom/android/server/FMPlayerNative;->Min_Channel:J

    .line 767
    .local v12, "seekfreq":J
    sget-object v0, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v0, :cond_0

    .line 768
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekDown() mBcomService is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-wide/16 v0, 0xa

    mul-long/2addr v0, v12

    .line 809
    :goto_0
    return-wide v0

    .line 772
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMPlayerNative;->RDSdata:Lcom/android/server/FMPlayerNative$RDSData;

    .line 774
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsWorking:Z

    .line 775
    const-string v0, "2"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 779
    .local v9, "ChipVendor":I
    const/4 v0, 0x6

    if-ne v9, v0, :cond_1

    .line 780
    :try_start_0
    sget-object v0, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget-wide v2, Lcom/android/server/FMPlayerNative;->Min_Channel:J

    long-to-int v1, v2

    sget-wide v2, Lcom/android/server/FMPlayerNative;->Max_Channel:J

    long-to-int v2, v2

    sget v3, Lcom/android/server/FMPlayerNative;->RSSI_th:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->seekStationCombo(IIIIIZII)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 789
    :goto_1
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsCancel:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 790
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekDown():: Seek is canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsCancel:Z

    .line 807
    :goto_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsWorking:Z

    .line 809
    const-wide/16 v0, 0xa

    mul-long/2addr v0, v12

    goto :goto_0

    .line 782
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v1, 0x0

    sget v2, Lcom/android/server/FMPlayerNative;->RSSI_th:I

    invoke-interface {v0, v1, v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->seekStation(II)J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v12

    goto :goto_1

    .line 784
    :catch_0
    move-exception v10

    .line 785
    .local v10, "e":Landroid/os/RemoteException;
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekStation() failed"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 786
    sget-wide v12, Lcom/android/server/FMPlayerNative;->Min_Channel:J

    goto :goto_1

    .line 792
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_5

    .line 793
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsRounding:Z

    if-nez v0, :cond_4

    .line 794
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekDown():: applied auto rounding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsRounding:Z

    .line 796
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNative;->seekDown()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    div-long v12, v0, v2

    .line 797
    sget-wide v0, Lcom/android/server/FMPlayerNative;->Min_Channel:J

    cmp-long v0, v12, v0

    if-nez v0, :cond_3

    .line 798
    sget-wide v0, Lcom/android/server/FMPlayerNative;->Min_Channel:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMPlayerNative;->tune(J)V

    .line 799
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsRounding:Z

    goto :goto_2

    .line 801
    :cond_4
    sget-wide v12, Lcom/android/server/FMPlayerNative;->Min_Channel:J

    goto :goto_2

    .line 804
    :cond_5
    sput-wide v12, Lcom/android/server/FMPlayerNative;->tuned_freq:J

    goto :goto_2
.end method

.method public seekUp()J
    .locals 14

    .prologue
    .line 717
    sget-wide v12, Lcom/android/server/FMPlayerNative;->Max_Channel:J

    .line 719
    .local v12, "seekfreq":J
    sget-object v0, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v0, :cond_0

    .line 720
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekUp() mBcomService is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-wide/16 v0, 0xa

    mul-long/2addr v0, v12

    .line 761
    :goto_0
    return-wide v0

    .line 724
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMPlayerNative;->RDSdata:Lcom/android/server/FMPlayerNative$RDSData;

    .line 726
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsWorking:Z

    .line 727
    const-string v0, "2"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 731
    .local v9, "ChipVendor":I
    const/4 v0, 0x6

    if-ne v9, v0, :cond_1

    .line 732
    :try_start_0
    sget-object v0, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget-wide v2, Lcom/android/server/FMPlayerNative;->Min_Channel:J

    long-to-int v1, v2

    sget-wide v2, Lcom/android/server/FMPlayerNative;->Max_Channel:J

    long-to-int v2, v2

    sget v3, Lcom/android/server/FMPlayerNative;->RSSI_th:I

    const/16 v4, 0x80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->seekStationCombo(IIIIIZII)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 741
    :goto_1
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsCancel:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 742
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekUp():: Seek is canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsCancel:Z

    .line 759
    :goto_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsWorking:Z

    .line 761
    const-wide/16 v0, 0xa

    mul-long/2addr v0, v12

    goto :goto_0

    .line 734
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/16 v1, 0x80

    sget v2, Lcom/android/server/FMPlayerNative;->RSSI_th:I

    invoke-interface {v0, v1, v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->seekStation(II)J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v12

    goto :goto_1

    .line 736
    :catch_0
    move-exception v10

    .line 737
    .local v10, "e":Landroid/os/RemoteException;
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekStation() failed"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    sget-wide v12, Lcom/android/server/FMPlayerNative;->Max_Channel:J

    goto :goto_1

    .line 744
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_5

    .line 745
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsRounding:Z

    if-nez v0, :cond_4

    .line 746
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "seekUp():: applied auto rounding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsRounding:Z

    .line 748
    invoke-virtual {p0}, Lcom/android/server/FMPlayerNative;->seekUp()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    div-long v12, v0, v2

    .line 749
    sget-wide v0, Lcom/android/server/FMPlayerNative;->Max_Channel:J

    cmp-long v0, v12, v0

    if-nez v0, :cond_3

    .line 750
    sget-wide v0, Lcom/android/server/FMPlayerNative;->Max_Channel:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMPlayerNative;->tune(J)V

    .line 751
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FMPlayerNative;->SeekIsRounding:Z

    goto :goto_2

    .line 753
    :cond_4
    sget-wide v12, Lcom/android/server/FMPlayerNative;->Max_Channel:J

    goto :goto_2

    .line 756
    :cond_5
    sput-wide v12, Lcom/android/server/FMPlayerNative;->tuned_freq:J

    goto :goto_2
.end method

.method public setAFRMSSISamples(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1643
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setAFRMSSISamples() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    return-void
.end method

.method public setAFRMSSIThreshold(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1634
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setAFRMSSIThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    return-void
.end method

.method public setAFValid_th(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 1405
    const-string v1, "FMPlayerNative_brcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAFValid_th() AF_Tolerance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1407
    .local v0, "sVal":Ljava/lang/String;
    const-string/jumbo v1, "service.brcm.fm.af_snrtolerance"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    sput p1, Lcom/android/server/FMPlayerNative;->AF_TOLERANCE:I

    .line 1409
    return-void
.end method

.method public setAF_th(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 1386
    const-string v1, "FMPlayerNative_brcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAF_th() AF="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1388
    .local v0, "sVal":Ljava/lang/String;
    const-string/jumbo v1, "service.brcm.fm.af_snrthresh"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    sput p1, Lcom/android/server/FMPlayerNative;->AF_THRESHOLD:I

    .line 1390
    return-void
.end method

.method public setAudioPath(I)V
    .locals 5
    .param p1, "audioPath"    # I

    .prologue
    .line 1220
    const/4 v1, 0x2

    .line 1222
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 1223
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setAudioPath() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1229
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setAudioPath(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1234
    :goto_1
    if-eqz v1, :cond_0

    .line 1235
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAudioPath() is failed.!!!result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1230
    :catch_0
    move-exception v0

    .line 1231
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setAudioMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setBand(I)V
    .locals 10
    .param p1, "band"    # I

    .prologue
    const-wide/16 v8, 0x1db0

    const/4 v6, 0x3

    const/4 v3, 0x2

    const-wide/16 v4, 0x2a30

    const/4 v2, 0x1

    .line 1093
    if-ne p1, v2, :cond_1

    .line 1094
    sput v2, Lcom/android/server/FMPlayerNative;->region:I

    .line 1095
    const-wide/16 v2, 0x222e

    sput-wide v2, Lcom/android/server/FMPlayerNative;->Min_Channel:J

    .line 1096
    sput-wide v4, Lcom/android/server/FMPlayerNative;->Max_Channel:J

    .line 1111
    :goto_0
    const/4 v1, 0x2

    .line 1113
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_4

    .line 1114
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setBand() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_0
    :goto_1
    return-void

    .line 1097
    .end local v1    # "returnCode":I
    :cond_1
    if-ne p1, v3, :cond_2

    .line 1098
    sput v6, Lcom/android/server/FMPlayerNative;->region:I

    .line 1099
    sput-wide v8, Lcom/android/server/FMPlayerNative;->Min_Channel:J

    .line 1100
    sput-wide v4, Lcom/android/server/FMPlayerNative;->Max_Channel:J

    goto :goto_0

    .line 1101
    :cond_2
    if-ne p1, v6, :cond_3

    .line 1102
    sput v3, Lcom/android/server/FMPlayerNative;->region:I

    .line 1103
    sput-wide v8, Lcom/android/server/FMPlayerNative;->Min_Channel:J

    .line 1104
    const-wide/16 v2, 0x2328

    sput-wide v2, Lcom/android/server/FMPlayerNative;->Max_Channel:J

    goto :goto_0

    .line 1106
    :cond_3
    sput v2, Lcom/android/server/FMPlayerNative;->region:I

    .line 1107
    const-wide/16 v2, 0x222e

    sput-wide v2, Lcom/android/server/FMPlayerNative;->Min_Channel:J

    .line 1108
    sput-wide v4, Lcom/android/server/FMPlayerNative;->Max_Channel:J

    goto :goto_0

    .line 1118
    .restart local v1    # "returnCode":I
    :cond_4
    sget-boolean v2, Lcom/android/server/FMPlayerNative;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1119
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBand() region="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/FMPlayerNative;->region:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_5
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget v3, Lcom/android/server/FMPlayerNative;->region:I

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setWorldRegion(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1128
    :goto_2
    if-eqz v1, :cond_0

    .line 1129
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBand() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setBand() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public setCFOTh12(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1607
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setCFOTh12() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    return-void
.end method

.method public setChannelSpacing(I)V
    .locals 5
    .param p1, "spacing"    # I

    .prologue
    .line 1135
    const/4 v1, 0x2

    .line 1137
    .local v1, "returnCode":I
    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    .line 1138
    const/4 p1, 0x0

    .line 1146
    :goto_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_3

    .line 1147
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setChannelSpacing() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_0
    :goto_1
    return-void

    .line 1139
    :cond_1
    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    .line 1140
    const/16 p1, 0x10

    goto :goto_0

    .line 1144
    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 1153
    :cond_3
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setStepSize(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1158
    :goto_2
    if-eqz v1, :cond_0

    .line 1159
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setChannelSpacing() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setStepSize() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public setCnt_th(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 1359
    const/4 v1, 0x2

    .line 1361
    .local v1, "returnCode":I
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCnt_th() COS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 1364
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setCnt_th() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    sput p1, Lcom/android/server/FMPlayerNative;->COS:I

    .line 1370
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setCOS(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1375
    :goto_1
    if-eqz v1, :cond_0

    .line 1376
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCnt_th() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1371
    :catch_0
    move-exception v0

    .line 1372
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setCOS() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setDEConstant(J)V
    .locals 5
    .param p1, "value"    # J

    .prologue
    const/4 v4, 0x0

    .line 1251
    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 1252
    sput v4, Lcom/android/server/FMPlayerNative;->DEConstant:I

    .line 1259
    :goto_0
    const/4 v1, 0x2

    .line 1261
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_3

    .line 1262
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setDEConstant() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_0
    :goto_1
    return-void

    .line 1253
    .end local v1    # "returnCode":I
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 1254
    const/16 v2, 0x40

    sput v2, Lcom/android/server/FMPlayerNative;->DEConstant:I

    goto :goto_0

    .line 1256
    :cond_2
    sput v4, Lcom/android/server/FMPlayerNative;->DEConstant:I

    goto :goto_0

    .line 1266
    .restart local v1    # "returnCode":I
    :cond_3
    sget-boolean v2, Lcom/android/server/FMPlayerNative;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1267
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDEConstant() : DEConstant = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/FMPlayerNative;->DEConstant:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_4
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget v3, Lcom/android/server/FMPlayerNative;->DEConstant:I

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setDeemPhasis(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1276
    :goto_2
    if-eqz v1, :cond_0

    .line 1277
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDEConstant() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1272
    :catch_0
    move-exception v0

    .line 1273
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setDeemPhasis() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public setFMIntenna(Z)V
    .locals 5
    .param p1, "setFMIntenna"    # Z

    .prologue
    .line 1424
    const/4 v1, 0x2

    .line 1426
    .local v1, "returnCode":I
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFMIntenna() setFMIntenna="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 1429
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setFMIntenna() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_0
    :goto_0
    return-void

    .line 1434
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setFMIntenna(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1439
    :goto_1
    if-eqz v1, :cond_0

    .line 1440
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFMIntenna() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setFMIntenna() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setFrequencyOffsetThreshold(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 1476
    const/4 v1, 0x2

    .line 1478
    .local v1, "returnCode":I
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFrequencyOffsetThreshold() Value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 1481
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setFrequencyOffsetThreshold() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :cond_0
    :goto_0
    return-void

    .line 1485
    :cond_1
    sput p1, Lcom/android/server/FMPlayerNative;->FrequencyOffset_th:I

    .line 1488
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setFrequencyOffsetThreshold(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1493
    :goto_1
    if-eqz v1, :cond_0

    .line 1494
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFrequencyOffsetThreshold() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1489
    :catch_0
    move-exception v0

    .line 1490
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setFrequencyOffsetThreshold() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setGoodChannelRMSSIThreshold(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1652
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setGoodChannelRMSSIThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    return-void
.end method

.method public setHybridSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1661
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setHybridSearch() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    return-void
.end method

.method public setMono()V
    .locals 5

    .prologue
    .line 1193
    const/4 v1, 0x2

    .line 1195
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 1196
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setMono() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    sget-boolean v2, Lcom/android/server/FMPlayerNative;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1201
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setMono() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_2
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setAudioMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1210
    :goto_1
    if-eqz v1, :cond_3

    .line 1211
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMono() is failed.!!!result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_3
    if-eqz v1, :cond_0

    .line 1215
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMono() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setMono() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setNoisePowerThreshold(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 1522
    const/4 v1, 0x2

    .line 1524
    .local v1, "returnCode":I
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNoisePowerThreshold() Value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 1527
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setNoisePowerThreshold() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :cond_0
    :goto_0
    return-void

    .line 1531
    :cond_1
    sput p1, Lcom/android/server/FMPlayerNative;->NoisePower_th:I

    .line 1534
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setNoisePowerThreshold(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1539
    :goto_1
    if-eqz v1, :cond_0

    .line 1540
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNoisePowerThreshold() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1535
    :catch_0
    move-exception v0

    .line 1536
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setNoisePowerThreshold() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setOffChannelThreshold(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1589
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setOffChannelThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    return-void
.end method

.method public setOnChannelThreshold(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1580
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setOnChannelThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    return-void
.end method

.method public setPilotPowerThreshold(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 1499
    const/4 v1, 0x2

    .line 1501
    .local v1, "returnCode":I
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPilotPowerThreshold() Value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 1504
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setPilotPowerThreshold() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_0
    :goto_0
    return-void

    .line 1508
    :cond_1
    sput p1, Lcom/android/server/FMPlayerNative;->PilotPower_th:I

    .line 1511
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setPilotPowerThreshold(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1516
    :goto_1
    if-eqz v1, :cond_0

    .line 1517
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPilotPowerThreshold() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1512
    :catch_0
    move-exception v0

    .line 1513
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setPilotPowerThreshold() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setRMSSIFirstStage(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1616
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setRMSSIFirstStage() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    return-void
.end method

.method public setRSSI_th(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1323
    const-string v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRSSI_th() RSSI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    sput p1, Lcom/android/server/FMPlayerNative;->RSSI_th:I

    .line 1325
    return-void
.end method

.method public setRecordMode(I)V
    .locals 0
    .param p1, "is_record"    # I

    .prologue
    .line 1244
    return-void
.end method

.method public setSINRFirstStage(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1625
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSINRFirstStage() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    return-void
.end method

.method public setSINRSamples(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1571
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSINRSamples() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    return-void
.end method

.method public setSINRThreshold(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1598
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSINRThreshold() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    return-void
.end method

.method public setSNR_th(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 1332
    const/4 v1, 0x2

    .line 1334
    .local v1, "returnCode":I
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSNR_th() SNR="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 1337
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setSNR_th() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_0
    :goto_0
    return-void

    .line 1341
    :cond_1
    sput p1, Lcom/android/server/FMPlayerNative;->RSSI_SNR:I

    .line 1343
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setSnrThreshold(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1348
    :goto_1
    if-eqz v1, :cond_0

    .line 1349
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSNR_th() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setSnrThreshold() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setScanning(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 1557
    const-string v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScanning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    return-void
.end method

.method public setSearchAlgoType(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1562
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSearchAlgoType() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    return-void
.end method

.method public setSeekDC(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1672
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSeekDC() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    return-void
.end method

.method public setSeekQA(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1681
    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "setSeekQA() function is not supported on this model"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    return-void
.end method

.method public setSeekRSSI(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1315
    long-to-int v0, p1

    sput v0, Lcom/android/server/FMPlayerNative;->RSSI_th:I

    .line 1316
    return-void
.end method

.method public setSeekSNR(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1319
    long-to-int v0, p1

    sput v0, Lcom/android/server/FMPlayerNative;->RSSI_SNR:I

    .line 1320
    return-void
.end method

.method public setSoftMuteControl(III)V
    .locals 0
    .param p1, "min_RSSI"    # I
    .param p2, "max_RSSI"    # I
    .param p3, "max_attenuation"    # I

    .prologue
    .line 1473
    return-void
.end method

.method public setSoftmute(Z)V
    .locals 5
    .param p1, "setSoftmute"    # Z

    .prologue
    .line 1445
    const/4 v1, 0x2

    .line 1447
    .local v1, "returnCode":I
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSoftmute() setSoftmute="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 1450
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setSoftmute() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1454
    :cond_1
    sput-boolean p1, Lcom/android/server/FMPlayerNative;->IsSoftmute:Z

    .line 1456
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setRfMute(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1461
    :goto_1
    if-eqz v1, :cond_0

    .line 1462
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSoftmute() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1457
    :catch_0
    move-exception v0

    .line 1458
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "seekStation() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setSpeakerOn(Z)V
    .locals 0
    .param p1, "setSpeakerOn"    # Z

    .prologue
    .line 1241
    return-void
.end method

.method public setStereo()V
    .locals 5

    .prologue
    .line 1165
    const/4 v1, 0x2

    .line 1167
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 1168
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setStereo() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    sget-boolean v2, Lcom/android/server/FMPlayerNative;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1173
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setStereo() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :cond_2
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setAudioMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1182
    :goto_1
    if-eqz v1, :cond_3

    .line 1183
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStereo() is failed.!!!result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_3
    if-eqz v1, :cond_0

    .line 1187
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStereo() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setStereo() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setVolume(J)V
    .locals 7
    .param p1, "volume"    # J

    .prologue
    .line 893
    const/4 v1, 0x2

    .line 895
    .local v1, "returnCode":I
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 896
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setVolume() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    monitor-enter p0

    .line 901
    :try_start_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    if-eqz v2, :cond_2

    .line 902
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVolume() vol="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/FMPlayerNative;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    long-to-int v5, p1

    invoke-virtual {v4, v5}, Lcom/android/server/FMPlayerVolumeTable;->ReadVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    :try_start_1
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    sget-object v3, Lcom/android/server/FMPlayerNative;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    long-to-int v4, p1

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerVolumeTable;->ReadVolume(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->setFMVolume(I)I

    move-result v1

    .line 912
    sput-wide p1, Lcom/android/server/FMPlayerNative;->settedVol:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 917
    :goto_2
    if-eqz v1, :cond_0

    .line 918
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVolume() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 904
    :cond_2
    :try_start_2
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setVolume() mVolumeTable is null. "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    new-instance v2, Lcom/android/server/FMPlayerVolumeTable;

    invoke-direct {v2}, Lcom/android/server/FMPlayerVolumeTable;-><init>()V

    sput-object v2, Lcom/android/server/FMPlayerNative;->mVolumeTable:Lcom/android/server/FMPlayerVolumeTable;

    goto :goto_1

    .line 907
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "setVolume() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public declared-synchronized tune(J)V
    .locals 5
    .param p1, "freq"    # J

    .prologue
    .line 688
    monitor-enter p0

    const/4 v1, 0x2

    .line 690
    .local v1, "returnCode":I
    :try_start_0
    sget-boolean v2, Lcom/android/server/FMPlayerNative;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 691
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tune :: freq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :goto_0
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-nez v2, :cond_1

    .line 696
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "tune() mBcomService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    :goto_1
    monitor-exit p0

    return-void

    .line 693
    :cond_0
    :try_start_1
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "tune "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 688
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 700
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    sput-object v2, Lcom/android/server/FMPlayerNative;->RDSdata:Lcom/android/server/FMPlayerNative$RDSData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 703
    :try_start_3
    sget-object v2, Lcom/android/server/FMPlayerNative;->mBcomService:Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    long-to-int v3, p1

    div-int/lit8 v3, v3, 0xa

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->tuneRadio(I)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 708
    :goto_2
    if-nez v1, :cond_2

    .line 709
    const-wide/16 v2, 0xa

    :try_start_4
    div-long v2, p1, v2

    sput-wide v2, Lcom/android/server/FMPlayerNative;->tuned_freq:J

    goto :goto_1

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "tuneRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 711
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tune() is failed.!!!result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    sget-wide v2, Lcom/android/server/FMPlayerNative;->Min_Channel:J

    sput-wide v2, Lcom/android/server/FMPlayerNative;->tuned_freq:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized wait_lock()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMPlayerNative;->mLocked:Z

    .line 160
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/FMPlayerNative;->mLocked:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 163
    :cond_0
    monitor-exit p0

    return-void
.end method
