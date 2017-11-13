.class public Landroid/sec/clipboard/data/list/ClipboardDataUriList;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataUriList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataUriList"

.field protected static final serialVersionUID:J = 0x1L


# instance fields
.field protected mUriArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 3
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 55
    .local v0, "Result":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 67
    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_0
    return v1

    .line 59
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 64
    const/4 v0, 0x0

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_1
    move v1, v0

    .line 67
    goto :goto_0

    .line 61
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_0
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataUriList;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->setUriListInternal(Ljava/util/ArrayList;)Z

    move-result v0

    .line 62
    goto :goto_1

    .line 59
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    .line 76
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 148
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 149
    const-string v4, "ClipboardDataUriList"

    const-string/jumbo v5, "multiple uri equals"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 172
    :cond_1
    :goto_0
    return v3

    .line 156
    :cond_2
    instance-of v4, p1, Landroid/sec/clipboard/data/list/ClipboardDataUriList;

    if-eqz v4, :cond_1

    move-object v1, p1

    .line 160
    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataUriList;

    .line 162
    .local v1, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataUriList;
    const/4 v0, 0x0

    .line 163
    .local v0, "Result":Z
    if-eqz v1, :cond_3

    .line 164
    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 165
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->getUriList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    move v0, v2

    :cond_3
    :goto_1
    move v3, v0

    .line 172
    goto :goto_0

    :cond_4
    move v0, v3

    .line 165
    goto :goto_1

    .line 167
    :cond_5
    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v2

    .line 168
    goto :goto_0
.end method

.method public getUriList()Ljava/util/ArrayList;
    .locals 5
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
    .line 122
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 123
    const/4 v2, 0x0

    .line 131
    :cond_0
    return-object v2

    .line 125
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v2, "multiUri":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 127
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 128
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 129
    .local v3, "uri":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isValidData()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 225
    return-void
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    .line 208
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 210
    const-class v0, Landroid/content/ClipData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 211
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    .line 212
    return-void
.end method

.method public setUriList(Ljava/util/ArrayList;)Z
    .locals 5
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
    .line 85
    .local p1, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez p1, :cond_0

    .line 86
    const/4 v3, 0x0

    .line 94
    :goto_0
    return v3

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 89
    .local v0, "N":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 91
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 92
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setUriListInternal(Ljava/util/ArrayList;)Z
    .locals 4
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
    .line 105
    .local p1, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 106
    const/4 v2, 0x0

    .line 113
    :goto_0
    return v2

    .line 108
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 109
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 111
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this UriList class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x0

    .line 182
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 183
    const-string v3, "ClipboardDataUriList"

    const-string v4, "Multiple Uri write to parcel"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 187
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mClipdata:Landroid/content/ClipData;

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 188
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "text/uri-list"

    aput-object v3, v2, v5

    .line 189
    .local v2, "mimeType":[Ljava/lang/String;
    new-instance v1, Landroid/content/ClipData$Item;

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 190
    .local v1, "item":Landroid/content/ClipData$Item;
    new-instance v3, Landroid/content/ClipData;

    const-string v4, "clipboarddragNdrop"

    invoke-direct {v3, v4, v2, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iput-object v3, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 192
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 193
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mClipdata:Landroid/content/ClipData;

    new-instance v5, Landroid/content/ClipData$Item;

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "i":I
    .end local v1    # "item":Landroid/content/ClipData$Item;
    .end local v2    # "mimeType":[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 197
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 198
    iget-boolean v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mIsProtected:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 199
    return-void
.end method
