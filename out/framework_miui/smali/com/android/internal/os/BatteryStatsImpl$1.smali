.class Lcom/android/internal/os/BatteryStatsImpl$1;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$memStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .prologue
    .line 6958
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->val$memStream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6961
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v3

    .line 6962
    const/4 v1, 0x0

    .line 6964
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 6965
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->val$memStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 6966
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 6967
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 6968
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 6969
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6975
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 6976
    return-void

    .line 6970
    :catch_0
    move-exception v0

    .line 6971
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BatteryStats"

    const-string v4, "Error writing battery daily items"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6973
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0

    .line 6975
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
