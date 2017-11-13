.class public Lcom/android/incallui/recorder/StorageMonitor;
.super Ljava/lang/Object;
.source "StorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/recorder/StorageMonitor$Listener;,
        Lcom/android/incallui/recorder/StorageMonitor$MonitorHandler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsUsingExternalStorage:Z

.field private mListener:Lcom/android/incallui/recorder/StorageMonitor$Listener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/recorder/StorageMonitor;->mReceiverRegistered:Z

    .line 51
    new-instance v0, Lcom/android/incallui/recorder/StorageMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/recorder/StorageMonitor$1;-><init>(Lcom/android/incallui/recorder/StorageMonitor;)V

    iput-object v0, p0, Lcom/android/incallui/recorder/StorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p1, p0, Lcom/android/incallui/recorder/StorageMonitor;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/recorder/StorageMonitor;->mIsUsingExternalStorage:Z

    .line 65
    new-instance v0, Lcom/android/incallui/recorder/StorageMonitor$MonitorHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/recorder/StorageMonitor$MonitorHandler;-><init>(Lcom/android/incallui/recorder/StorageMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/incallui/recorder/StorageMonitor;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/recorder/StorageMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/recorder/StorageMonitor;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/incallui/recorder/StorageMonitor;->checkStorageSpace()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/recorder/StorageMonitor;)Lcom/android/incallui/recorder/StorageMonitor$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/recorder/StorageMonitor;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/incallui/recorder/StorageMonitor;->mListener:Lcom/android/incallui/recorder/StorageMonitor$Listener;

    return-object v0
.end method

.method private checkStorageSpace()V
    .locals 4

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/incallui/recorder/StorageMonitor;->isStorageSpaceLow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/incallui/recorder/StorageMonitor;->mListener:Lcom/android/incallui/recorder/StorageMonitor$Listener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/incallui/recorder/StorageMonitor;->mListener:Lcom/android/incallui/recorder/StorageMonitor$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/recorder/StorageMonitor$Listener;->onError(I)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/recorder/StorageMonitor;->stopMonitor()V

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/recorder/StorageMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private isStorageSpaceLow()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 69
    iget-boolean v6, p0, Lcom/android/incallui/recorder/StorageMonitor;->mIsUsingExternalStorage:Z

    if-nez v6, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v5

    .line 73
    :cond_1
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 75
    .local v4, "stats":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 76
    .local v2, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 77
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    const-wide/32 v8, 0x100000

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isUsingExternalStorage()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/incallui/recorder/StorageMonitor;->mIsUsingExternalStorage:Z

    return v0
.end method

.method public startMonitor(Lcom/android/incallui/recorder/StorageMonitor$Listener;)I
    .locals 6
    .param p1, "listener"    # Lcom/android/incallui/recorder/StorageMonitor$Listener;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/recorder/StorageMonitor;->mIsUsingExternalStorage:Z

    .line 99
    invoke-direct {p0}, Lcom/android/incallui/recorder/StorageMonitor;->isStorageSpaceLow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    :goto_0
    return v1

    .line 103
    :cond_0
    if-eqz p1, :cond_2

    .line 104
    iput-object p1, p0, Lcom/android/incallui/recorder/StorageMonitor;->mListener:Lcom/android/incallui/recorder/StorageMonitor$Listener;

    .line 105
    iget-boolean v3, p0, Lcom/android/incallui/recorder/StorageMonitor;->mIsUsingExternalStorage:Z

    if-eqz v3, :cond_1

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 110
    iget-object v3, p0, Lcom/android/incallui/recorder/StorageMonitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/incallui/recorder/StorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    iput-boolean v1, p0, Lcom/android/incallui/recorder/StorageMonitor;->mReceiverRegistered:Z

    .line 113
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/recorder/StorageMonitor;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    move v1, v2

    .line 116
    goto :goto_0
.end method

.method public stopMonitor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/incallui/recorder/StorageMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    iget-boolean v0, p0, Lcom/android/incallui/recorder/StorageMonitor;->mIsUsingExternalStorage:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/recorder/StorageMonitor;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/incallui/recorder/StorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/recorder/StorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    iput-boolean v2, p0, Lcom/android/incallui/recorder/StorageMonitor;->mReceiverRegistered:Z

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/recorder/StorageMonitor;->mListener:Lcom/android/incallui/recorder/StorageMonitor$Listener;

    .line 126
    return-void
.end method
