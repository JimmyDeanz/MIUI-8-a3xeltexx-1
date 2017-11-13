.class Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;
.super Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;
.source "ClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

.field final synthetic this$1:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;


# direct methods
.method constructor <init>(Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getClipboarddata(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 2
    .param p1, "index"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->getClipboarddata(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 294
    .local v0, "clipboarddata":Landroid/sec/clipboard/data/ClipboardData;
    return-object v0
.end method

.method public removeAll()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    invoke-virtual {v0}, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->removeAll()Z

    move-result v0

    return v0
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    invoke-virtual {v0, p1}, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->removeItem(I)V

    .line 281
    return-void
.end method

.method public removeScrapItem(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    invoke-virtual {v0, p1}, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->removeScrapItem(I)V

    .line 312
    return-void
.end method

.method public selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 290
    return-void
.end method

.method public selectScrapItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->selectScrapItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 317
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
    .line 299
    if-eqz p1, :cond_0

    .line 300
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/sec/clipboard/ClipboardConverter;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardConverter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    .line 301
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/ClipboardConverter;->ClipDataToClipboardData(Landroid/content/ClipData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 302
    .local v0, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    iget-object v1, v1, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/clipboardex/ClipboardExService;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z

    .line 306
    .end local v0    # "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_0
    return-void
.end method
