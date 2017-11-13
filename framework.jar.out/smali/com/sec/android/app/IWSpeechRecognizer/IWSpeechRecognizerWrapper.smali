.class public Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;
.super Ljava/lang/Object;
.source "IWSpeechRecognizerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static uniqueInstance:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;
    .locals 3

    .prologue
    .line 16
    const-class v1, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->uniqueInstance:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-nez v0, :cond_1

    .line 17
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "getInstance() : make new MMUIRecognizer"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->init()I

    move-result v0

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;-><init>()V

    sput-object v0, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->uniqueInstance:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    .line 29
    :goto_0
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->uniqueInstance:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v1

    return-object v0

    .line 22
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "cannot load libsasr-jni.so"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 v0, 0x0

    goto :goto_1

    .line 26
    :cond_1
    sget-object v0, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "getInstance() : get existed MMUIRecognizer"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
