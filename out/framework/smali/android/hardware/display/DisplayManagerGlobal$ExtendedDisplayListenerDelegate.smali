.class final Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;
.super Landroid/os/Handler;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtendedDisplayListenerDelegate"
.end annotation


# instance fields
.field public final mListener:Landroid/hardware/display/SemDisplayStatusListener;

.field public final mOldListener:Landroid/hardware/display/ExtendedDisplayListener;


# direct methods
.method public constructor <init>(Landroid/hardware/display/ExtendedDisplayListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "oldListener"    # Landroid/hardware/display/ExtendedDisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 702
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 703
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->mOldListener:Landroid/hardware/display/ExtendedDisplayListener;

    .line 704
    iput-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayStatusListener;

    .line 705
    return-void

    .line 702
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/hardware/display/SemDisplayStatusListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayStatusListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 708
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 709
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayStatusListener;

    .line 710
    iput-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->mOldListener:Landroid/hardware/display/ExtendedDisplayListener;

    .line 711
    return-void

    .line 708
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearEvents()V
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 720
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 724
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 753
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 726
    :pswitch_1
    const-string v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage EVENT_CONNECTIONSTATUS_CHANGED= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->mOldListener:Landroid/hardware/display/ExtendedDisplayListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->mOldListener:Landroid/hardware/display/ExtendedDisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/ExtendedDisplayListener;->onConnectionStatusChanged(I)V

    .line 728
    :cond_1
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayStatusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayStatusListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/display/SemDisplayStatusListener;->onConnectionStatusChanged(I)V

    goto :goto_0

    .line 731
    :pswitch_2
    const-string v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage EVENT_QOSLEVEL_CHANGED= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->mOldListener:Landroid/hardware/display/ExtendedDisplayListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->mOldListener:Landroid/hardware/display/ExtendedDisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/ExtendedDisplayListener;->onQoSLevelChanged(I)V

    goto :goto_0

    .line 735
    :pswitch_3
    const-string v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage EVENT_BRIDGE_STATUS_CHANGED= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->mOldListener:Landroid/hardware/display/ExtendedDisplayListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->mOldListener:Landroid/hardware/display/ExtendedDisplayListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/ExtendedDisplayListener;->onBridgeStatusChanged(I)V

    goto :goto_0

    .line 724
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public sendExtendedDisplayEvent(II)V
    .locals 2
    .param p1, "arg"    # I
    .param p2, "event"    # I

    .prologue
    .line 714
    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v1}, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 715
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$ExtendedDisplayListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 716
    return-void
.end method
