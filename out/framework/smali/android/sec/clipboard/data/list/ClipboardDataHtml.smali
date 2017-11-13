.class public Landroid/sec/clipboard/data/list/ClipboardDataHtml;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataHtml.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataHtml"

.field private static final regex:Ljava/lang/String; = "<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>"

.field private static final regex2:Ljava/lang/String; = "(?i)<[^/bpd][^>]*>|<p[a-z][^>]*>|<br[a-z][^>]*>|<d[^i][^v][^>]*>|<div[a-z][^>]*>|</[^bpd]+?>|</p[a-z]+>|</br[a-z]+>|</d[^i][^v]+>|</div[a-z]+>"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mFirstImg:Landroid/graphics/Bitmap;

.field private mFirstImgPath:Ljava/lang/String;

.field private mHtml:Ljava/lang/String;

.field private mPlainText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImg:Landroid/graphics/Bitmap;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImgPath:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;)V
    .locals 2
    .param p1, "htmlFragment"    # Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;-><init>()V

    .line 62
    iget-object v0, p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImg:Landroid/graphics/Bitmap;

    .line 65
    iget-object v0, p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImgPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImgPath:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setTimestamp(J)V

    .line 67
    return-void
.end method


# virtual methods
.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 6
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 96
    .local v0, "Result":Z
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_1

    .line 112
    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_0
    :goto_0
    return v2

    .line 100
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 109
    :pswitch_0
    const/4 v0, 0x0

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_1
    move v2, v0

    .line 112
    goto :goto_0

    .line 102
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_1
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->setText(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 103
    goto :goto_1

    .line 105
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_2
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    iget-object v5, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImgPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v4, v5}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtmlWithImagePathInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 106
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    move v0, v1

    .line 107
    :goto_2
    goto :goto_1

    :cond_2
    move v0, v2

    .line 106
    goto :goto_2

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 120
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImg:Landroid/graphics/Bitmap;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImgPath:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 291
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 292
    const-string v2, "ClipboardDataHtml"

    const-string v3, "html equals"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 304
    :cond_1
    :goto_0
    return v1

    .line 299
    :cond_2
    instance-of v2, p1, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 303
    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .line 304
    .local v0, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getFirstImage(II)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x7

    .line 235
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImg:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 236
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImg:Landroid/graphics/Bitmap;

    .line 273
    :cond_0
    :goto_0
    return-object v0

    .line 239
    :cond_1
    const/4 v0, 0x0

    .line 240
    .local v0, "Result":Landroid/graphics/Bitmap;
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v9, :cond_2

    .line 241
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 242
    const-string v4, "ClipboardDataHtml"

    const-string v5, "getFirstImage : Data is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :cond_2
    const-string v2, ""

    .line 249
    .local v2, "sFileName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFormHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 258
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v9, :cond_4

    .line 259
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 260
    const-string v4, "ClipboardDataHtml"

    const-string v5, "getFirstImage : FileName is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 254
    const-string v4, "ClipboardDataHtml"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFirstImage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 265
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_5

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    .line 272
    :goto_2
    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImg:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 266
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_6

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    .line 267
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "substring":Ljava/lang/String;
    invoke-static {v3, p1, p2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 269
    goto :goto_2

    .line 270
    .end local v3    # "substring":Ljava/lang/String;
    :cond_6
    invoke-static {v2, p2, p2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2
.end method

.method public getFirstImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    return-object v0
.end method

.method public isValidData()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 82
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
    .line 400
    return-void
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 342
    :try_start_0
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    .line 343
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    .line 344
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImgPath:Ljava/lang/String;

    .line 345
    const-class v1, Landroid/content/ClipData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mClipdata:Landroid/content/ClipData;

    .line 346
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mIsProtected:Z

    .line 347
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v1, :cond_0

    .line 348
    const-string v1, "ClipboardDataHtml"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipboardDataHtml : readFromSource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ClipboardDataHtml"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readFromSource~Exception :"

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

.method protected setClipboardDataHtml(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "plain"    # Ljava/lang/String;
    .param p3, "firstImg"    # Landroid/graphics/Bitmap;
    .param p4, "firstImgPath"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImg:Landroid/graphics/Bitmap;

    .line 74
    iput-object p4, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImgPath:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setFirstImgPath(Ljava/lang/String;)Z
    .locals 4
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 371
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_2

    :cond_0
    move v1, v2

    .line 384
    :cond_1
    :goto_0
    return v1

    .line 375
    :cond_2
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImgPath:Ljava/lang/String;

    .line 376
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "tempFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 380
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 381
    const-string v1, "ClipboardDataHtml"

    const-string v3, "ClipboardDataHtml : value is no file path ..check plz"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v1, v2

    .line 384
    goto :goto_0
.end method

.method public setHtml(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtmlInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setHtmlInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "html"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v2, 0x20000

    const/4 v0, 0x0

    .line 140
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 145
    invoke-interface {p2, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 148
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    .line 149
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v0, :cond_3

    .line 150
    const-string v0, "ClipboardDataHtml"

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_7

    .line 155
    :cond_4
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    const-string v1, "(?i)<[^/bpd][^>]*>|<p[a-z][^>]*>|<br[a-z][^>]*>|<d[^i][^v][^>]*>|<div[a-z][^>]*>|</[^bpd]+?>|</p[a-z]+>|</br[a-z]+>|</d[^i][^v]+>|</div[a-z]+>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    .line 162
    :goto_1
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v0, :cond_5

    .line 163
    const-string v0, "ClipboardDataHtml"

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_5
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImg:Landroid/graphics/Bitmap;

    .line 169
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    goto :goto_1
.end method

.method public setHtmlWithImagePath(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filePath"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 190
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtmlInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v1

    .line 194
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v3, v2, :cond_3

    .line 195
    :cond_2
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 196
    const-string v2, "ClipboardDataHtml"

    const-string v3, "filePath is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :cond_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImgPath:Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/io/File;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "tempFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_4

    .line 203
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 204
    const-string v2, "ClipboardDataHtml"

    const-string/jumbo v3, "setHtmlWithImagePath : value is no file path ..check plz"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_4
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 211
    const-string v1, "ClipboardDataHtml"

    const-string/jumbo v3, "setHtmlWithImagePath : value is GOOD file path."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v1, v2

    .line 213
    goto :goto_0
.end method

.method public setHtmlWithImagePathInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "html"    # Ljava/lang/CharSequence;
    .param p3, "filePath"    # Ljava/lang/CharSequence;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 177
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    .line 179
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtmlWithImagePath(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this Html class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

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
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 315
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 316
    const-string v2, "ClipboardDataHtml"

    const-string v3, "html write to parcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 320
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    if-nez v2, :cond_1

    .line 321
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "text/html"

    aput-object v3, v1, v2

    .line 322
    .local v1, "mimeType":[Ljava/lang/String;
    new-instance v0, Landroid/content/ClipData$Item;

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImgPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v2, v3, v6, v4}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 323
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v2, Landroid/content/ClipData;

    invoke-direct {v2, v6, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iput-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 325
    .end local v0    # "item":Landroid/content/ClipData$Item;
    .end local v1    # "mimeType":[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 326
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mPlainText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 327
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImgPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 328
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 329
    iget-boolean v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 331
    return-void
.end method
