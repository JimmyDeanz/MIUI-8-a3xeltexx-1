.class final Landroid/media/session/MediaController$CallbackStub;
.super Landroid/media/session/ISessionControllerCallback$Stub;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackStub"
.end annotation


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/session/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 904
    invoke-direct {p0}, Landroid/media/session/ISessionControllerCallback$Stub;-><init>()V

    .line 905
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    .line 906
    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 918
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 919
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 920
    const/4 v1, 0x1

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v1, p1, p2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 922
    :cond_0
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 960
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 961
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 962
    const/4 v1, 0x7

    const/4 v2, 0x0

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 964
    :cond_0
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 3
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 934
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 935
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 936
    const/4 v1, 0x3

    const/4 v2, 0x0

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 938
    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 3
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 926
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 927
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 928
    const/4 v1, 0x2

    const/4 v2, 0x0

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 930
    :cond_0
    return-void
.end method

.method public onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 4
    .param p1, "parceledQueue"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    const/4 v2, 0x0

    .line 942
    if-nez p1, :cond_1

    move-object v1, v2

    .line 944
    .local v1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    :goto_0
    iget-object v3, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 945
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 946
    const/4 v3, 0x5

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v3, v1, v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 948
    :cond_0
    return-void

    .line 942
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v1    # "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 952
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 953
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 954
    const/4 v1, 0x6

    const/4 v2, 0x0

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 956
    :cond_0
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 910
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 911
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 912
    const/16 v1, 0x8

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2, v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 914
    :cond_0
    return-void
.end method

.method public onVolumeInfoChanged(Landroid/media/session/ParcelableVolumeInfo;)V
    .locals 7
    .param p1, "pvi"    # Landroid/media/session/ParcelableVolumeInfo;

    .prologue
    .line 968
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/session/MediaController;

    .line 969
    .local v6, "controller":Landroid/media/session/MediaController;
    if-eqz v6, :cond_0

    .line 970
    new-instance v0, Landroid/media/session/MediaController$PlaybackInfo;

    iget v1, p1, Landroid/media/session/ParcelableVolumeInfo;->volumeType:I

    iget-object v2, p1, Landroid/media/session/ParcelableVolumeInfo;->audioAttrs:Landroid/media/AudioAttributes;

    iget v3, p1, Landroid/media/session/ParcelableVolumeInfo;->controlType:I

    iget v4, p1, Landroid/media/session/ParcelableVolumeInfo;->maxVolume:I

    iget v5, p1, Landroid/media/session/ParcelableVolumeInfo;->currentVolume:I

    invoke-direct/range {v0 .. v5}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(ILandroid/media/AudioAttributes;III)V

    .line 972
    .local v0, "info":Landroid/media/session/MediaController$PlaybackInfo;
    const/4 v1, 0x4

    const/4 v2, 0x0

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v6, v1, v0, v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 974
    .end local v0    # "info":Landroid/media/session/MediaController$PlaybackInfo;
    :cond_0
    return-void
.end method
