.class Landroid/sec/clipboard/data/ClipboardDataMgr$1;
.super Landroid/sec/clipboard/data/IClipboardDataList$Stub;
.source "ClipboardDataMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/ClipboardDataMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-direct {p0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method public getScrapItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getScrapItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method public removeData(I)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v0

    return v0
.end method

.method public removeScrapData(I)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeScrapData(I)Z

    move-result v0

    return v0
.end method

.method public scrapSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->scrapSize()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    return v0
.end method

.method public updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "clipData"    # Landroid/sec/clipboard/data/ClipboardData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    return v0
.end method

.method public updateScrapData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "clipData"    # Landroid/sec/clipboard/data/ClipboardData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateScrapData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    return v0
.end method
