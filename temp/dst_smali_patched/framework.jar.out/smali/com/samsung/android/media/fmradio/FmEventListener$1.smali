.class Lcom/samsung/android/media/fmradio/FmEventListener$1;
.super Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;
.source "FmEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/fmradio/FmEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/media/fmradio/FmEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/fmradio/FmEventListener;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlternateFrequencyReceived(J)V
    .locals 5
    .param p1, "freq"    # J

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAlternateFrequencyStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onChannelFound(J)V
    .locals 5
    .param p1, "freq"    # J

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onHeadsetConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onHeadsetDisconnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onProgrammeIdentificationExtendedCountryCodesReceived(II)V
    .locals 6
    .param p1, "pi"    # I
    .param p2, "ecc"    # I

    .prologue
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v5, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRadioDataSystemDisabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onRadioDataSystemEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "freq"    # J
    .param p3, "channelName"    # Ljava/lang/String;
    .param p4, "radioText"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v0, v1, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRadioDisabled(I)V
    .locals 4
    .param p1, "reasonCode"    # I

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRadioEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRadioTextPlusReceived(IIIIII)V
    .locals 6
    .param p1, "contentType1"    # I
    .param p2, "startPos1"    # I
    .param p3, "additionalLen1"    # I
    .param p4, "contentType2"    # I
    .param p5, "startPos2"    # I
    .param p6, "additionalLen2"    # I

    .prologue
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v5, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRecordingFinished()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onScanFinished([J)V
    .locals 3
    .param p1, "freqArry"    # [J

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onScanStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onScanStopped([J)V
    .locals 3
    .param p1, "freqArry"    # [J

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTuned(J)V
    .locals 5
    .param p1, "freq"    # J

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onVolumeLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/FmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/FmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
