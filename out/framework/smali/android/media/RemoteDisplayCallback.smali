.class public final Landroid/media/RemoteDisplayCallback;
.super Ljava/lang/Object;
.source "RemoteDisplayCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteDisplayCallback$1;,
        Landroid/media/RemoteDisplayCallback$Listener;,
        Landroid/media/RemoteDisplayCallback$WfdStateReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteDisplayCallback"

.field private static mAudioManager:Landroid/media/AudioManager; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mCpuBooster:Landroid/os/DVFSHelper; = null

.field private static mCpuLockEnabled:Z = false

.field private static final mDefaultFreq:I = 0xf4240

.field private static mDongleVer:Ljava/lang/String;

.field private static mHdcpSuspend:Z

.field private static mIsVideoCase:Z

.field private static mListener:Landroid/media/RemoteDisplayCallback$Listener;

.field private static mRemoteIP:Ljava/lang/String;

.field private static mRenameCapablity:Z

.field private static mUibcAvailable:Z

.field private static mUibcSinkVer:Ljava/lang/String;

.field private static mUpdateURL:Ljava/lang/String;

.field private static mWfdMode:I


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStreamVol:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    .line 51
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    .line 55
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    .line 57
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 58
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mRenameCapablity:Z

    .line 59
    sput v1, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    .line 60
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    .line 63
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mHdcpSuspend:Z

    .line 66
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mUibcAvailable:Z

    .line 67
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mUibcSinkVer:Ljava/lang/String;

    .line 71
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 72
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    .line 74
    iput-object v2, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.MAR_SLAVE_SMB"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    new-instance v1, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;

    invoke-direct {v1, p0, v2}, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;-><init>(Landroid/media/RemoteDisplayCallback;Landroid/media/RemoteDisplayCallback$1;)V

    iput-object v1, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    return-void
.end method

.method private StartHDCPSuspend()V
    .locals 4

    .prologue
    .line 364
    const-string v2, "RemoteDisplayCallback"

    const-string v3, "StartHDCPSuspend"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 367
    .local v0, "r":Landroid/content/res/Resources;
    const v2, 0x10408fe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    .local v1, "title":Ljava/lang/String;
    const-string/jumbo v2, "sus"

    invoke-direct {p0, v2, v1}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 369
    return-void
.end method

.method static synthetic access$100()Landroid/media/RemoteDisplayCallback$Listener;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 48
    sget v0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 48
    sput p0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    return p0
.end method

