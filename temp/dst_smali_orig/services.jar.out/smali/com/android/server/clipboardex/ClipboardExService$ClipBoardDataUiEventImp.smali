.class Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;
.super Ljava/lang/Object;
.source "ClipboardExService.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataUiEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipBoardDataUiEventImp"
.end annotation


# instance fields
.field private final mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method private constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;

    invoke-direct {v0, p0}, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;-><init>(Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;)V

    iput-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p2, "x1"    # Lcom/android/server/clipboardex/ClipboardExService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

    return-object v0
.end method

.method public getClipboarddata(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 6
    .param p1, "index"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    if-nez p2, :cond_1

    :try_start_0
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardExService"

    const-string v4, "ClipboardDataPasteEvent is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    monitor-exit p0

    :goto_0
    return-object v2

    :cond_1
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clipboard Service selectItem index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    .local v0, "clipdata":Landroid/content/ClipData;
    const/4 v2, 0x0

    .local v2, "resData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v3}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    if-ge p1, v3, :cond_5

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clipboard Service selectItem index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    :cond_4
    :goto_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "clipdata":Landroid/content/ClipData;
    .end local v2    # "resData":Landroid/sec/clipboard/data/ClipboardData;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "clipdata":Landroid/content/ClipData;
    .restart local v2    # "resData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    if-lt p1, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    sub-int v1, p1, v3

    .local v1, "newIndex":I
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clipboard Service selectItem - index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was higher than mDataList "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newINxed to selectItem from shared = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    goto :goto_1

    .end local v1    # "newIndex":I
    :cond_7
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->mIsCalledPasteApp:Z
    invoke-static {v3, v4}, Lcom/android/server/clipboardex/ClipboardExService;->access$602(Lcom/android/server/clipboardex/ClipboardExService;Z)Z

    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_1
.end method

.method public removeAll()Z
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardExService"

    const-string v2, "Remove All"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v0

    .local v0, "bRes":Z
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v1}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v2, 0x3

    # invokes: Lcom/android/server/clipboardex/ClipboardExService;->ListChange(I)V
    invoke-static {v1, v2}, Lcom/android/server/clipboardex/ClipboardExService;->access$500(Lcom/android/server/clipboardex/ClipboardExService;I)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z
    invoke-static {v1, v2}, Lcom/android/server/clipboardex/ClipboardExService;->access$402(Lcom/android/server/clipboardex/ClipboardExService;Z)Z

    monitor-exit p0

    return v0

    .end local v0    # "bRes":Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeItem(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeItem index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .local v0, "bRes":Z
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v5}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    .local v1, "dataListSize":I
    if-ge p1, v1, :cond_2

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v0

    :goto_0
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v6

    if-gtz v6, :cond_4

    :goto_1
    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z
    invoke-static {v5, v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$402(Lcom/android/server/clipboardex/ClipboardExService;Z)Z

    .end local v1    # "dataListSize":I
    :goto_2
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v4, 0x2

    # invokes: Lcom/android/server/clipboardex/ClipboardExService;->ListChange(I)V
    invoke-static {v3, v4}, Lcom/android/server/clipboardex/ClipboardExService;->access$500(Lcom/android/server/clipboardex/ClipboardExService;I)V

    :cond_1
    monitor-exit p0

    return-void

    .restart local v1    # "dataListSize":I
    :cond_2
    sub-int v2, p1, v1

    .local v2, "ownerIndex":I
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data list size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " shared index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v0

    goto :goto_0

    .end local v2    # "ownerIndex":I
    :cond_4
    move v3, v4

    goto :goto_1

    .end local v1    # "dataListSize":I
    :cond_5
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v0

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v6

    if-lez v6, :cond_6

    :goto_3
    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z
    invoke-static {v5, v3}, Lcom/android/server/clipboardex/ClipboardExService;->access$402(Lcom/android/server/clipboardex/ClipboardExService;Z)Z

    goto :goto_2

    .end local v0    # "bRes":Z
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "bRes":Z
    :cond_6
    move v3, v4

    goto :goto_3
.end method

.method public removeScrapItem(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    return-void
.end method

.method public selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    if-nez p2, :cond_1

    :try_start_0
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardExService"

    const-string v5, "ClipboardDataPasteEvent is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectItem index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const/4 v3, 0x0

    .local v3, "resData":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v4}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .local v0, "dataListSize":I
    if-ge p1, v0, :cond_3

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    .end local v0    # "dataListSize":I
    :goto_1
    invoke-interface {p2, v3}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .end local v3    # "resData":Landroid/sec/clipboard/data/ClipboardData;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0    # "dataListSize":I
    .restart local v3    # "resData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_3
    sub-int v2, p1, v0

    .local v2, "ownerIndex":I
    :try_start_3
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data list size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " shared index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    goto :goto_1

    .end local v0    # "dataListSize":I
    .end local v2    # "ownerIndex":I
    :cond_5
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->mIsCalledPasteApp:Z
    invoke-static {v4, v5}, Lcom/android/server/clipboardex/ClipboardExService;->access$602(Lcom/android/server/clipboardex/ClipboardExService;Z)Z

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public selectScrapItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    return-void
.end method

.method public setClipboarddata(Landroid/content/ClipData;)V
    .locals 3
    .param p1, "data"    # Landroid/content/ClipData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/sec/clipboard/ClipboardConverter;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardConverter;

    move-result-object v2

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;
    invoke-static {v1, v2}, Lcom/android/server/clipboardex/ClipboardExService;->access$702(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardConverter;)Landroid/sec/clipboard/ClipboardConverter;

    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;
    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->access$700(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardConverter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/ClipboardConverter;->ClipDataToClipboardData(Landroid/content/ClipData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .local v0, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/clipboardex/ClipboardExService;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z

    .end local v0    # "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_0
    return-void
.end method
