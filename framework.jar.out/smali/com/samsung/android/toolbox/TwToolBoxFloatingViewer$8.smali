.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;
.super Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback$Stub;
.source "TwToolBoxFloatingViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isContain(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 582
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    :cond_0
    const/4 v0, 0x0

    .line 587
    :goto_0
    return v0

    .line 585
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 586
    .local v0, "conflict":Z
    const-string v1, "toolbox"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback isContain() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public receiveMessage(Ljava/lang/String;II)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "message"    # I
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const-wide/16 v10, 0x64

    .line 593
    if-ne p2, v6, :cond_9

    .line 596
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    .line 598
    and-int/lit8 v7, p3, 0x8

    if-eqz v7, :cond_3

    .line 600
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v3

    .line 601
    .local v3, "lastPackage":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;
    invoke-static {v7, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$802(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)Ljava/lang/String;

    .line 603
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 604
    const/4 v5, 0x0

    .line 605
    .local v5, "needBlock":Z
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 606
    .local v1, "blockPkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 607
    const/4 v5, 0x1

    .line 611
    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_1

    const/4 v6, 0x4

    :cond_1
    or-int/2addr p3, v6

    .line 614
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "needBlock":Z
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 615
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v11}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 619
    .end local v3    # "lastPackage":Ljava/lang/String;
    :cond_3
    and-int/lit8 v6, p3, 0x10

    if-eqz v6, :cond_4

    .line 621
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 622
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v11}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 626
    :cond_4
    and-int/lit8 v6, p3, 0x20

    if-eqz v6, :cond_5

    .line 627
    const/4 p3, 0x4

    .line 630
    :cond_5
    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_6

    .line 631
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    .line 634
    :cond_6
    and-int/lit8 v6, p3, 0x4

    if-eqz v6, :cond_7

    .line 635
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    .line 642
    :cond_7
    :goto_1
    return-void

    .line 605
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "blockPkg":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "lastPackage":Ljava/lang/String;
    .restart local v4    # "len$":I
    .restart local v5    # "needBlock":Z
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 638
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "blockPkg":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "lastPackage":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "needBlock":Z
    :cond_9
    const/4 v6, 0x3

    if-ne p2, v6, :cond_7

    .line 640
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v11}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
