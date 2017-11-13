.class public Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
.super Ljava/lang/Object;
.source "BargeInRecognizer.java"


# static fields
.field public static final STATE_READY:I = 0x0

.field public static final STATE_RUNNING:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final SVOICE_LANGUAGE_FILE:Ljava/lang/String;

.field private audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

.field private audio_thread:Ljava/lang/Thread;

.field private handler:Landroid/os/Handler;

.field private intBargeInResult:I

.field public isEnableBargeIn:Z

.field private isEnableChineseBargeIn:Z

.field private isEnableExtraRussian:Z

.field private isEnableExtraSpanish:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

.field private mState:I

.field private mStopHandler:Landroid/os/Handler;

.field private samsungOOVResult:Z

.field private uselanguage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    .line 31
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 32
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mListener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 33
    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 38
    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    .line 39
    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableExtraSpanish:Z

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableExtraRussian:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->samsungOOVResult:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    .line 48
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    .line 49
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mStopHandler:Landroid/os/Handler;

    .line 51
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mContext:Landroid/content/Context;

    .line 53
    const-string v0, "/data/data/com.vlingo.midas/files/language.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->SVOICE_LANGUAGE_FILE:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    .line 31
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 32
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mListener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 33
    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 38
    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    .line 39
    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableExtraSpanish:Z

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableExtraRussian:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->samsungOOVResult:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    .line 48
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    .line 49
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mStopHandler:Landroid/os/Handler;

    .line 51
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mContext:Landroid/content/Context;

    .line 53
    const-string v0, "/data/data/com.vlingo.midas/files/language.bin"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->SVOICE_LANGUAGE_FILE:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mContext:Landroid/content/Context;

    .line 69
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BargeInRecognizer get Context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->init()V

    .line 71
    return-void
.end method

