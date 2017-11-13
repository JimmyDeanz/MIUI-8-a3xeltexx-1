.class Lcom/android/server/display/MagnifierSurfaceControl$2;
.super Landroid/database/ContentObserver;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MagnifierSurfaceControl;


# direct methods
.method constructor <init>(Lcom/android/server/display/MagnifierSurfaceControl;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$2;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1248
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1249
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$2;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/display/MagnifierSurfaceControl;->access$900(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_magnifier"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 1251
    .local v1, "newstate":Z
    :goto_0
    if-nez v1, :cond_0

    .line 1253
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$2;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    iget-object v2, v2, Lcom/android/server/display/MagnifierSurfaceControl;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    :cond_0
    :goto_1
    return-void

    .end local v1    # "newstate":Z
    :cond_1
    move v1, v2

    .line 1249
    goto :goto_0

    .line 1254
    .restart local v1    # "newstate":Z
    :catch_0
    move-exception v0

    .line 1255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
