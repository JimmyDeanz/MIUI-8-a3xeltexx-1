.class public Lcom/android/server/FMRadioService;
.super Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FMRadioService$ScanThread;,
        Lcom/android/server/FMRadioService$ListenerRecord;
    }
.end annotation


# static fields
.field private static final ACTINON_ALARM_PLAY:Ljava/lang/String; = "com.sec.android.app.voicecommand"

.field private static final ACTION_ALL_SOUND_OFF:Ljava/lang/String; = "android.settings.ALL_SOUND_MUTE"

.field private static final ACTION_BACKGROUND_PLAY:Ljava/lang/String; = "com.android.backgroung.playing"

.field private static final ACTION_DNS_PAUSE_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.pause_internet_stream"

.field private static final ACTION_DNS_RESUME_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.resume_internet_stream"

.field private static final ACTION_DNS_STOP_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.stop_internet_stream"

.field private static final ACTION_MUSIC_COMMAND:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final ACTION_RECORDING_SAVE:Ljava/lang/String; = "com.samsung.media.fmradio.rec_save"

.field private static final ACTION_SAVE_FMRECORDING_ONLY:Ljava/lang/String; = "com.samsung.media.save_fmrecording_only"

.field private static final ACTION_VOLUME_LOCK:Ljava/lang/String; = "com.sec.android.fm.volume_lock"

.field private static final ACTION_VOLUME_UNLOCK:Ljava/lang/String; = "com.sec.android.fm.volume_unlock"

.field private static final APP_NAME:Ljava/lang/String; = "com.sec.android.app.fm"

.field public static final BAND_76000_108000_kHz:I = 0x2

.field public static final BAND_76000_90000_kHz:I = 0x3

.field public static final BAND_87500_108000_kHz:I = 0x1

.field public static final CHAN_SPACING_100_kHz:I = 0xa

.field public static final CHAN_SPACING_200_kHz:I = 0x14

.field public static final CHAN_SPACING_50_kHz:I = 0x5

.field private static final CODE_SCAN_PROGRESS:I = 0x1

.field public static final DEBUG:Z = true

.field private static final DEBUGGABLE:Z

.field private static final DELAY_WAITING_STREAM_STOPPED:I = 0x96

.field public static final DE_TIME_CONSTANT_50:I = 0x1

.field public static final DE_TIME_CONSTANT_75:I = 0x0

.field static final EVENT_AF_RECEIVED:I = 0xe

.field static final EVENT_AF_STARTED:I = 0xd

.field private static final EVENT_CHANNEL_FOUND:I = 0x1

.field private static final EVENT_EAR_PHONE_CONNECT:I = 0x8

.field private static final EVENT_EAR_PHONE_DISCONNECT:I = 0x9

.field private static final EVENT_OFF:I = 0x6

.field private static final EVENT_ON:I = 0x5

.field static final EVENT_PIECC_EVENT:I = 0x12

.field private static final EVENT_RDS_DISABLED:I = 0xc

.field private static final EVENT_RDS_ENABLED:I = 0xb

.field static final EVENT_RDS_EVENT:I = 0xa

.field static final EVENT_REC_FINISH:I = 0x11

.field static final EVENT_RTPLUS_EVENT:I = 0x10

.field private static final EVENT_SCAN_FINISHED:I = 0x3

.field private static final EVENT_SCAN_STARTED:I = 0x2

.field private static final EVENT_SCAN_STOPPED:I = 0x4

.field private static final EVENT_TUNE:I = 0x7

.field public static final EVENT_VOLUME_LOCK:I = 0xf

.field private static final KEY_RETURNBACK_VOLUME:Ljava/lang/String; = "com.sec.android.fm.return_back_volume"

.field private static final KNOX_MODE_USER_SWITCH:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field private static final NEXTRADIO_NAME:Ljava/lang/String; = "com.nextradioapp.nextradio"

.field public static final OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final OFF_BATTERY_LOW:I = 0x7

.field public static final OFF_CALL_ACTIVE:I = 0x1

.field public static final OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final OFF_MOTION_LISTENER:I = 0x15

.field public static final OFF_NORMAL:I = 0x0

.field public static final OFF_PAUSE_COMMAND:I = 0x5

.field public static final OFF_STOP_COMMAND:I = 0x4

.field public static final OFF_TV_OUT:I = 0xa

.field private static final PACKAGE_NAME_TALKBACK:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field private static final PARAMETER_AFRMSSI_SAMPLES:Ljava/lang/String; = "AFRMSSISamples"

.field private static final PARAMETER_AFRMSSI_TH:Ljava/lang/String; = "AFRMSSIThreshold"

.field private static final PARAMETER_AF_TH:Ljava/lang/String; = "AF_th"

.field private static final PARAMETER_AF_VALID_TH:Ljava/lang/String; = "AFValid_th"

.field private static final PARAMETER_CFO_TH:Ljava/lang/String; = "CFOTh12"

.field private static final PARAMETER_CURRENT_RSSI:Ljava/lang/String; = "CurrentRSSI"

.field private static final PARAMETER_CURRENT_SNR:Ljava/lang/String; = "CurrentSNR"

.field private static final PARAMETER_DE_CONSTANT:Ljava/lang/String; = "DEConstant"

.field private static final PARAMETER_FIRST_CNT_TH:Ljava/lang/String; = "Cnt_th"

.field private static final PARAMETER_FIRST_RSSI_TH:Ljava/lang/String; = "RSSI_th"

.field private static final PARAMETER_FIRST_SNR_TH:Ljava/lang/String; = "SNR_th"

.field public static final PARAMETER_FREQUENCY_OFFSET_TH:Ljava/lang/String; = "FrequencyOffset_th"

.field private static final PARAMETER_GOOD_CH_RMSSI_TH:Ljava/lang/String; = "GoodChannelRMSSIThreshold"

.field private static final PARAMETER_HYBRID_SEARCH:Ljava/lang/String; = "HybridSearch"

.field public static final PARAMETER_NOISE_POWER_TH:Ljava/lang/String; = "NoisePower_th"

.field private static final PARAMETER_OFF_CHANNEL_TH:Ljava/lang/String; = "OffChannelThreshold"

.field private static final PARAMETER_ON_CHANNEL_TH:Ljava/lang/String; = "OnChannelThreshold"

.field public static final PARAMETER_PILOT_POWER_TH:Ljava/lang/String; = "PilotPower_th"

.field private static final PARAMETER_RMSSI_FIRST_STAGE:Ljava/lang/String; = "RMSSIFirstStage"

.field private static final PARAMETER_SEARCH_ALGO_TYPE:Ljava/lang/String; = "SearchAlgoType"

.field private static final PARAMETER_SECOND_CNT_TH:Ljava/lang/String; = "Cnt_th_2"

.field private static final PARAMETER_SECOND_RSSI_TH:Ljava/lang/String; = "RSSI_th_2"

.field private static final PARAMETER_SECOND_SNR_TH:Ljava/lang/String; = "SNR_th_2"

.field private static final PARAMETER_SEEK_DC:Ljava/lang/String; = "SeekDC"

.field private static final PARAMETER_SEEK_QA:Ljava/lang/String; = "SeekQA"

.field private static final PARAMETER_SEEK_RSSI:Ljava/lang/String; = "SeekRSSI"

.field private static final PARAMETER_SEEK_SNR:Ljava/lang/String; = "SeekSNR"

.field private static final PARAMETER_SINR_FIRST_STAGE:Ljava/lang/String; = "SINRFirstStage"

.field private static final PARAMETER_SINR_SAMPLES:Ljava/lang/String; = "SINRSamples"

.field private static final PARAMETER_SINR_TH:Ljava/lang/String; = "SINRThreshold"

.field private static final PARAMETER_SKIP_TUNNING_VALUE:Ljava/lang/String; = "SkipTuningValue"

.field public static final PAUSED:I = 0xb

.field private static final RECORDING_END:I = 0x0

.field private static final RECORDING_START:I = 0x1

.field static final VOLUME_FADEIN:I = 0xc8

.field static final VOLUME_FADEIN_DELAYTIME:I = 0x64

.field private static final VOLUME_UP_DOWN:Ljava/lang/String; = "114,115"

.field private static final audioMute:Ljava/lang/String; = "fm_radio_mute=1"

