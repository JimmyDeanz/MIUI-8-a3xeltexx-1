.class Lcom/android/server/DeviceIdleController$2;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 256
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->updateDisplayLocked()V

    .line 265
    monitor-exit v1

    .line 267
    :cond_0
    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 259
    return-void
.end method