.method static synthetic access$400(Landroid/media/RemoteDisplayCallback;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;

    .prologue
    .line 48
    iget v0, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    return v0
.end method

.method static synthetic access$402(Landroid/media/RemoteDisplayCallback;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    return v0
.end method

.method static synthetic access$600()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private broadcastDongleUpdateUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "Url"    # Ljava/lang/String;

    .prologue
    .line 341
    const-string v1, "RemoteDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDongleUpdateUrl << Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 345
    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 348
    return-void
.end method

.method private broadcastDongleVerToFota(Ljava/lang/String;)V
    .locals 4
    .param p1, "Ver"    # Ljava/lang/String;

    .prologue
    .line 325
    const-string v1, "RemoteDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDongleVerToFota << Ver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.START_WFD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 331
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 335
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 337
    return-void
.end method

.method private broadcastWfdConnectionType(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 352
    const-string v1, "RemoteDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastWfdConnectionType mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 356
    const-string v1, "CONNECTION_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 359
    return-void
.end method

.method private lockCPUFreq(I)V
    .locals 9
    .param p1, "minLockFreq"    # I

    .prologue
    .line 127
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 136
    new-instance v5, Landroid/os/DVFSHelper;

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    const/16 v7, 0xc

    invoke-direct {v5, v6, v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 138
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v5, :cond_2

    .line 139
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v4

    .line 140
    .local v4, "supportedCPUFreqTable":[I
    const/4 v3, 0x0

    .line 142
    .local v3, "minIdx":I
    if-eqz v4, :cond_2

    .line 143
    const/4 v5, 0x0

    aget v5, v4, v5

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 144
    .local v2, "min":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 145
    aget v5, v4, v1

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v2, v5, :cond_0

    .line 146
    aget v5, v4, v1

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 147
    move v3, v1

    .line 144
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_1
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v6, "CPU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_0
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_1
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WFD lock DVFS_MIN_LIMIT :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v5, 0x1

    sput-boolean v5, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    .line 164
    .end local v1    # "i":I
    .end local v2    # "min":I
    .end local v3    # "minIdx":I
    .end local v4    # "supportedCPUFreqTable":[I
    :cond_2
    return-void

    .line 155
    .restart local v1    # "i":I
    .restart local v2    # "min":I
    .restart local v3    # "minIdx":I
    .restart local v4    # "supportedCPUFreqTable":[I
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "RemoteDisplayCallback"

    const-string v6, "cpuBooster.acquire is failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private sendCmd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 190
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 193
    .local v1, "mParam":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    .line 199
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    const/4 v1, 0x0

    .line 201
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;Landroid/media/RemoteDisplayCallback$Listener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/media/RemoteDisplayCallback$Listener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 83
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 84
    sput-object p0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    .line 87
    :cond_0
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 88
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    .line 91
    :cond_1
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-nez v0, :cond_2

    .line 92
    sput-object p1, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    .line 95
    :cond_2
    sput-object v2, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    .line 96
    sput-object v2, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    .line 98
    sput-object v2, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 99
    sput v3, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    .line 101
    sput-boolean v3, Landroid/media/RemoteDisplayCallback;->mHdcpSuspend:Z

    .line 103
    const-string v0, "RemoteDisplayCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mContext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAudioManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method private unlockCPUFreq()V
    .locals 3

    .prologue
    .line 167
    sget-boolean v1, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 177
    :try_start_0
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 183
    const-string v1, "RemoteDisplayCallback"

    const-string v2, "Wfd release DVFS_MIN_LIMIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v1, 0x0

    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    .line 186
    :cond_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RemoteDisplayCallback"

    const-string/jumbo v2, "mDVFSLock.release is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isDongleRenameAvailable()Z
    .locals 1

    .prologue
    .line 206
    sget-boolean v0, Landroid/media/RemoteDisplayCallback;->mRenameCapablity:Z

    return v0
.end method

.method public onNoti(ILjava/lang/String;)V
    .locals 13
    .param p1, "msg"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 390
    const-string v10, "RemoteDisplayCallback"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onNoti << msg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " data:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    sparse-switch p1, :sswitch_data_0

    .line 569
    const-string v8, "RemoteDisplayCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "check!! << msg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 394
    :sswitch_1
    const-string v8, "RemoteDisplayCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 397
    .local v4, "mNoti":Lorg/json/JSONObject;
    const-string/jumbo v8, "remoteIP"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    .line 398
    const-string/jumbo v8, "sink_ver"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 399
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    const-string v9, "AA00"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 400
    const/4 v8, 0x0

    sput-object v8, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 402
    :cond_1
    const-string/jumbo v8, "wlan.wfd.dongle"

    sget-object v9, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string/jumbo v8, "renameAvailable"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Landroid/media/RemoteDisplayCallback;->mRenameCapablity:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .end local v4    # "mNoti":Lorg/json/JSONObject;
    :goto_1
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    invoke-direct {p0, v8}, Landroid/media/RemoteDisplayCallback;->broadcastDongleVerToFota(Ljava/lang/String;)V

    .line 415
    const-string v8, "RemoteDisplayCallback"

    const-string v9, "WFD client connected broadcast sent"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Lorg/json/JSONException;
    const-string v8, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 420
    .end local v0    # "e":Lorg/json/JSONException;
    :sswitch_2
    const-string v8, "RemoteDisplayCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.sec.android.smartview.WFD_ENGINE_RESUME"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 427
    :sswitch_3
    const-string v8, "RemoteDisplayCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.sec.android.smartview.WFD_ENGINE_PAUSE"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 443
    :sswitch_4
    sget-object v10, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_0

    .line 444
    sget v7, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    .line 445
    .local v7, "prevWfdMode":I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    .line 446
    if-nez v7, :cond_6

    sget v10, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    if-ne v10, v9, :cond_6

    .line 447
    sput-boolean v9, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    .line 451
    :goto_2
    const-string v10, "RemoteDisplayCallback"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onNoti received : WFD_NOTI_TO_APP_TRANSPORT_MODE, prevWfdMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mWfdMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mIsVideoCase = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    sget v10, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    if-ne v10, v9, :cond_5

    .line 461
    sget-object v10, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    const-string v11, "audioParam;outDevice"

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 464
    .local v1, "isRSubmix":Z
    if-eqz v6, :cond_2

    const-string v10, ""

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 470
    :cond_2
    :goto_3
    if-nez v1, :cond_3

    sget-boolean v8, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    if-eqz v8, :cond_3

    .line 471
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v8, :cond_3

    .line 472
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v8}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V

    .line 477
    :cond_3
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v8, :cond_4

    .line 478
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    iput v8, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    .line 480
    :cond_4
    const-string v8, "RemoteDisplayCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get native STREAM_MUSIC volume :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v8, "RemoteDisplayCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "send command: curr stream vol @ tcp start! << "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string/jumbo v8, "vol"

    iget v9, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    .end local v1    # "isRSubmix":Z
    .end local v6    # "path":Ljava/lang/String;
    :cond_5
    sget v8, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    invoke-direct {p0, v8}, Landroid/media/RemoteDisplayCallback;->broadcastWfdConnectionType(I)V

    .line 489
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v8, :cond_0

    .line 490
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    sget v9, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    invoke-interface {v8, v9}, Landroid/media/RemoteDisplayCallback$Listener;->onTransportChanged(I)V

    goto/16 :goto_0

    .line 449
    :cond_6
    sput-boolean v8, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    goto/16 :goto_2

    .line 466
    .restart local v1    # "isRSubmix":Z
    .restart local v6    # "path":Ljava/lang/String;
    :cond_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const v11, 0x8000

    and-int/2addr v10, v11

    if-nez v10, :cond_8

    move v1, v8

    .line 467
    :goto_4
    const-string v8, "RemoteDisplayCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isRSubmix :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_8
    move v1, v9

    .line 466
    goto :goto_4

    .line 500
    .end local v1    # "isRSubmix":Z
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "prevWfdMode":I
    :sswitch_5
    const-string v8, "RemoteDisplayCallback"

    const-string v9, "Noti2App_UIBC Data: "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 503
    .local v5, "mUibcNoti":Lorg/json/JSONObject;
    const-string v8, "UibcAvailable"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Landroid/media/RemoteDisplayCallback;->mUibcAvailable:Z

    .line 504
    const-string v8, "RemoteDisplayCallback"

    const-string v9, "Calling starStopUIBCVirtualSoftkey"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget-boolean v8, Landroid/media/RemoteDisplayCallback;->mUibcAvailable:Z

    invoke-virtual {p0, v8}, Landroid/media/RemoteDisplayCallback;->startStopUIBCVirtualSoftkey(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 510
    .end local v5    # "mUibcNoti":Lorg/json/JSONObject;
    :goto_5
    const-string v8, "RemoteDisplayCallback"

    const-string v9, "BroadCast UIBC Data"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 506
    :catch_1
    move-exception v0

    .line 507
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v8, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 513
    .end local v0    # "e":Lorg/json/JSONException;
    :sswitch_6
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_0

    .line 515
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 516
    .restart local v4    # "mNoti":Lorg/json/JSONObject;
    const-string v8, "SinkFwUrl"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 520
    .end local v4    # "mNoti":Lorg/json/JSONObject;
    :goto_6
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    invoke-direct {p0, v8}, Landroid/media/RemoteDisplayCallback;->broadcastDongleUpdateUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 517
    :catch_2
    move-exception v0

    .line 518
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v8, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 525
    .end local v0    # "e":Lorg/json/JSONException;
    :sswitch_7
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_0

    .line 526
    const-string v8, "RemoteDisplayCallback"

    const-string v9, "WFD noti to App - weak network connection.."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v8, :cond_0

    .line 528
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v8}, Landroid/media/RemoteDisplayCallback$Listener;->onWeakNetwork()V

    goto/16 :goto_0

    .line 534
    :sswitch_8
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_0

    .line 535
    const/4 v3, 0x0

    .line 537
    .local v3, "level":I
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 538
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v8, "level"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    .line 543
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :goto_7
    const-string v8, "RemoteDisplayCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WFD noti to App - update QoS level : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v8, :cond_0

    .line 546
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v8, v3}, Landroid/media/RemoteDisplayCallback$Listener;->onQoSLevelChanged(I)V

    goto/16 :goto_0

    .line 539
    :catch_3
    move-exception v0

    .line 540
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v8, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 552
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "level":I
    :sswitch_9
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_0

    .line 553
    const-string v8, "RemoteDisplayCallback"

    const-string v9, "WFD noti to App - WFD_NOTI_TO_APP_HEADSET_CONNECTED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v8, :cond_0

    .line 555
    sget-object v8, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v8}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V

    goto/16 :goto_0

    .line 392
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x7 -> :sswitch_4
        0x9 -> :sswitch_5
        0x14 -> :sswitch_6
        0x1e -> :sswitch_7
        0x28 -> :sswitch_8
        0x32 -> :sswitch_9
        0x64 -> :sswitch_0
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 211
    const-string v0, "RemoteDisplayCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string/jumbo v0, "res"

    invoke-direct {p0, v0, p1}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public startStopUIBCVirtualSoftkey(Z)V
    .locals 6
    .param p1, "isStart"    # Z

    .prologue
    .line 374
    const-string v3, "RemoteDisplayCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startStopUIBCVirtualSoftkey() isStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.uibcvirtualsoftkey"

    const-string v4, "com.sec.android.uibcvirtualsoftkey.UIBCVirtualSoftkeyService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.UIBCVIRTUALSOFTKEY_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 378
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "Start"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 379
    sget-object v3, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 378
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 380
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "RemoteDisplayCallback"

    const-string v4, "Exception showHideUIBCVirtualSoftkey() : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