.field private static final audioUnMute:Ljava/lang/String; = "fm_radio_mute=0"

.field private static curFreq:J

.field private static mIsSetWakeKey:Z

.field private static mIsTransientPaused:Z

.field private static mMotionSensorManager:Lcom/samsung/android/motion/MotionRecognitionManager;


# instance fields
.field private SetPropertyPermission:Ljava/lang/String;

.field private VolumePropertyname:Ljava/lang/String;

.field private alarmTTSPlay:Z

.field private bmObserver:Landroid/database/ContentObserver;

.field private fos:Ljava/io/FileOutputStream;

.field private isFMBackGroundPlaying:Z

.field private mAFEnable:Z

.field private mAfRmssisampleCnt_th:I

.field private mAfRmssith_th:I

.field private mAirPlaneEnabled:Z

.field private final mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mAlgo_type:I

.field private final mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

.field final mAudioFocusHandler:Landroid/os/Handler;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field public mBand:I

.field private mBikeMode:Z

.field private mButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mCf0_th12:I

.field public mChannelSpacing:I

.field private mChipVendor:I

.field private mCnt_th:I

.field private mCnt_th_2:I

.field private mContext:Landroid/content/Context;

.field private mCurrentFoundFreq:J

.field private mCurrentResumeVol:J

.field public mDEConstant:I

.field private mDNSEnable:Z

.field private final mEmergencyReceiver:Landroid/content/BroadcastReceiver;

.field private mFmOff:Ljava/lang/String;

.field private mFmOn:Ljava/lang/String;

.field private mFreqOffset_th:I

.field final mHandler:Landroid/os/Handler;

.field private mInternetStreamingMode:Z

.field public mIsAudioFocusAlive:Z

.field private mIsBatteryLow:Z

.field private mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

.field private mIsForcestop:Z

.field private mIsHeadsetPlugged:Z

.field private mIsKeepRecoding:Z

.field private mIsMute:Z

.field private mIsOn:Z

.field private mIsSeeking:Z

.field private mIsSkipTunigVal:Z

.field private mIsTestMode:Z

.field private mIsTvOutPlugged:Z

.field private mIsphoneCall:Z

.field private mIsphoneCallRinging:Z

.field private mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/server/FMRadioService$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mMarvell_cmi:I

.field private mMarvell_rssi:I

.field private mMusicCommandRec:Landroid/content/BroadcastReceiver;

.field private mNeedResumeToFreq:J

.field private mNoisePwr_th:I

.field private mOnProgress:Z

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPilotPwr_th:I

.field private mPlayerNative:Lcom/android/server/FMPlayerNative;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviousFoundFreq:J

.field private mQualcomm_af_rmssisamplecnt:I

.field private mQualcomm_af_rmssith:I

.field private mQualcomm_cfoth12:I

.field private mQualcomm_offchannel:I

.field private mQualcomm_onchannel:I

.field private mQualcomm_rmssi_firststate:I

.field private mQualcomm_sinr_samplecnt:I

.field private mRDSEnable:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeVol:J

.field private mReturnBackVolume:I

.field private mRichwave_rssi:I

.field private mRssi_th:I

.field private mRssi_th_2:I

.field private mScanChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mScanFreq:J

.field private mScanProgress:Z

.field private mScanThread:Ljava/lang/Thread;

.field private mScanVolume:I

.field private final mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

.field private mSilicon_cnt:I

.field private mSilicon_rssi:I

.field private mSilicon_snr:I

.field private mSnr_th:I

.field private mSnr_th_2:I

.field private final mSystemReceiver:Landroid/content/BroadcastReceiver;

.field private final mSystemReceiver1:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitPidDuringScanning:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeUpKeyFileName:Ljava/lang/String;

.field private mWakeUpKeyFilePath:Ljava/lang/String;

.field private mgoodChrmssi_th:I

.field private platform:Ljava/lang/String;

