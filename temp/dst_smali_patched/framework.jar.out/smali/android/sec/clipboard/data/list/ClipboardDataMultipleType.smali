.class public Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataMultipleType.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataMultipleType"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    return-void
.end method


# virtual methods
.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 3
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .local v0, "Result":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->mClipdata:Landroid/content/ClipData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_0
    return v1

    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_1
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_1
    move v1, v0

    goto :goto_0

    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_0
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {p2, v1}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->setMultipleType(Landroid/content/ClipData;)Z

    move-result v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public clearData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->mClipdata:Landroid/content/ClipData;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardDataMultipleType"

    const-string v3, "multiple type equals"

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
    instance-of v2, p1, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;

    if-eqz v2, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;

    .local v1, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getMultipleType()Landroid/content/ClipData;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->mClipdata:Landroid/content/ClipData;

    return-object v0
.end method

.method public isValidData()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->mClipdata:Landroid/content/ClipData;

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
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    :try_start_0
    const-class v1, Landroid/content/ClipData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->mClipdata:Landroid/content/ClipData;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->mIsProtected:Z

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardDataMultipleType"

    const-string v2, "ClipboardDataMultipleType : readFromSource : "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ClipboardDataMultipleType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readFromSource~Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMultipleType(Landroid/content/ClipData;)Z
    .locals 1
    .param p1, "clipdata"    # Landroid/content/ClipData;

    .prologue
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->mClipdata:Landroid/content/ClipData;

    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardDataMultipleType"

    const-string v1, "Multiple Type write to parcel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->mClipdata:Landroid/content/ClipData;

    if-nez v0, :cond_1

    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->mClipdata:Landroid/content/ClipData;

    :cond_1
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->mIsProtected:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
