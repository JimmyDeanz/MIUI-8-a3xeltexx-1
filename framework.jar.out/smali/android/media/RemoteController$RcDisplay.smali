.class Landroid/media/RemoteController$RcDisplay;
.super Landroid/media/IRemoteControlDisplay$Stub;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RcDisplay"
.end annotation


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/RemoteController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/media/RemoteController;)V
    .locals 1
    .param p1, "rc"    # Landroid/media/RemoteController;

    .prologue
    .line 572
    invoke-direct {p0}, Landroid/media/IRemoteControlDisplay$Stub;-><init>()V

    .line 573
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    .line 574
    return-void
.end method


# virtual methods
.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "genId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;
    .param p3, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 688
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 689
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_0

    .line 696
    :cond_2
    # getter for: Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/RemoteController;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 697
    :try_start_0
    # getter for: Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    invoke-static {v7}, Landroid/media/RemoteController;->access$500(Landroid/media/RemoteController;)I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 698
    monitor-exit v1

    goto :goto_0

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    if-nez p2, :cond_4

    .line 702
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "metadata":Landroid/os/Bundle;
    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 704
    .restart local p2    # "metadata":Landroid/os/Bundle;
    :cond_4
    if-eqz p3, :cond_5

    .line 705
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 708
    :cond_5
    # getter for: Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;
    invoke-static {v7}, Landroid/media/RemoteController;->access$600(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    move v3, p1

    move-object v5, p2

    move v6, v4

    # invokes: Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "genId"    # I
    .param p2, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 670
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 671
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    .line 685
    :goto_0
    return-void

    .line 675
    :cond_0
    # getter for: Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/RemoteController;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 676
    :try_start_0
    # getter for: Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    invoke-static {v7}, Landroid/media/RemoteController;->access$500(Landroid/media/RemoteController;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 677
    monitor-exit v1

    goto :goto_0

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    new-instance v5, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 681
    .local v5, "metadata":Landroid/os/Bundle;
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 682
    # getter for: Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;
    invoke-static {v7}, Landroid/media/RemoteController;->access$600(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    move v3, p1

    move v6, v4

    # invokes: Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    .locals 11
    .param p1, "genId"    # I
    .param p2, "clientMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 578
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/RemoteController;

    .line 579
    .local v10, "rc":Landroid/media/RemoteController;
    if-nez v10, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    const/4 v9, 0x0

    .line 583
    .local v9, "isNew":Z
    # getter for: Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/RemoteController;->access$400()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 584
    :try_start_0
    # getter for: Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    invoke-static {v10}, Landroid/media/RemoteController;->access$500(Landroid/media/RemoteController;)I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 585
    # setter for: Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    invoke-static {v10, p1}, Landroid/media/RemoteController;->access$502(Landroid/media/RemoteController;I)I

    .line 586
    const/4 v9, 0x1

    .line 588
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    if-eqz p2, :cond_3

    .line 590
    # getter for: Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;
    invoke-static {v10}, Landroid/media/RemoteController;->access$600(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    move v2, v1

    move v3, p1

    move v4, v1

    move-object v5, p2

    move v6, v1

    # invokes: Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 593
    :cond_3
    if-nez v9, :cond_4

    if-eqz p3, :cond_0

    .line 594
    :cond_4
    # getter for: Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;
    invoke-static {v10}, Landroid/media/RemoteController;->access$600(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v2

    const/4 v3, 0x4

    if-eqz p3, :cond_5

    const/4 v6, 0x1

    :goto_1
    const/4 v7, 0x0

    move v4, v1

    move v5, p1

    move v8, v1

    # invokes: Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Landroid/media/RemoteController;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 588
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move v6, v1

    .line 594
    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 600
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 601
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_0
    # getter for: Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;
    invoke-static {v7}, Landroid/media/RemoteController;->access$600(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_1
    const/4 v5, 0x0

    move v4, v2

    move v6, v2

    # invokes: Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .locals 8
    .param p1, "genId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 651
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 652
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    if-eqz p2, :cond_0

    .line 659
    # getter for: Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/RemoteController;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 660
    :try_start_0
    # getter for: Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    invoke-static {v7}, Landroid/media/RemoteController;->access$500(Landroid/media/RemoteController;)I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 661
    monitor-exit v1

    goto :goto_0

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    # getter for: Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;
    invoke-static {v7}, Landroid/media/RemoteController;->access$600(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    move v3, p1

    move-object v5, p2

    move v6, v4

    # invokes: Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public setPlaybackState(IIJJF)V
    .locals 9
    .param p1, "genId"    # I
    .param p2, "state"    # I
    .param p3, "stateChangeTimeMs"    # J
    .param p5, "currentPosMs"    # J
    .param p7, "speed"    # F

    .prologue
    .line 610
    iget-object v1, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/RemoteController;

    .line 611
    .local v8, "rc":Landroid/media/RemoteController;
    if-nez v8, :cond_0

    .line 632
    :goto_0
    return-void

    .line 622
    :cond_0
    # getter for: Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/RemoteController;->access$400()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 623
    :try_start_0
    # getter for: Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    invoke-static {v8}, Landroid/media/RemoteController;->access$500(Landroid/media/RemoteController;)I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 624
    monitor-exit v2

    goto :goto_0

    .line 626
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    new-instance v0, Landroid/media/RemoteController$PlaybackInfo;

    move v1, p2

    move-wide v2, p3

    move-wide v4, p5

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/media/RemoteController$PlaybackInfo;-><init>(IJJF)V

    .line 629
    .local v0, "playbackInfo":Landroid/media/RemoteController$PlaybackInfo;
    # getter for: Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;
    invoke-static {v8}, Landroid/media/RemoteController;->access$600(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, p1

    move-object v6, v0

    # invokes: Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v7}, Landroid/media/RemoteController;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public setTransportControlInfo(III)V
    .locals 8
    .param p1, "genId"    # I
    .param p2, "transportControlFlags"    # I
    .param p3, "posCapabilities"    # I

    .prologue
    const/4 v2, 0x0

    .line 636
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 637
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    .line 648
    :goto_0
    return-void

    .line 640
    :cond_0
    # getter for: Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/RemoteController;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 641
    :try_start_0
    # getter for: Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    invoke-static {v7}, Landroid/media/RemoteController;->access$500(Landroid/media/RemoteController;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 642
    monitor-exit v1

    goto :goto_0

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    # getter for: Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;
    invoke-static {v7}, Landroid/media/RemoteController;->access$600(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    move v6, v2

    # invokes: Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method
