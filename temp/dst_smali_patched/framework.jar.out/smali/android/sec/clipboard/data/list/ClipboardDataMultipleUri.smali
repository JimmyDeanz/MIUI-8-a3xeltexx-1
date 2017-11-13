.class public Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
.super Landroid/sec/clipboard/data/list/ClipboardDataUriList;
.source "ClipboardDataMultipleUri.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;-><init>()V

    return-void
.end method


# virtual methods
.method public GetMultipleUri()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->getUriList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 1
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    return v0
.end method

.method public SetMultipleUri(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->setUriList(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public SetMultipleUriInternal(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->setUriListInternal(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public clearData()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->clearData()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    return-void
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->readFromSource(Landroid/os/Parcel;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
