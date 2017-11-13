.class public Landroid/sec/clipboard/data/list/ClipboardDataText;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataText.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataText"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mNumberOfTrailingWhiteLines:I

.field private transient mText:Ljava/lang/CharSequence;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    iput v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mNumberOfTrailingWhiteLines:I

    iput v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mNumberOfTrailingWhiteLines:I

    return-void
.end method


# virtual methods
.method public GetText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 3
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .local v0, "Result":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_0
    return v1

    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_1
    move v1, v0

    goto :goto_0

    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_1
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->setText(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_1

    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_2
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtml(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public SetText(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->setText(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public clearData()V
    .locals 1

    .prologue
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardDataText"

    const-string v3, "text equals"

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
    instance-of v2, p1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    if-eqz v2, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .local v1, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

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

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isValidData()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

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
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

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

.method public setText(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v2, 0x20000

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toLoad()V
    .locals 7

    .prologue
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/sec/clipboard/util/HtmlUtils;->isHtml(Ljava/lang/String;)Z

    move-result v0

    .local v0, "bHtml":Z
    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    iput-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    :goto_0
    const/4 v3, 0x0

    .local v3, "numNewLine":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v2, v4, :cond_1

    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v3    # "numNewLine":I
    :cond_0
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    iput-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    .restart local v2    # "i":I
    .restart local v3    # "numNewLine":I
    :cond_1
    iget v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mNumberOfTrailingWhiteLines:I

    if-le v3, v4, :cond_2

    iget v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mNumberOfTrailingWhiteLines:I

    sub-int v1, v3, v4

    .local v1, "gap":I
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {v4, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    .end local v1    # "gap":I
    :cond_2
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "ClipboardDataText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ClipboardDataText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mText = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "bHtml":Z
    .end local v2    # "i":I
    .end local v3    # "numNewLine":I
    :cond_3
    return-void
.end method

.method public toSave()V
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mNumberOfTrailingWhiteLines:I

    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mNumberOfTrailingWhiteLines:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mNumberOfTrailingWhiteLines:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ClipboardDataText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mText is an instance of Spanned: mValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ClipboardDataText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mText is not an instance of Spanned: mValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this Text class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardDataText"

    const-string v3, "text write to parcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "text/plain"

    aput-object v3, v1, v2

    .local v1, "mimeType":[Ljava/lang/String;
    new-instance v0, Landroid/content/ClipData$Item;

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    invoke-direct {v0, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v2, Landroid/content/ClipData;

    const-string v3, "clipboarddragNdrop"

    invoke-direct {v2, v3, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iput-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mClipdata:Landroid/content/ClipData;

    .end local v0    # "item":Landroid/content/ClipData$Item;
    .end local v1    # "mimeType":[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-boolean v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mIsProtected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
