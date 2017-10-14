.class Lcom/android/server/wm/SingleHandAdapter$2$2;
.super Landroid/database/ContentObserver;
.source "SingleHandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/SingleHandAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/SingleHandAdapter$2;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SingleHandAdapter$2;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wm/SingleHandAdapter$2;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/server/wm/SingleHandAdapter$2$2;->this$1:Lcom/android/server/wm/SingleHandAdapter$2;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/wm/SingleHandAdapter$2$2;->this$1:Lcom/android/server/wm/SingleHandAdapter$2;

    iget-object v1, v1, Lcom/android/server/wm/SingleHandAdapter$2;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v1}, Lcom/android/server/wm/SingleHandAdapter;->-get2(Lcom/android/server/wm/SingleHandAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_hand_screen_zoom"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/android/server/wm/SingleHandAdapter;->-set0(Z)Z

    const-string v0, "SingleHandAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " KEY_SINGLE_HAND_SCREEN_ZOOM onChange isSingleHandEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/wm/SingleHandAdapter;->-get0()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/wm/SingleHandAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/SingleHandAdapter;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$2$2;->this$1:Lcom/android/server/wm/SingleHandAdapter$2;

    iget-object v0, v0, Lcom/android/server/wm/SingleHandAdapter$2;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v0}, Lcom/android/server/wm/SingleHandAdapter;->-wrap0(Lcom/android/server/wm/SingleHandAdapter;)V

    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$2$2;->this$1:Lcom/android/server/wm/SingleHandAdapter$2;

    iget-object v0, v0, Lcom/android/server/wm/SingleHandAdapter$2;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v0}, Lcom/android/server/wm/SingleHandAdapter;->-wrap1(Lcom/android/server/wm/SingleHandAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$2$2;->this$1:Lcom/android/server/wm/SingleHandAdapter$2;

    iget-object v0, v0, Lcom/android/server/wm/SingleHandAdapter$2;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v0}, Lcom/android/server/wm/SingleHandAdapter;->-get1(Lcom/android/server/wm/SingleHandAdapter;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$2$2;->this$1:Lcom/android/server/wm/SingleHandAdapter$2;

    iget-object v0, v0, Lcom/android/server/wm/SingleHandAdapter$2;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v0}, Lcom/android/server/wm/SingleHandAdapter;->-get1(Lcom/android/server/wm/SingleHandAdapter;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$2$2;->this$1:Lcom/android/server/wm/SingleHandAdapter$2;

    iget-object v0, v0, Lcom/android/server/wm/SingleHandAdapter$2;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/wm/SingleHandAdapter;->-set1(Lcom/android/server/wm/SingleHandAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_3
    sget-object v0, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