.method private SendHandlerMessage(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 116
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 120
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "commandType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 124
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 125
    sget-object v2, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "sendMessageDelayed : 1500"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 132
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 128
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_1
    sget-object v2, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "sendMessageDelayed : 700"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mStopHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;ILandroid/os/Handler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Handler;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->delayedStartBargeIn(ILandroid/os/Handler;)V

    return-void
.end method

.method private delayedStartBargeIn(ILandroid/os/Handler;)V
    .locals 6
    .param p1, "commandType"    # I
    .param p2, "stopHandler"    # Landroid/os/Handler;

    .prologue
    .line 208
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "delayedStartBargeIn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "BargeIn is running. So Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-short v2, v0, v1

    .line 235
    :goto_0
    monitor-exit p0

    .line 236
    return-void

    .line 215
    :cond_0
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mListener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    const-string v2, "/system/voicebargeindata"

    iget v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    iget-boolean v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->samsungOOVResult:Z

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;-><init>(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;Ljava/lang/String;IIZ)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->setHandler(Landroid/os/Handler;)V

    .line 220
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 223
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 224
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState change to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 226
    :cond_1
    :try_start_1
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "fail to running Bargein"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->stop()V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 230
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "why running empty audio_thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "make new BargeInRecognizer VER 15.11.9"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isUseModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    .line 76
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isUseChineseModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    .line 77
    const-string v0, "/system/voicebargeindata/include/bargein_language_extra_es"

    invoke-static {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableExtraSpanish:Z

    .line 78
    const-string v0, "/system/voicebargeindata/include/bargein_language_extra_ru"

    invoke-static {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableExtraRussian:Z

    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->setLanguage()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 83
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uselanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableChineseBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableExtraSpanish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableExtraSpanish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableExtraRussian : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableExtraRussian:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method private static isBargeInFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mFilePath"    # Ljava/lang/String;

    .prologue
    .line 630
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    const/4 v0, 0x1

    .line 632
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSamsungModel()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 307
    const-string v2, "/system/lib/libsasr-jni.so"

    invoke-static {v2}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isSensoryModel()Z
    .locals 1

    .prologue
    .line 316
    const-string v0, "/system/lib/libSensoryBargeInEngine.so"

    invoke-static {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/system/lib64/libSensoryBargeInEngine.so"

    invoke-static {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    :cond_0
    const/4 v0, 0x1

    .line 319
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUseModel()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 292
    invoke-static {}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isSamsungModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->samsungOOVResult:Z

    .line 303
    :goto_0
    return v0

    .line 295
    :cond_0
    invoke-static {}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isSensoryModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    iput-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->samsungOOVResult:Z

    .line 297
    sget-object v1, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Could not find libsasr-jni.so use only libSensoryBargeInEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    :cond_1
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Error : Could not find libsasr-jni.so && libSensoryBargeInEngine.so"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 303
    goto :goto_0
.end method

.method private readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 539
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 540
    .local v3, "mFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 541
    .local v4, "mFileInputStream":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 543
    .local v0, "data":[B
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 545
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .local v5, "mFileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 547
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 548
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 550
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 568
    .end local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    :goto_0
    return-object v6

    .line 552
    :catch_0
    move-exception v1

    .line 554
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v4, :cond_0

    .line 556
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 562
    :cond_0
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 564
    goto :goto_0

    .line 557
    :catch_1
    move-exception v2

    .line 559
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_1
    move-object v6, v7

    .line 568
    goto :goto_0

    .line 552
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private setLanguage()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x1

    .line 423
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "defaultLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, "stringLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "stringCountry":Ljava/lang/String;
    const/4 v1, 0x0

    .line 429
    .local v1, "sVoiceLanguage":Ljava/lang/String;
    sget-object v4, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stringLanguage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    sget-object v4, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stringCountry : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    sget-object v4, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sVoiceLanguage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    if-eqz v1, :cond_c

    .line 434
    const-string v4, "ko-KR"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 435
    iput v9, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    const-string v4, "en-US"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 437
    iput v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 438
    :cond_2
    const-string v4, "zh-CN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    if-eqz v4, :cond_3

    .line 439
    iput v10, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 440
    :cond_3
    const-string v4, "es-ES"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 441
    iput v11, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 442
    :cond_4
    const-string v4, "v-es-LA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 443
    const/16 v4, 0xb

    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 444
    :cond_5
    const-string v4, "fr-FR"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 445
    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 446
    :cond_6
    const-string v4, "de-DE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 447
    const/4 v4, 0x5

    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 448
    :cond_7
    const-string v4, "it-IT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 449
    const/4 v4, 0x6

    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 450
    :cond_8
    const-string v4, "ja-JP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 451
    const/4 v4, 0x7

    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 452
    :cond_9
    const-string v4, "ru-RU"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 453
    iput v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 454
    :cond_a
    const-string v4, "pt-BR"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 455
    const/16 v4, 0x9

    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto :goto_0

    .line 456
    :cond_b
    const-string v4, "en-GB"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 457
    const/16 v4, 0xa

    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 461
    :cond_c
    if-eqz v3, :cond_0

    .line 462
    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 463
    iput v9, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 464
    :cond_d
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 465
    const-string v4, "GB"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 466
    const/16 v4, 0xa

    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 468
    :cond_e
    iput v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 470
    :cond_f
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-boolean v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableChineseBargeIn:Z

    if-eqz v4, :cond_14

    .line 471
    const-string v4, "CN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 472
    iput v10, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 473
    :cond_10
    const-string v4, "TW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 474
    const/16 v4, 0xc

    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 475
    :cond_11
    const-string v4, "HK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 476
    const/16 v4, 0xd

    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 477
    :cond_12
    const-string v4, "SG"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 478
    const/16 v4, 0xe

    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 480
    :cond_13
    iput v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 482
    :cond_14
    const-string v4, "ES"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 483
    iput v11, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    .line 484
    iget-boolean v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableExtraSpanish:Z

    if-nez v4, :cond_15

    const-string v4, "es"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 485
    iput v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 487
    :cond_15
    sget-object v4, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extra Sapnish is enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 490
    :cond_16
    const-string v4, "es"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 491
    const/16 v4, 0xb

    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 492
    :cond_17
    sget-object v4, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 493
    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 494
    :cond_18
    sget-object v4, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 495
    const/4 v4, 0x5

    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 496
    :cond_19
    sget-object v4, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 497
    const/4 v4, 0x6

    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 498
    :cond_1a
    sget-object v4, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 499
    const/4 v4, 0x7

    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 500
    :cond_1b
    const-string v4, "ru"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 501
    iput v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 502
    :cond_1c
    const-string v4, "pt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 503
    const-string v4, "BR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 504
    const/16 v4, 0x9

    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 506
    :cond_1d
    iput v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 508
    :cond_1e
    iget-boolean v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableExtraRussian:Z

    if-eqz v4, :cond_21

    .line 509
    const-string v4, "az_AZ"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "kk_KZ"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "uz_UZ"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "ky_KZ"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "tg_TJ"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "tk_TM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "be_BY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 512
    :cond_1f
    iput v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    .line 513
    sget-object v4, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extra Russian is enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 515
    :cond_20
    iput v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0

    .line 517
    :cond_21
    iput v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    goto/16 :goto_0
.end method

.method private start(I)V
    .locals 3
    .param p1, "commandType"    # I

    .prologue
    .line 135
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0, p1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 140
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState change to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mStopHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$1;-><init>(Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mStopHandler:Landroid/os/Handler;

    .line 149
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "StopHandler create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 152
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$2;-><init>(Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    .line 159
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "handler create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->SendHandlerMessage(I)V

    .line 164
    :cond_2
    return-void
.end method


# virtual methods
.method public InitBargeInRecognizer(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mListener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 97
    return-void
.end method

.method public getBargeInCmdLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    packed-switch v0, :pswitch_data_0

    .line 369
    const-string v0, "en-US"

    :goto_0
    return-object v0

    .line 341
    :pswitch_0
    const-string v0, "ko-KR"

    goto :goto_0

    .line 343
    :pswitch_1
    const-string v0, "en-US"

    goto :goto_0

    .line 345
    :pswitch_2
    const-string v0, "zh-CN"

    goto :goto_0

    .line 347
    :pswitch_3
    const-string v0, "es-ES"

    goto :goto_0

    .line 349
    :pswitch_4
    const-string v0, "fr-FR"

    goto :goto_0

    .line 351
    :pswitch_5
    const-string v0, "de-DE"

    goto :goto_0

    .line 353
    :pswitch_6
    const-string v0, "it-IT"

    goto :goto_0

    .line 355
    :pswitch_7
    const-string v0, "ja-JP"

    goto :goto_0

    .line 357
    :pswitch_8
    const-string v0, "ru-RU"

    goto :goto_0

    .line 359
    :pswitch_9
    const-string v0, "pt-BR"

    goto :goto_0

    .line 361
    :pswitch_a
    const-string v0, "en-GB"

    goto :goto_0

    .line 363
    :pswitch_b
    const-string v0, "v-es-LA"

    goto :goto_0

    .line 365
    :pswitch_c
    const-string v0, "zh-TW"

    goto :goto_0

    .line 367
    :pswitch_d
    const-string v0, "zh-HK"

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
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
.end method

.method public getBargeInCmdStringArray(I)[Ljava/lang/String;
    .locals 1
    .param p1, "CommandType"    # I

    .prologue
    .line 380
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getBargeInCmdStringArray(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBargeInCmdStringArray(II)[Ljava/lang/String;
    .locals 3
    .param p1, "CommandType"    # I
    .param p2, "Language"    # I

    .prologue
    .line 385
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBargeInCmdStringArray : CommandType ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) Language ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/16 v0, 0xf

    if-lt p2, v0, :cond_0

    .line 388
    const/4 p2, 0x1

    .line 390
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    const/4 p2, 0x1

    .line 392
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBargeInCmdStringArray : possible language is ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 408
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 397
    :pswitch_1
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/CommandLanguage;->CALL:[[Ljava/lang/String;

    aget-object v0, v0, p2

    goto :goto_0

    .line 399
    :pswitch_2
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/CommandLanguage;->ALARM:[[Ljava/lang/String;

    aget-object v0, v0, p2

    goto :goto_0

    .line 401
    :pswitch_3
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/CommandLanguage;->MUSIC:[[Ljava/lang/String;

    aget-object v0, v0, p2

    goto :goto_0

    .line 403
    :pswitch_4
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/CommandLanguage;->CAMERA:[[Ljava/lang/String;

    aget-object v0, v0, p2

    goto :goto_0

    .line 405
    :pswitch_5
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/CommandLanguage;->CANCEL:[[Ljava/lang/String;

    aget-object v0, v0, p2

    goto :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getIntBargeInCmdLanguage()I
    .locals 3

    .prologue
    .line 418
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntBargeInCmdLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    return v0
.end method

.method public getIntBargeInResult()I
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    .line 534
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 111
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState mState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    return v0
.end method

.method public isBargeInEnabled()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    return v0
.end method

.method public isBargeInEnabled(I)Z
    .locals 3
    .param p1, "commandType"    # I

    .prologue
    const/4 v1, 0x1

    .line 587
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    .line 589
    .local v0, "language":I
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    :goto_0
    return v1

    .line 591
    :cond_0
    if-eq v0, v1, :cond_1

    .line 592
    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    .line 593
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled(II)Z

    move-result v1

    goto :goto_0

    .line 596
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBargeInEnabled(II)Z
    .locals 8
    .param p1, "commandType"    # I
    .param p2, "language"    # I

    .prologue
    const/4 v4, 0x1

    .line 601
    invoke-static {}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isSensoryModel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 602
    invoke-static {p2, p1}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSensoryAM(II)Ljava/lang/String;

    move-result-object v3

    .line 603
    .local v3, "sensoryModelPath":Ljava/lang/String;
    invoke-static {p2, p1}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSensoryGRAMMAR(II)Ljava/lang/String;

    move-result-object v2

    .line 605
    .local v2, "sensoryGrammarPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_v2.raw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 606
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_v2.raw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 608
    invoke-static {v3}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 609
    sget-object v5, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isBargeInEnabled: SensoryBargeIn is available in commandType ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") uselanguage("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .end local v2    # "sensoryGrammarPath":Ljava/lang/String;
    .end local v3    # "sensoryModelPath":Ljava/lang/String;
    :goto_0
    return v4

    .line 614
    :cond_0
    invoke-static {}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isSamsungModel()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 615
    invoke-static {p2}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "samsungModelPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "samsungNameList":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 619
    sget-object v5, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isBargeInEnabled: SamsungBargeIn is available in commandType ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") uselanguage("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 624
    .end local v0    # "samsungModelPath":Ljava/lang/String;
    .end local v1    # "samsungNameList":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isBargeInEnabled: BargeIn is not available in commandType ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") uselanguage("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public isUseChineseModel()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/app/IWSpeechRecognizer/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x1

    .line 332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "setContext"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-object p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method

.method public startBargeIn(I)V
    .locals 3
    .param p1, "commandType"    # I

    .prologue
    .line 176
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "startBargeIn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commandType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    .line 180
    invoke-direct {p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->setLanguage()V

    .line 182
    invoke-direct {p0, p1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->start(I)V

    .line 183
    return-void
.end method

.method public startBargeIn(II)V
    .locals 3
    .param p1, "commandType"    # I
    .param p2, "setLang"    # I

    .prologue
    .line 197
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "startBargeIn Type2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commandType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    .line 202
    iput p2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->uselanguage:I

    .line 204
    invoke-direct {p0, p1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->start(I)V

    .line 205
    return-void
.end method

.method public stopBargeIn()V
    .locals 4

    .prologue
    .line 242
    sget-object v1, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "stopBargeIn"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v1, :cond_3

    .line 246
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->handler:Landroid/os/Handler;

    .line 250
    sget-object v1, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "handler = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mStopHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mStopHandler:Landroid/os/Handler;

    .line 255
    sget-object v1, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Stop Handler = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    if-eqz v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    iget-object v1, v1, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->intBargeInResult:I

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->stop()V

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 264
    :try_start_1
    sget-object v1, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "wait for audio to stop: begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :goto_0
    :try_start_2
    sget-object v1, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "wait for audio to stop: end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio:Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    .line 277
    sget-object v1, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "audio = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 282
    sget-object v1, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "audio_thread = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    .line 286
    sget-object v1, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mState change to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_3
    monitor-exit p0

    .line 289
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 288
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 271
    :cond_4
    :try_start_3
    sget-object v1, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "audio_thread was not working"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
