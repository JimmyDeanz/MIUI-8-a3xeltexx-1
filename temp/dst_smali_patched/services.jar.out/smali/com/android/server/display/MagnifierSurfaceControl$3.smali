.class Lcom/android/server/display/MagnifierSurfaceControl$3;
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
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/MagnifierSurfaceControl;->access$900(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hover_zoom_value"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/display/MagnifierSurfaceControl;->scaleSize:I
    invoke-static {v1, v2}, Lcom/android/server/display/MagnifierSurfaceControl;->access$4602(Lcom/android/server/display/MagnifierSurfaceControl;I)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    iget-object v1, v1, Lcom/android/server/display/MagnifierSurfaceControl;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mMagPadSize:Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;
    invoke-static {v2}, Lcom/android/server/display/MagnifierSurfaceControl;->access$4700(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->x:[I

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->magSize:I
    invoke-static {v3}, Lcom/android/server/display/MagnifierSurfaceControl;->access$4800(Lcom/android/server/display/MagnifierSurfaceControl;)I

    move-result v3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mMagPadSize:Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;
    invoke-static {v3}, Lcom/android/server/display/MagnifierSurfaceControl;->access$4700(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/display/MagnifierSurfaceControl$MagnifierPadSize;->y:[I

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->magSize:I
    invoke-static {v4}, Lcom/android/server/display/MagnifierSurfaceControl;->access$4800(Lcom/android/server/display/MagnifierSurfaceControl;)I

    move-result v4

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$3;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->scaleSize:I
    invoke-static {v4}, Lcom/android/server/display/MagnifierSurfaceControl;->access$4600(Lcom/android/server/display/MagnifierSurfaceControl;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/display/IDisplayManager;->setMagnificationSettings(IIF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