.field private volumeLock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/android/server/FMRadioService;->curFreq:J

    sput-boolean v1, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMRadioService;->mMotionSensorManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    sput-boolean v1, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/16 v5, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;-><init>()V

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    const-wide/16 v6, -0x2

    iput-wide v6, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsphoneCall:Z

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    iput-wide v10, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    iput-wide v10, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->isFMBackGroundPlaying:Z

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    const-string v2, "com.sec.android.app.fm.permission.setproperty"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->SetPropertyPermission:Ljava/lang/String;

    const-string v2, "service.brcm.fm.volumetable"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->VolumePropertyname:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    iput v3, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    iput v3, p0, Lcom/android/server/FMRadioService;->mBand:I

    iput v5, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    iput v3, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    iput-object v8, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    const-string v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    const-string v2, "102,114,115,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    const-string v2, "102,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsphoneCallRinging:Z

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsKeepRecoding:Z

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    iput v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mSilicon_rssi:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/FMRadioService;->mSilicon_snr:I

    iput v3, p0, Lcom/android/server/FMRadioService;->mSilicon_cnt:I

    const/16 v2, -0x71

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    const/16 v2, 0x6d

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    const/16 v2, 0x73

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v5, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    const/16 v2, 0x3a98

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    const/16 v2, 0x35

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    const/16 v2, 0x50

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mMarvell_rssi:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mMarvell_cmi:I

    const/16 v2, 0xc

    iput v2, p0, Lcom/android/server/FMRadioService;->mRichwave_rssi:I

    new-instance v2, Lcom/android/server/FMRadioService$1;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$1;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$2;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$2;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$3;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$3;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$4;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$4;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$5;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$5;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$6;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$6;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/FMRadioService$7;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$7;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v2, Lcom/android/server/FMRadioService$8;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$8;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/FMRadioService$9;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$9;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/server/FMRadioService$10;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$10;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$11;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$11;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$12;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$12;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$13;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$13;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$14;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$14;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$15;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$15;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$16;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$16;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mEmergencyReceiver:Landroid/content/BroadcastReceiver;

    iput-object v8, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    new-instance v2, Lcom/android/server/FMRadioService$17;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/server/FMRadioService$17;-><init>(Lcom/android/server/FMRadioService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->bmObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/FMPlayerNative;

    invoke-direct {v2, p0}, Lcom/android/server/FMPlayerNative;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "FMRadio Service"

    invoke-virtual {v2, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v1, "intentFilterVol":Landroid/content/IntentFilter;
    const/16 v2, 0x3e7

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.fm.volume_lock"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.fm.volume_unlock"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "airplane_mode_on"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAirPlaneEnabled flag :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.media.fmradio.rec_save"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.media.save_fmrecording_only"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerSystemListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerTelephonyListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerSetPropertyListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readChipVendor()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readTuningParameters()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readParametersForCurrentRegion()V

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "isBikeMode"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/FMRadioService;->bmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "isBikeMode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    const-string v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "platform : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "exynos4"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "msm8960"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    const-string v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    const-string v2, "102,114,115,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    const-string v2, "102,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v2, "rhea"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "capri"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "hawaii"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "java"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "sc8810"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "sc8825"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "sc6820i"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "sc8830"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "scx15"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "u2"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsKeepRecoding:Z

    :cond_3
    return-void

    :cond_4
    move v2, v4

    goto/16 :goto_0

    :cond_5
    move v3, v4

    goto/16 :goto_1

    :cond_6
    const-string v2, "msm7627a"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "msm7k"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const-string v2, "/sys/devices/platform/gpio-event/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    const-string v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    const-string v2, "1"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    const-string v2, "0"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    const-string v2, "montblanc"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "/sys/devices/platform/gpio-keys.0/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    const-string v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    const-string v2, "114,115,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    const-string v2, "172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    const-string v2, "mrvl"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "/sys/devices/platform/pxa27x-keypad/power/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    const-string v2, "wakeup"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    const-string v2, "enabled"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    const-string v2, "disabled"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private SkipTuning_Value()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    const-string v0, "FMRadioService"

    const-string v1, "SkipTuning_Value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/FMRadioService;ZIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsphoneCallRinging:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsphoneCallRinging:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/FMRadioService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/server/FMRadioService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/server/FMRadioService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/server/FMRadioService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsphoneCall:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsphoneCall:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->isFMBackGroundPlaying:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->isFMBackGroundPlaying:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/FMRadioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->responedFocusEvent(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/FMRadioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/FMRadioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->clearMessageQueue()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/FMRadioService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/android/server/FMRadioService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/android/server/FMRadioService;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->queueUpdate(IJ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/FMRadioService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/server/FMRadioService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsKeepRecoding:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/FMRadioService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    return v0
.end method

.method static synthetic access$2902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/FMRadioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/FMRadioService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->VolumePropertyname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/FMRadioService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    return-wide v0
.end method

.method static synthetic access$3402(Lcom/android/server/FMRadioService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    return-wide p1
.end method

.method static synthetic access$3500(Lcom/android/server/FMRadioService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    return-wide v0
.end method

.method static synthetic access$3502(Lcom/android/server/FMRadioService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    return-wide p1
.end method

.method static synthetic access$3600(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    iput-object p1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    iput-object p1, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/FMRadioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/FMRadioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/FMRadioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/FMRadioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/FMRadioService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->setSignalSetting(III)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/FMRadioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget v0, p0, Lcom/android/server/FMRadioService;->mScanVolume:I

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/FMRadioService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/FMRadioService;->mScanVolume:I

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/FMRadioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->handleBikeMode()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/FMRadioService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/FMRadioService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/FMRadioService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/FMRadioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->stopInternetStreaming()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v0, "Lock is held"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkForWakeLockRelease()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    if-nez v0, :cond_0

    const-string v0, "AF and RDS is off. release the wake lock"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    :cond_0
    return-void
.end method

.method private clearMessageQueue()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private closeFile()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private convertToPrimitives([Ljava/lang/Long;)[J
    .locals 4
    .param p1, "longObArray"    # [Ljava/lang/Long;

    .prologue
    if-eqz p1, :cond_0

    array-length v2, p1

    new-array v1, v2, [J

    .local v1, "longArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "longArray":[J
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private getAFRMSSISamples()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAFRMSSISamples()I

    move-result v0

    return v0
.end method

.method private getAFRMSSIThreshold()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAFRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method private getAFValid_th()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAFValid_th()I

    move-result v0

    return v0
.end method

.method private getAF_th()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAF_th()I

    move-result v0

    return v0
.end method

.method private getCFOTh12()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCFOTh12()I

    move-result v0

    return v0
.end method

.method private getCnt_th()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return v0
.end method

.method private getCnt_th_2()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    return v0
.end method

.method private getFrequencyOffsetThreshold()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getFrequencyOffsetThreshold()I

    move-result v0

    return v0
.end method

.method private getGoodChannelRMSSIThreshold()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getGoodChannelRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method private getHybridSearch()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getHybridSearch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNoisePowerThreshold()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getNoisePowerThreshold()I

    move-result v0

    return v0
.end method

.method private getOffChannelThreshold()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getOffChannelThreshold()I

    move-result v0

    return v0
.end method

.method private getOnChannelThreshold()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getOnChannelThreshold()I

    move-result v0

    return v0
.end method

.method private getPilotPowerThreshold()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getPilotPowerThreshold()I

    move-result v0

    return v0
.end method

.method private getPropertyProductName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "productName":Ljava/lang/String;
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRMSSIFirstStage()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getRMSSIFirstStage()I

    move-result v0

    return v0
.end method

.method private getRSSI_th()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return v0
.end method

.method private getRSSI_th_2()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    return v0
.end method

.method private getSINRFirstStage()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSINRFirstStage()I

    move-result v0

    return v0
.end method

.method private getSINRSamples()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSINRSamples()I

    move-result v0

    return v0
.end method

.method private getSINRThreshold()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSINRThreshold()I

    move-result v0

    return v0
.end method

.method private getSNR_th()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return v0
.end method

.method private getSNR_th_2()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    return v0
.end method

.method private getSearchAlgoType()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSearchAlgoType()I

    move-result v0

    return v0
.end method

.method private getSeekDC()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSeekDC()I

    move-result v0

    return v0
.end method

.method private getSeekQA()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSeekQA()I

    move-result v0

    return v0
.end method

.method private handleBikeMode()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "isBikeMode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    if-eqz v0, :cond_1

    const-string v0, "bike mode enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v1, v0, v1}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    :goto_0
    return-void

    :cond_1
    const-string v0, "bike mode disabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isValidPackage()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "caller":I
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .local v2, "pkgName":[Ljava/lang/String;
    aget-object v1, v2, v3

    .local v1, "mPackageName":Ljava/lang/String;
    const-string v4, "com.sec.android.app.fm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.nextradioapp.nextradio"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown App is trying to turn on Radio. So just return. mPackageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const-string v0, "FMRadioService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized offInternal(ZIZ)Z
    .locals 11
    .param p1, "isModeToSet"    # Z
    .param p2, "reasonCode"    # I
    .param p3, "needToRemoveFocusListener"    # Z

    .prologue
    const/4 v10, 0x6

    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offInternal :: reasonCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v6, :cond_1

    if-eqz p3, :cond_0

    const-string v5, "offInternal :: remove audiofocus "

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    :cond_1
    if-nez p3, :cond_9

    move v6, v4

    :goto_1
    :try_start_1
    sput-boolean v6, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz p1, :cond_a

    iget v6, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    if-eq v6, v8, :cond_2

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offInternal :: mReturnBackVolume="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x1

    invoke-static {v7}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v7

    iget v8, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    :cond_2
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->notifyRecFinish()V

    :cond_3
    const-string v2, "fmradio_turnon=false"

    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v6, "offInternal Turning off FM radio"

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .end local v2    # "keyValuePairs":Ljava/lang/String;
    :goto_2
    if-nez p3, :cond_b

    move v6, v4

    :goto_3
    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    iget v6, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v6, v10, :cond_c

    :cond_4
    const/4 v6, 0x3

    if-ne p2, v6, :cond_c

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v6}, Lcom/android/server/FMPlayerNative;->offFMService()V

    :goto_4
    const-string v6, "off returned from native"

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    if-nez v6, :cond_6

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterMusicCommandRec()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterBatteryListener()V

    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    if-nez v6, :cond_5

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAlarmListener()V

    :cond_5
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAllSoundOffListener()V

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    if-eqz p3, :cond_6

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterEmegencyStateChangedListener()V

    :cond_6
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    if-eqz p3, :cond_7

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_7
    const/4 v6, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->sendFMOFFBroadcast()V

    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v7, "mrvl"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->openFile()V

    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-direct {p0, v6}, Lcom/android/server/FMRadioService;->writeFile(Z)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->closeFile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_8
    :goto_5
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_9
    move v6, v5

    goto/16 :goto_1

    :cond_a
    :try_start_3
    const-string v6, "offInternal NOT Turning off FM radio"

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v4, v5

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b
    move v6, v5

    goto/16 :goto_3

    :cond_c
    :try_start_6
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v6}, Lcom/android/server/FMPlayerNative;->off()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_4

    :catchall_1
    move-exception v4

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_d
    :try_start_8
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string v7, "input"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .local v1, "inputManager":Landroid/hardware/input/InputManager;
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sget-boolean v7, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eq v6, v7, :cond_8

    if-eqz v1, :cond_8

    :try_start_9
    const-string v6, "com.sec.android.app.fm"

    iget-boolean v7, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string v8, "114,115"

    invoke-virtual {v1, v6, v7, v8}, Landroid/hardware/input/InputManager;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_6
    :try_start_a
    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sput-boolean v6, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    goto :goto_5

    :catch_1
    move-exception v3

    .local v3, "se":Ljava/lang/SecurityException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in setWakeKeyDynamically(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6
.end method

.method private declared-synchronized on(Z)Z
    .locals 10
    .param p1, "isAudioFocusNeeded"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    :try_start_1
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerBatteryListener()V

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eq v5, v4, :cond_0

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eq v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    :try_start_2
    sget-boolean v5, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    if-nez v5, :cond_4

    :cond_3
    const-string v5, "AudioFocusListener registered"

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v7, 0x1

    invoke-static {v7}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :goto_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v5}, Lcom/android/server/FMPlayerNative;->on()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_b

    const-string v5, "on returned from native"

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/FMRadioService;->mute(Z)V

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    if-nez v5, :cond_5

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    const-string v4, "on is failed by exception :: remove audiofocus "

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterBatteryListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_4
    :try_start_4
    const-string v5, "AudioFocusListener : skip the requestAudioFocus"

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    const-string v5, "setRadioSpeakerOn() is called."

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_6
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_8

    iget v5, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setSINRThreshold(I)V

    iget v5, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setSearchAlgoType(I)V

    iget v5, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setSINRFirstStage(I)V

    iget v5, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setRMSSIFirstStage(I)V

    iget v5, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setOnChannelThreshold(I)V

    iget v5, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setOffChannelThreshold(I)V

    iget v5, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setSINRSamples(I)V

    iget v5, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setCFOTh12(I)V

    iget v5, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setAFRMSSIThreshold(I)V

    iget v5, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setAFRMSSISamples(I)V

    iget v5, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->setGoodChannelRMSSIThreshold(I)V

    :goto_2
    iget v5, p0, Lcom/android/server/FMRadioService;->mBand:I

    invoke-virtual {p0, v5}, Lcom/android/server/FMRadioService;->setBand(I)V

    iget v5, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    invoke-virtual {p0, v5}, Lcom/android/server/FMRadioService;->setChannelSpacing(I)V

    iget v5, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    int-to-long v6, v5

    invoke-direct {p0, v6, v7}, Lcom/android/server/FMRadioService;->setDEConstant(J)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerMusicCommandRec()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAlarmListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAllSoundOffListener()V

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.android.backgroung.playing"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerEmergencyStateChangedListener()V

    iget-object v5, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string v6, "mrvl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->openFile()V

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->writeFile(Z)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->closeFile()V

    :cond_7
    :goto_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    move v3, v4

    goto/16 :goto_0

    :cond_8
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_9

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget v6, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-virtual {v5, v6}, Lcom/android/server/FMPlayerNative;->setRSSI_th(I)V

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget v6, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    invoke-virtual {v5, v6}, Lcom/android/server/FMPlayerNative;->setFrequencyOffsetThreshold(I)V

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget v6, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    invoke-virtual {v5, v6}, Lcom/android/server/FMPlayerNative;->setNoisePowerThreshold(I)V

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget v6, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    invoke-virtual {v5, v6}, Lcom/android/server/FMPlayerNative;->setPilotPowerThreshold(I)V

    goto :goto_2

    :cond_9
    iget v5, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v6, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    iget v7, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/FMRadioService;->setSignalSetting(III)V

    goto :goto_2

    :cond_a
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string v6, "input"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .local v1, "inputManager":Landroid/hardware/input/InputManager;
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sget-boolean v6, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v5, v6, :cond_7

    if-eqz v1, :cond_7

    :try_start_5
    const-string v5, "com.sec.android.app.fm"

    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string v7, "114,115"

    invoke-virtual {v1, v5, v6, v7}, Landroid/hardware/input/InputManager;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    :try_start_6
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sput-boolean v5, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    goto :goto_3

    :catch_1
    move-exception v2

    .local v2, "se":Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in setWakeKeyDynamically(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_4

    .end local v1    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v2    # "se":Ljava/lang/SecurityException;
    :cond_b
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    const-string v4, "on is failed :: remove audiofocus "

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method private openFile()V
    .locals 4

    .prologue
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "fileFMRadio":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private queueUpdate(IJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "delay"    # J

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queueUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const-string v0, "queueUpdate ## VOLUME_FADEIN"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private readChipVendor()V
    .locals 2

    .prologue
    const-string v0, "2"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChipVendor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private readParametersForCurrentRegion()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    :try_start_0
    const-string v1, "87500_108000"

    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    :goto_0
    sget v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_FREQUENCYSPACE:I

    sparse-switch v1, :sswitch_data_0

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    :goto_1
    sget v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DECONSTANT:I

    sparse-switch v1, :sswitch_data_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    :goto_2
    return-void

    :cond_0
    const-string v1, "76000_108000"

    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput v3, p0, Lcom/android/server/FMRadioService;->mBand:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    iput v3, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v1, "76000_90000"

    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_1

    :sswitch_1
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_1

    :sswitch_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    goto :goto_2

    :sswitch_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x32 -> :sswitch_2
        0x4b -> :sswitch_3
    .end sparse-switch
.end method

.method private readTuningParameters()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v7, :cond_0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getPropertyProductName()Ljava/lang/String;

    move-result-object v1

    .local v1, "productName":Ljava/lang/String;
    const-string v4, "zerolte"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "service.brcm.fm.start_snr"

    const/16 v5, 0x22

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "service.brcm.fm.set_blndmute"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "productName":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v2, ""

    .local v2, "start_mute":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "service.brcm.fm.start_mute"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, ""

    .local v3, "start_snr":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "service.brcm.fm.start_snr"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "service.brcm.fm.set_blndmute"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v4, ""

    sget-object v5, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v8, :cond_5

    iget v4, p0, Lcom/android/server/FMRadioService;->mSilicon_rssi:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mSilicon_snr:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mSilicon_cnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    :cond_3
    :goto_1
    return-void

    .end local v2    # "start_mute":Ljava/lang/String;
    .end local v3    # "start_snr":Ljava/lang/String;
    .restart local v1    # "productName":Ljava/lang/String;
    :cond_4
    const-string v4, "j2lte"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "service.brcm.fm.start_mute"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "productName":Ljava/lang/String;
    .restart local v2    # "start_mute":Ljava/lang/String;
    .restart local v3    # "start_snr":Ljava/lang/String;
    :cond_5
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v7, :cond_6

    const-string v4, "118"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    const-string v4, "2"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    const-string v4, "16"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v10, :cond_7

    const-string v4, "0"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iput v6, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    const-string v4, "0"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto :goto_1

    :cond_7
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v9, :cond_8

    const-string v4, "3"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    const-string v4, "1"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    const-string v4, "-2"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    const-string v4, "-110"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_1

    :cond_8
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_9

    iget v4, p0, Lcom/android/server/FMRadioService;->mRichwave_rssi:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    goto/16 :goto_1

    :cond_9
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    const-string v4, "103"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    const-string v4, "1500"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    const-string v4, "176"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    const-string v4, "400"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_1

    :cond_a
    sget-object v4, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "Local_Tunning_vals":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tuning value size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    array-length v4, v0

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tuning value size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_0
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v7, :cond_b

    const-string v4, "service.brcm.fm.start_mute"

    aget-object v5, v0, v6

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "service.brcm.fm.set_blndmute"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "118"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    const-string v4, "2"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    const-string v4, "16"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_1

    :cond_b
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v9, :cond_c

    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    const-string v4, "1"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    const-string v4, "-2"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    const-string v4, "-110"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_1

    :cond_c
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_d

    const-string v4, "service.brcm.fm.start_mute"

    aget-object v5, v0, v6

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "service.brcm.fm.set_blndmute"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "103"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    const-string v4, "1500"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    const-string v4, "176"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    const-string v4, "400"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_1

    :cond_d
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iput v6, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    iput v6, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_1

    :pswitch_1
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v9, :cond_3

    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    const-string v4, "1"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    const-string v4, "-2"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    const-string v4, "-110"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_1

    :pswitch_2
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_1

    :pswitch_3
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v9, :cond_e

    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    aget-object v4, v0, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    const-string v4, "-110"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_1

    :cond_e
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_f

    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    aget-object v4, v0, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_1

    :cond_f
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v7, :cond_3

    const-string v4, "service.brcm.fm.start_mute"

    aget-object v5, v0, v10

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "service.brcm.fm.set_blndmute"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v9, :cond_10

    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    aget-object v4, v0, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    aget-object v4, v0, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    goto/16 :goto_1

    :cond_10
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_11

    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    aget-object v4, v0, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    const-string v4, "service.brcm.fm.start_mute"

    aget-object v5, v0, v9

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "service.brcm.fm.set_blndmute"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v7, :cond_3

    const-string v4, "service.brcm.fm.start_snr"

    aget-object v5, v0, v10

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "service.brcm.fm.stop_snr"

    aget-object v5, v0, v9

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "service.brcm.fm.set_blndmute"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    aget-object v4, v0, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    aget-object v4, v0, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    const/4 v4, 0x5

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private registerAlarmListener()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentAlarmFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "registering Alarm play listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private registerAllSoundOffListener()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentAllSoundOffFilter":Landroid/content/IntentFilter;
    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "registering AllSoundOff listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private registerBatteryListener()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilterBattery":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "registering low battery listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private registerEmergencyStateChangedListener()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentEmergencyFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mEmergencyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "registering Emergency State Changed Listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private registerMusicCommandRec()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "music command reciever registered"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private registerSetPropertyListener()V
    .locals 5

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilterSetProperty":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.fm.set_property"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.fm.set_volume"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->SetPropertyPermission:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v1, "registering set property listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private registerSystemListener()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentSystemFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentSystemFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .restart local v0    # "intentSystemFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerTelephonyListener()V
    .locals 5

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "id":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v2, "registering telephony listener.."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v0, "Lock is released"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    .prologue
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    monitor-enter v4

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    .local v2, "record":Lcom/android/server/FMRadioService$ListenerRecord;
    iget-object v3, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/FMRadioService$ListenerRecord;

    .local v0, "delRecord":Lcom/android/server/FMRadioService$ListenerRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadioService] deleted Listener :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    monitor-exit v4

    goto :goto_0

    .end local v0    # "delRecord":Lcom/android/server/FMRadioService$ListenerRecord;
    .end local v2    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private respondAudioFocusChangeForDns(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "respondAudioFocusChangeForDns()-focusChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " streamingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .local v0, "action":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "com.sec.android.app.dns.action.stop_internet_stream"

    goto :goto_1

    :pswitch_2
    const-string v0, "com.sec.android.app.dns.action.pause_internet_stream"

    goto :goto_1

    :pswitch_3
    const-string v0, "com.sec.android.app.dns.action.resume_internet_stream"

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private responedFocusEvent(I)V
    .locals 12
    .param p1, "focusEvent"    # I

    .prologue
    const-wide/16 v10, -0x2

    const/16 v8, 0xc8

    const/16 v4, 0xb

    const/4 v7, 0x0

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    :goto_1
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v1, :cond_2

    const-string v1, "AUDIOFOCUS_LOSS - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    invoke-direct {p0, v6, v4, v6}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_1

    :cond_2
    const-string v1, "AUDIOFOCUS_LOSS - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    if-eqz v1, :cond_0

    const-string v1, "still in progress"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_4

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    :goto_3
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsphoneCallRinging:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsKeepRecoding:Z

    if-eqz v1, :cond_5

    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding O - call Ringing"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_3

    :cond_5
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    goto :goto_0

    :cond_6
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    goto/16 :goto_0

    :cond_7
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v1, :cond_8

    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_9

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    :goto_4
    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_4

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    cmp-long v1, v2, v10

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    invoke-direct {p0, v7}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAudioFocusChangeListener switch on mNeedResumeToFreq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    sget-boolean v1, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slowly increase the volume till :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->setVolume(J)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_5
    sput-boolean v7, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    :goto_6
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_a

    const-wide/32 v2, 0x155cc

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    :cond_a
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/FMPlayerNative;->tune(J)V

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.app.fm.auto.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "freq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    long-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-wide v10, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto/16 :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_b
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v2

    iget-wide v4, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    long-to-int v3, v4

    invoke-virtual {v1, v2, v3, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v1, v2, v3, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_6

    :cond_d
    const-string v1, "Not able to resume FM player"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private sendFMOFFBroadcast()V
    .locals 2

    .prologue
    const-string v1, "Sending broadcast FM is in OFF state"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.fm.player_lock.status.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendStopMusicCommandBroadcast()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    const-string v2, "com.sec.android.app.fm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "music command stop sent .."

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private setAFRMSSISamples(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAFRMSSISamples(I)V

    return-void
.end method

.method private setAFRMSSIThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAFRMSSIThreshold(I)V

    return-void
.end method

.method private setAFValid_th(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAFValid_th(I)V

    return-void
.end method

.method private setAF_th(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAF_th(I)V

    return-void
.end method

.method private setCFOTh12(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setCFOTh12(I)V

    return-void
.end method

.method private setCnt_th(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return-void
.end method

.method private setCnt_th_2(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    return-void
.end method

.method private setDEConstant(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setDEConstant(J)V

    return-void
.end method

.method private setFrequencyOffsetThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setFrequencyOffsetThreshold(I)V

    return-void
.end method

.method private setGoodChannelRMSSIThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setGoodChannelRMSSIThreshold(I)V

    return-void
.end method

.method private setHybridSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setHybridSearch(Ljava/lang/String;)V

    return-void
.end method

.method private setNoisePowerThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setNoisePowerThreshold(I)V

    return-void
.end method

.method private setOffChannelThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setOffChannelThreshold(I)V

    return-void
.end method

.method private setOnChannelThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setOnChannelThreshold(I)V

    return-void
.end method

.method private setPilotPowerThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setPilotPowerThreshold(I)V

    return-void
.end method

.method private setRMSSIFirstStage(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setRMSSIFirstStage(I)V

    return-void
.end method

.method private setRSSI_th(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return-void
.end method

.method private setRSSI_th_2(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    return-void
.end method

.method private setSINRFirstStage(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSINRFirstStage(I)V

    return-void
.end method

.method private setSINRSamples(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSINRSamples(I)V

    return-void
.end method

.method private setSINRThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSINRThreshold(I)V

    return-void
.end method

.method private setSNR_th(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return-void
.end method

.method private setSNR_th_2(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    return-void
.end method

.method private setSearchAlgoType(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSearchAlgoType(I)V

    return-void
.end method

.method private setSeekDC(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSeekDC(I)V

    return-void
.end method

.method private setSeekQA(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSeekQA(I)V

    return-void
.end method

.method private setSeekRSSI(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setSeekRSSI(J)V

    return-void
.end method

.method private setSeekSNR(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setSeekSNR(J)V

    return-void
.end method

.method private setSignalSetting(III)V
    .locals 1
    .param p1, "rssi"    # I
    .param p2, "snr"    # I
    .param p3, "cnt"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setRSSI_th(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p2}, Lcom/android/server/FMPlayerNative;->setSNR_th(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p3}, Lcom/android/server/FMPlayerNative;->setCnt_th(I)V

    goto :goto_0
.end method

.method private stopInternetStreaming()V
    .locals 4

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopInternetStreaming() - streamingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.dns.action.stop_internet_stream"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v2, 0x96

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private unRegisterBatteryListener()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "unregistering low battery listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private unRegisterMusicCommandRec()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "music command reciever un-registered"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private unRegisterSetPropertyListener()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "unregistering set property listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private unRegisterTelephonyListener()V
    .locals 5

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "id":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v2, "unregistering telephony listener"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private unregisterAlarmListener()V
    .locals 2

    .prologue
    const-string v0, "Unregistering Alarm play listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterAllSoundOffListener()V
    .locals 2

    .prologue
    const-string v0, "Unregistering AllSoundOff listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterEmegencyStateChangedListener()V
    .locals 2

    .prologue
    const-string v0, "Unregistering Emergency State Changed Listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mEmergencyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterSystemListener()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private writeFile(Z)V
    .locals 5
    .param p1, "isFmRadioOn"    # Z

    .prologue
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .local v2, "value":Ljava/lang/String;
    :goto_0
    sget-boolean v3, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFile: value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFile: data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, "bvalue":[B
    iget-object v3, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "bvalue":[B
    :cond_1
    :goto_1
    return-void

    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto :goto_0

    .restart local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public SetIsOn(Z)V
    .locals 0
    .param p1, "IsOn"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return-void
.end method

.method public cancelAFSwitching()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->cancelAFSwitching()V

    return-void
.end method

.method public cancelScan()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2}, Lcom/android/server/FMPlayerNative;->cancelSeek()V

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelSeek()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->cancelSeek()V

    return-void
.end method

.method public disableAF()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->disableAF()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    return-void
.end method

.method public disableDNS()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->disableDNS()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    return-void
.end method

.method public disableRDS()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->disableRDS()V

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    return-void
.end method

.method public enableAF()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-eqz v0, :cond_0

    const-string v0, "AF is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->enableAF()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    goto :goto_0
.end method

.method public enableDNS()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    if-eqz v0, :cond_0

    const-string v0, "DNS is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->enableDNS()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    goto :goto_0
.end method

.method public enableRDS()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-eqz v0, :cond_0

    const-string v0, "RDS is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->enableRDS()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

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
    invoke-super {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->finalize()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterSystemListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterSetPropertyListener()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentChannel()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCurrentChannel()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentRSSI()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCurrentRSSI()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentSNR()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCurrentSNR()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIntegerTunningParameter(Ljava/lang/String;I)I
    .locals 7
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIntegerTunningParameter: parameterName- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v5, v1

    :goto_0
    packed-switch v5, :pswitch_data_0

    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .end local p2    # "defaultValue":I
    :goto_2
    return p2

    .restart local p2    # "defaultValue":I
    :sswitch_0
    const-string v5, "RSSI_th"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_1
    const-string v5, "SNR_th"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_2
    const-string v5, "Cnt_th"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getRSSI_th()I

    move-result p2

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSNR_th()I

    move-result p2

    goto :goto_2

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getCnt_th()I

    move-result p2

    goto :goto_2

    :sswitch_3
    const-string v2, "SeekDC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_1

    :sswitch_4
    const-string v0, "SeekQA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSeekDC()I

    move-result p2

    goto :goto_2

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSeekQA()I

    move-result p2

    goto :goto_2

    :cond_2
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v5, v4, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2

    :cond_3
    :goto_3
    packed-switch v1, :pswitch_data_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_5
    const-string v2, "SearchAlgoType"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v0

    goto :goto_3

    :sswitch_6
    const-string v0, "SINRSamples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    goto :goto_3

    :sswitch_7
    const-string v0, "OnChannelThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v3

    goto :goto_3

    :sswitch_8
    const-string v0, "OffChannelThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    goto :goto_3

    :sswitch_9
    const-string v0, "SINRThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v4

    goto :goto_3

    :sswitch_a
    const-string v0, "CFOTh12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    goto :goto_3

    :sswitch_b
    const-string v0, "RMSSIFirstStage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    goto :goto_3

    :sswitch_c
    const-string v0, "SINRFirstStage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x7

    goto :goto_3

    :sswitch_d
    const-string v0, "AFRMSSIThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    goto :goto_3

    :sswitch_e
    const-string v0, "AFRMSSISamples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x9

    goto/16 :goto_3

    :sswitch_f
    const-string v0, "GoodChannelRMSSIThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    goto/16 :goto_3

    :sswitch_10
    const-string v0, "RSSI_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xb

    goto/16 :goto_3

    :sswitch_11
    const-string v0, "SNR_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xc

    goto/16 :goto_3

    :sswitch_12
    const-string v0, "Cnt_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xd

    goto/16 :goto_3

    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSearchAlgoType()I

    move-result p2

    goto/16 :goto_2

    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSINRSamples()I

    move-result p2

    goto/16 :goto_2

    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getOnChannelThreshold()I

    move-result p2

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getOffChannelThreshold()I

    move-result p2

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSINRThreshold()I

    move-result p2

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getCFOTh12()I

    move-result p2

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getRMSSIFirstStage()I

    move-result p2

    goto/16 :goto_2

    :pswitch_c
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSINRFirstStage()I

    move-result p2

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getAFRMSSIThreshold()I

    move-result p2

    goto/16 :goto_2

    :pswitch_e
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getAFRMSSISamples()I

    move-result p2

    goto/16 :goto_2

    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getGoodChannelRMSSIThreshold()I

    move-result p2

    goto/16 :goto_2

    :pswitch_10
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getRSSI_th_2()I

    move-result p2

    goto/16 :goto_2

    :pswitch_11
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSNR_th_2()I

    move-result p2

    goto/16 :goto_2

    :pswitch_12
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getCnt_th_2()I

    move-result p2

    goto/16 :goto_2

    :cond_4
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_3

    :cond_5
    :goto_4
    packed-switch v1, :pswitch_data_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_13
    const-string v2, "AF_th"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v0

    goto :goto_4

    :sswitch_14
    const-string v0, "AFValid_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    goto :goto_4

    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getAF_th()I

    move-result p2

    goto/16 :goto_2

    :pswitch_14
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getAFValid_th()I

    move-result p2

    goto/16 :goto_2

    :cond_6
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_4

    :cond_7
    move v0, v1

    :goto_5
    packed-switch v0, :pswitch_data_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_15
    const-string v2, "FrequencyOffset_th"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_5

    :sswitch_16
    const-string v0, "NoisePower_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_5

    :sswitch_17
    const-string v0, "PilotPower_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_5

    :pswitch_15
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getFrequencyOffsetThreshold()I

    move-result p2

    goto/16 :goto_2

    :pswitch_16
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getNoisePowerThreshold()I

    move-result p2

    goto/16 :goto_2

    :pswitch_17
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getPilotPowerThreshold()I

    move-result p2

    goto/16 :goto_2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntegerTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x7bea88a4 -> :sswitch_0
        -0x6debe1a4 -> :sswitch_1
        0x7898f92a -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6c9efae9 -> :sswitch_3
        -0x6c9ef958 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7795fd00 -> :sswitch_e
        -0x6097aadd -> :sswitch_f
        -0x57b635eb -> :sswitch_5
        -0x4bc61798 -> :sswitch_c
        -0x49c09da3 -> :sswitch_12
        -0x401789e9 -> :sswitch_8
        -0x2b6ae3f1 -> :sswitch_10
        0x2487eac7 -> :sswitch_7
        0x3471400f -> :sswitch_6
        0x3eabfaf1 -> :sswitch_9
        0x5435ba01 -> :sswitch_a
        0x5d86030f -> :sswitch_11
        0x6cdb6a9c -> :sswitch_b
        0x777fc5a2 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x3b53cce -> :sswitch_13
        0x407f88dc -> :sswitch_14
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x793b6ef8 -> :sswitch_16
        -0x2cd46d5a -> :sswitch_17
        0x40effc4 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public getLastScanResult()[J
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .local v0, "arryL":[Ljava/lang/Long;
    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v1

    .end local v0    # "arryL":[Ljava/lang/Long;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "getLastScanResult - mScanChannelList null"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLongTunningParameter(Ljava/lang/String;J)J
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "long getLongTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLongTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .end local p2    # "defaultValue":J
    :goto_1
    return-wide p2

    .restart local p2    # "defaultValue":J
    :sswitch_0
    const-string v1, "CurrentSNR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "CurrentRSSI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentSNR()J

    move-result-wide p2

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentRSSI()J

    move-result-wide p2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x78c176d0 -> :sswitch_1
        0x35e9415e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMaxVolume()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getMaxVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayedFreq()J
    .locals 2

    .prologue
    sget-wide v0, Lcom/android/server/FMRadioService;->curFreq:J

    return-wide v0
.end method

.method public getSoftMuteMode()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSoftMuteMode()Z

    move-result v0

    return v0
.end method

.method public getStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_1
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :pswitch_0
    const-string v1, "HybridSearch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getHybridSearch()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x12b0651c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getVolume()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAFEnable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    return v0
.end method

.method public isAirPlaneMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return v0
.end method

.method public isBatteryLow()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return v0
.end method

.method public isBusy()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isDNSEnable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    return v0
.end method

.method public isHeadsetPlugged()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return v0
.end method

.method public isRDSEnable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    return v0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return v0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    return v0
.end method

.method public isTvOutPlugged()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return v0
.end method

.method public mute(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mute - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_radio_mute=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->muteOn()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->muteOff()V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_radio_mute=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    goto :goto_0
.end method

.method public notifyEvent(ILjava/lang/Object;)V
    .locals 22
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    const-string v15, "fmradio_turnon=true"

    .local v15, "keyValuePairs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v2, "notifyEvent Turning on FM radio"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Long;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/FMRadioService;->sendFMStatusBroadcast(Ljava/lang/Long;)V

    .end local v15    # "keyValuePairs":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v20

    .local v20, "size":I
    add-int/lit8 v14, v20, -0x1

    .local v14, "i":I
    :goto_1
    if-ltz v14, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_2
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    :pswitch_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_POWER_ON to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioEnabled()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "we loose "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " listener--ignore it :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove done go for next i\'s value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v10    # "e":Ljava/lang/Exception;
    .end local v14    # "i":I
    .end local v20    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v14    # "i":I
    .restart local v20    # "size":I
    :pswitch_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_POWER_OFF to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/16 v18, -0x1

    .local v18, "reasonCode":I
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDisabled(I)V

    goto/16 :goto_2

    .end local v18    # "reasonCode":I
    :pswitch_2
    const-wide/16 v12, 0x0

    .local v12, "freq":J
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :cond_5
    sget-boolean v2, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_CHANNEL_FOUND to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : with freq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v12, v13}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onChannelFound(J)V

    goto/16 :goto_2

    .end local v12    # "freq":J
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_SCAN_STARTED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanStarted()V

    goto/16 :goto_2

    :pswitch_4
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    check-cast v0, [Ljava/lang/Long;

    move-object v2, v0

    move-object v0, v2

    check-cast v0, [Ljava/lang/Long;

    move-object v9, v0

    .local v9, "Ifreq":[Ljava/lang/Long;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v11

    .local v11, "freqArry":[J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_SCAN_STOPPED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : with data array:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v11}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanStopped([J)V

    goto/16 :goto_2

    .end local v9    # "Ifreq":[Ljava/lang/Long;
    .end local v11    # "freqArry":[J
    :cond_7
    const-string v2, "notifying : EVENT_SCAN_STOPPED : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_5
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    check-cast v0, [Ljava/lang/Long;

    move-object v2, v0

    move-object v0, v2

    check-cast v0, [Ljava/lang/Long;

    move-object v9, v0

    .restart local v9    # "Ifreq":[Ljava/lang/Long;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v11

    .restart local v11    # "freqArry":[J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_SCAN_FINISHED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : with data array:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v11}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanFinished([J)V

    goto/16 :goto_2

    .end local v9    # "Ifreq":[Ljava/lang/Long;
    .end local v11    # "freqArry":[J
    :cond_8
    const-string v2, "notifying : EVENT_SCAN_FINISHED : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_6
    if-eqz p2, :cond_a

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .restart local v12    # "freq":J
    sput-wide v12, Lcom/android/server/FMRadioService;->curFreq:J

    sget-boolean v2, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_TUNE to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : with data array:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v12, v13}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onTuned(J)V

    goto/16 :goto_2

    .end local v12    # "freq":J
    :cond_a
    const-string v2, "notifying : EVENT_TUNE : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_EAR_PHONE_CONNECT to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onHeadsetConnected()V

    goto/16 :goto_2

    :pswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_EAR_PHONE_DISCONNECT to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onHeadsetDisconnected()V

    goto/16 :goto_2

    :pswitch_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying : EVENT_RDS_EVENT : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_b

    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNative$RDSData;

    move-object/from16 v17, v0

    .local v17, "rdsData":Lcom/android/server/FMPlayerNative$RDSData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/server/FMPlayerNative$RDSData;->mFreq:J

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/FMPlayerNative$RDSData;->mChannelName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/FMPlayerNative$RDSData;->mRadioText:Ljava/lang/String;

    invoke-interface {v2, v4, v5, v3, v6}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v17    # "rdsData":Lcom/android/server/FMPlayerNative$RDSData;
    :cond_b
    const-string v2, "notifying : EVENT_RDS_EVENT : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_RTPLUS_EVENT to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_c

    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNative$RTPlusData;

    move-object/from16 v19, v0

    .local v19, "rtplusData":Lcom/android/server/FMPlayerNative$RTPlusData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mContentType1:I

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mStartPos1:I

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mAdditionalLen1:I

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mContentType2:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mStartPos2:I

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mAdditionalLen2:I

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioTextPlusReceived(IIIIII)V

    goto/16 :goto_2

    .end local v19    # "rtplusData":Lcom/android/server/FMPlayerNative$RTPlusData;
    :cond_c
    const-string v2, "notifying : EVENT_RTPLUS_EVENT : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_b
    if-eqz p2, :cond_d

    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNative$PIECCData;

    move-object/from16 v16, v0

    .local v16, "pieccData":Lcom/android/server/FMPlayerNative$PIECCData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/FMPlayerNative$PIECCData;->mPI:I

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/FMPlayerNative$PIECCData;->mECC:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onProgrammeIdentificationExtendedCountryCodesReceived(II)V

    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v3

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2

    .end local v16    # "pieccData":Lcom/android/server/FMPlayerNative$PIECCData;
    :cond_d
    const-string v2, "notifying : EVENT_PIECC_EVENT : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_RDS_ENABLED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemEnabled()V

    goto/16 :goto_2

    :pswitch_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_RDS_DISABLED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemDisabled()V

    goto/16 :goto_2

    :pswitch_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_AF_STARTED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onAlternateFrequencyStarted()V

    goto/16 :goto_2

    :pswitch_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_AF_RECEIVED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .restart local v12    # "freq":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v12, v13}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onAlternateFrequencyReceived(J)V

    goto/16 :goto_2

    .end local v12    # "freq":J
    :cond_e
    const-string v2, "notifying : EVENT_AF_RECEIVED : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_VOLUME_LOCK to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onVolumeLocked()V

    goto/16 :goto_2

    :pswitch_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying :EVENT_REC_FINISH to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRecordingFinished()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :cond_f
    :try_start_6
    monitor-exit v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_a
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method

.method public notifyRecFinish()V
    .locals 3

    .prologue
    const-string v1, "notifyRecFinish EVENT_REC_FINISH"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const-string v0, "fmradio_recoding=off"

    .local v0, "keyValuePairs":Ljava/lang/String;
    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public off()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    move-result v0

    return v0
.end method

.method public on()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized on_in_testmode()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    const-string v5, "factory"

    const-string v6, "ro.factory.factory_binary"

    const-string v7, "Unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .local v1, "isFactoryBinary":Z
    if-nez v1, :cond_1

    const-string v4, "on_in_testmode is called with normal binary. This function is only for Factory binary. So just return"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    :try_start_1
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eq v5, v4, :cond_0

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v5}, Lcom/android/server/FMPlayerNative;->on()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/FMRadioService;->mute(Z)V

    const-string v2, "fmradio_turnon=true"

    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v5, "on_in_testmode Turning on FM radio"

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    .end local v2    # "keyValuePairs":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "isFactoryBinary":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public removeListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FMRadioService] (removeListener) :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    goto :goto_0
.end method

.method public scan()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    new-instance v0, Lcom/android/server/FMRadioService$ScanThread;

    invoke-direct {v0, p0}, Lcom/android/server/FMRadioService$ScanThread;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public searchAll()J
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->searchAll()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public searchDown()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->searchDown()J

    move-result-wide v0

    return-wide v0
.end method

.method public searchUp()J
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->searchUp()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public seekDown()J
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=1"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v3}, Lcom/android/server/FMPlayerNative;->seekDown()J

    move-result-wide v0

    .local v0, "freq":J
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v5}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=0"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    const/4 v3, 0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-wide v0

    .end local v0    # "freq":J
    :cond_1
    const-string v2, "fmradio_turnon=false"

    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seekUp()J
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=1"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v3}, Lcom/android/server/FMPlayerNative;->seekUp()J

    move-result-wide v0

    .local v0, "freq":J
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v5}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=0"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    const/4 v3, 0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-wide v0

    .end local v0    # "freq":J
    :cond_1
    const-string v2, "fmradio_turnon=false"

    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendFMStatusBroadcast(Ljava/lang/Long;)V
    .locals 5
    .param p1, "freq"    # Ljava/lang/Long;

    .prologue
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v0, v2, v3

    .local v0, "currentFreq":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    const/high16 v0, 0x42af0000    # 87.5f

    :cond_0
    sget-boolean v2, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending broadcast tune currentFreq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.fm.player_lock.tune.channel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "freq"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setBand(I)V
    .locals 1
    .param p1, "band"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setBand(I)V

    iput p1, p0, Lcom/android/server/FMRadioService;->mBand:I

    return-void
.end method

.method public setChannelSpacing(I)V
    .locals 1
    .param p1, "spacing"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setChannelSpacing(I)V

    return-void
.end method

.method public setFMIntenna(Z)V
    .locals 1
    .param p1, "setFMIntenna"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setFMIntenna(Z)V

    return-void
.end method

.method public setIntegerTunningParameter(Ljava/lang/String;I)V
    .locals 7
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setIntegerTunningParameter:  parameterName- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value:- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v5, v1

    :goto_0
    packed-switch v5, :pswitch_data_0

    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_2
    return-void

    :sswitch_0
    const-string v5, "RSSI_th"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_1
    const-string v5, "SNR_th"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_2
    const-string v5, "Cnt_th"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_3
    const-string v5, "SkipTuningValue"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setRSSI_th(I)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSNR_th(I)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setCnt_th(I)V

    goto :goto_2

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->SkipTuning_Value()V

    goto :goto_2

    :sswitch_4
    const-string v2, "SeekDC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_1

    :sswitch_5
    const-string v0, "SeekQA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSeekDC(I)V

    goto :goto_2

    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSeekQA(I)V

    goto :goto_2

    :cond_2
    iget v5, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2

    :cond_3
    :goto_3
    packed-switch v1, :pswitch_data_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_6
    const-string v2, "SearchAlgoType"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v0

    goto :goto_3

    :sswitch_7
    const-string v0, "SINRSamples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    goto :goto_3

    :sswitch_8
    const-string v0, "OnChannelThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v3

    goto :goto_3

    :sswitch_9
    const-string v0, "OffChannelThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v4

    goto :goto_3

    :sswitch_a
    const-string v0, "SINRThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    goto :goto_3

    :sswitch_b
    const-string v0, "CFOTh12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    goto :goto_3

    :sswitch_c
    const-string v0, "RMSSIFirstStage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    goto :goto_3

    :sswitch_d
    const-string v0, "SINRFirstStage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x7

    goto :goto_3

    :sswitch_e
    const-string v0, "AFRMSSIThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    goto/16 :goto_3

    :sswitch_f
    const-string v0, "AFRMSSISamples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x9

    goto/16 :goto_3

    :sswitch_10
    const-string v0, "GoodChannelRMSSIThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    goto/16 :goto_3

    :sswitch_11
    const-string v0, "RSSI_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xb

    goto/16 :goto_3

    :sswitch_12
    const-string v0, "SNR_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xc

    goto/16 :goto_3

    :sswitch_13
    const-string v0, "Cnt_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xd

    goto/16 :goto_3

    :pswitch_6
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSearchAlgoType(I)V

    goto/16 :goto_2

    :pswitch_7
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSINRSamples(I)V

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setOnChannelThreshold(I)V

    goto/16 :goto_2

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p2}, Lcom/android/server/FMPlayerNative;->setOffChannelThreshold(I)V

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSINRThreshold(I)V

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setCFOTh12(I)V

    goto/16 :goto_2

    :pswitch_c
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setRMSSIFirstStage(I)V

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSINRFirstStage(I)V

    goto/16 :goto_2

    :pswitch_e
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setAFRMSSIThreshold(I)V

    goto/16 :goto_2

    :pswitch_f
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setAFRMSSISamples(I)V

    goto/16 :goto_2

    :pswitch_10
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setGoodChannelRMSSIThreshold(I)V

    goto/16 :goto_2

    :pswitch_11
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setRSSI_th_2(I)V

    goto/16 :goto_2

    :pswitch_12
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSNR_th_2(I)V

    goto/16 :goto_2

    :pswitch_13
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setCnt_th_2(I)V

    goto/16 :goto_2

    :cond_4
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_3

    :cond_5
    :goto_4
    packed-switch v1, :pswitch_data_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_14
    const-string v2, "AF_th"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v0

    goto :goto_4

    :sswitch_15
    const-string v0, "AFValid_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    goto :goto_4

    :pswitch_14
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setAF_th(I)V

    goto/16 :goto_2

    :pswitch_15
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setAFValid_th(I)V

    goto/16 :goto_2

    :cond_6
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_4

    :cond_7
    move v0, v1

    :goto_5
    packed-switch v0, :pswitch_data_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_16
    const-string v2, "FrequencyOffset_th"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_5

    :sswitch_17
    const-string v0, "NoisePower_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_5

    :sswitch_18
    const-string v0, "PilotPower_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_5

    :pswitch_16
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setFrequencyOffsetThreshold(I)V

    goto/16 :goto_2

    :pswitch_17
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setNoisePowerThreshold(I)V

    goto/16 :goto_2

    :pswitch_18
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setPilotPowerThreshold(I)V

    goto/16 :goto_2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIntegerTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bea88a4 -> :sswitch_0
        -0x6debe1a4 -> :sswitch_1
        -0x3ba8f63 -> :sswitch_3
        0x7898f92a -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6c9efae9 -> :sswitch_4
        -0x6c9ef958 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7795fd00 -> :sswitch_f
        -0x6097aadd -> :sswitch_10
        -0x57b635eb -> :sswitch_6
        -0x4bc61798 -> :sswitch_d
        -0x49c09da3 -> :sswitch_13
        -0x401789e9 -> :sswitch_9
        -0x2b6ae3f1 -> :sswitch_11
        0x2487eac7 -> :sswitch_8
        0x3471400f -> :sswitch_7
        0x3eabfaf1 -> :sswitch_a
        0x5435ba01 -> :sswitch_b
        0x5d86030f -> :sswitch_12
        0x6cdb6a9c -> :sswitch_c
        0x777fc5a2 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x3b53cce -> :sswitch_14
        0x407f88dc -> :sswitch_15
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_14
        :pswitch_15
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x793b6ef8 -> :sswitch_17
        -0x2cd46d5a -> :sswitch_18
        0x40effc4 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public setInternetStreamingMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInternetStreamingMode :: mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->setVolume(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->setVolume(J)V

    goto :goto_0
.end method

.method public setListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadioService] setListener :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    :cond_0
    new-instance v0, Lcom/android/server/FMRadioService$ListenerRecord;

    invoke-interface {p1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/FMRadioService$ListenerRecord;-><init>(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;Landroid/os/IBinder;)V

    .local v0, "record":Lcom/android/server/FMRadioService$ListenerRecord;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no of listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    monitor-exit p1

    .end local v0    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLongTunningParameter(Ljava/lang/String;J)V
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "long setLongTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLongTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_0
    const-string v1, "SeekRSSI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "SeekSNR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "DEConstant"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSeekRSSI(J)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSeekSNR(J)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setDEConstant(J)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4409c0bb -> :sswitch_2
        -0x27402841 -> :sswitch_1
        0x3f3abeef -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMono()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->setMono()V

    return-void
.end method

.method public setRecordMode(Z)V
    .locals 2
    .param p1, "isRecord"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "value":I
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v1, v0}, Lcom/android/server/FMPlayerNative;->setRecordMode(I)V

    return-void
.end method

.method public setSoftMuteControl(III)V
    .locals 1
    .param p1, "min_RSSI"    # I
    .param p2, "max_RSSI"    # I
    .param p3, "max_attenuation"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/FMPlayerNative;->setSoftMuteControl(III)V

    return-void
.end method

.method public setSoftmute(Z)V
    .locals 1
    .param p1, "setSoftmute"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSoftmute(Z)V

    return-void
.end method

.method public setSpeakerOn(Z)V
    .locals 1
    .param p1, "bSpeakerOn"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSpeakerOn(Z)V

    return-void
.end method

.method public setStereo()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->setStereo()V

    return-void
.end method

.method public setStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStringTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStringTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    const-string v1, "HybridSearch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setHybridSearch(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStringTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x12b0651c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setVolume(J)V
    .locals 9
    .param p1, "val"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v2, :cond_2

    const-string v2, "setVolume :: unset on ScanProgress"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/FMPlayerNative;->setVolume(J)V

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "all_sound_off"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "IsEnabledAllSoundOff":I
    if-ne v0, v5, :cond_3

    const-string v2, "setVolume :: AllSoundOff is enabled. So FMRadio is muted."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "IsEnabledAllSoundOff":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "IsEnabledAllSoundOff":I
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    cmp-long v2, p1, v6

    if-gtz v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/FMPlayerNative;->setVolume(J)V

    goto :goto_0

    .end local v0    # "IsEnabledAllSoundOff":I
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNative;->setVolume(J)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public tune(J)V
    .locals 7
    .param p1, "freq"    # J

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v1, v5, :cond_1

    const-string v1, "tune mute - "

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "fm_radio_mute=1"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/FMPlayerNative;->tune(J)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v4}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "all_sound_off"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_0

    const-string v1, "tune unmute - "

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "fm_radio_mute=0"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNative;->muteOff()V

    :cond_0
    const/4 v1, 0x7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "fmradio_turnon=false"

    .local v0, "keyValuePairs":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method
