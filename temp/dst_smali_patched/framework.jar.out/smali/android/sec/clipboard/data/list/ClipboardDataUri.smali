.class public Landroid/sec/clipboard/data/list/ClipboardDataUri;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataUri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/list/ClipboardDataUri$1;,
        Landroid/sec/clipboard/data/list/ClipboardDataUri$ImageFileFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataUri"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mPreviewImgPath:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mPreviewImgPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public GetUri()Landroid/net/Uri;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .local v0, "Result":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :cond_2
    :goto_1
    move v2, v0

    goto :goto_0

    :pswitch_0
    instance-of v2, p2, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    if-eqz v2, :cond_3

    move-object v1, p2

    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .local v1, "data":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setUri(Landroid/net/Uri;)Z

    move-result v0

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mPreviewImgPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mPreviewImgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setPreviewImgPath(Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    goto :goto_1

    .end local v1    # "data":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public SetUri(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public clearData()V
    .locals 1

    .prologue
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardDataUri"

    const-string v3, "uri equals"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .local v0, "Result":Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .end local v0    # "Result":Z
    :cond_1
    :goto_0
    return v0

    .restart local v0    # "Result":Z
    :cond_2
    instance-of v2, p1, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    if-eqz v2, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .local v1, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getPreviewImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mPreviewImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isImagefile()Z
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getUri()Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataUri$ImageFileFilter;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/sec/clipboard/data/list/ClipboardDataUri$ImageFileFilter;-><init>(Landroid/sec/clipboard/data/list/ClipboardDataUri$1;)V

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/list/ClipboardDataUri$ImageFileFilter;->accept(Ljava/io/File;)Z

    move-result v2

    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isValidData()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

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
    return-void
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mPreviewImgPath:Ljava/lang/String;

    const-class v0, Landroid/content/ClipData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    return-void
.end method

.method public setPreviewImgPath(Ljava/lang/String;)Z
    .locals 6
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardDataUri"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPreviewImgPath :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .local v0, "Result":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    :cond_1
    move v1, v0

    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_0
    return v1

    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->isImagefile()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mPreviewImgPath:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_3
    :goto_1
    move v1, v0

    .restart local v1    # "Result":I
    goto :goto_0

    .end local v1    # "Result":I
    :cond_4
    const-string v3, ""

    iput-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mPreviewImgPath:Ljava/lang/String;

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "ClipboardDataUri"

    const-string v4, "ClipboardDataUri : value is no file path or not image file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setUri(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this Uri class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

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
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardDataUri"

    const-string v3, "Uri write to parcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "text/uri-list"

    aput-object v3, v1, v2

    .local v1, "mimeType":[Ljava/lang/String;
    new-instance v0, Landroid/content/ClipData$Item;

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v2, Landroid/content/ClipData;

    const-string v3, "MultiWindow_DragDrop"

    invoke-direct {v2, v3, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iput-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .end local v0    # "item":Landroid/content/ClipData$Item;
    .end local v1    # "mimeType":[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mPreviewImgPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-boolean v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
