.class Lcom/android/internal/os/BatteryStatsImpl$3;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->setOnBatteryLocked(JJZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$parcel:Landroid/os/Parcel;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 8327
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$parcel:Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 8329
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v3

    .line 8330
    const/4 v1, 0x0

    .line 8332
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 8333
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 8334
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 8335
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 8336
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 8337
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8343
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 8345
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8346
    return-void

    .line 8338
    :catch_0
    move-exception v0

    .line 8339
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "BatteryStats"

    const-string v4, "Error writing checkin battery statistics"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8341
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8343
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 8345
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 8343
    :catchall_1
    move-exception v2

    :try_start_4
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
