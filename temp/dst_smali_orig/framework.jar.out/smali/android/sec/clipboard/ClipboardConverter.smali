.class public Landroid/sec/clipboard/ClipboardConverter;
.super Ljava/lang/Object;
.source "ClipboardConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/ClipboardConverter$1;,
        Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Landroid/sec/clipboard/ClipboardConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "ClipboardConverter"

    sput-object v0, Landroid/sec/clipboard/ClipboardConverter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFormatID(Landroid/content/ClipData;)I
    .locals 10
    .param p1, "data"    # Landroid/content/ClipData;

    .prologue
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "formatID":I
    const/4 v5, 0x0

    .local v5, "text_count":I
    const/4 v2, 0x0

    .local v2, "html_count":I
    const/4 v6, 0x0

    .local v6, "uri_count":I
    const/4 v7, 0x0

    .local v7, "uri_image_count":I
    const/4 v4, 0x0

    .local v4, "intent_count":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v0, :cond_4

    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/sec/clipboard/ClipboardConverter;->isImagefile(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v7, v7, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-ne v0, v9, :cond_a

    if-ne v2, v9, :cond_6

    const/4 v1, 0x4

    :cond_5
    :goto_1
    return v1

    :cond_6
    if-ne v5, v9, :cond_7

    const/4 v1, 0x2

    goto :goto_1

    :cond_7
    if-ne v7, v9, :cond_8

    const/4 v1, 0x3

    goto :goto_1

    :cond_8
    if-ne v4, v9, :cond_9

    const/4 v1, 0x6

    goto :goto_1

    :cond_9
    if-ne v6, v9, :cond_5

    const/4 v1, 0x5

    goto :goto_1

    :cond_a
    if-le v6, v9, :cond_b

    if-le v0, v6, :cond_b

    const/16 v1, 0x8

    goto :goto_1

    :cond_b
    const/4 v1, 0x7

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardConverter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Landroid/sec/clipboard/ClipboardConverter;->sInstance:Landroid/sec/clipboard/ClipboardConverter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/clipboard/ClipboardConverter;

    invoke-direct {v0}, Landroid/sec/clipboard/ClipboardConverter;-><init>()V

    sput-object v0, Landroid/sec/clipboard/ClipboardConverter;->sInstance:Landroid/sec/clipboard/ClipboardConverter;

    :cond_0
    sget-object v0, Landroid/sec/clipboard/ClipboardConverter;->sInstance:Landroid/sec/clipboard/ClipboardConverter;

    return-object v0
.end method

.method private getUriList(Landroid/content/ClipData;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "data"    # Landroid/content/ClipData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "uri_count":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private isImagefile(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    if-eqz p1, :cond_0

    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    new-instance v1, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;-><init>(Landroid/sec/clipboard/ClipboardConverter$1;)V

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;->accept(Ljava/io/File;)Z

    move-result v1

    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ClipDataToClipboardData(Landroid/content/ClipData;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 13
    .param p1, "data"    # Landroid/content/ClipData;

    .prologue
    const/4 v11, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    if-nez v10, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-direct {p0, p1}, Landroid/sec/clipboard/ClipboardConverter;->getFormatID(Landroid/content/ClipData;)I

    move-result v3

    .local v3, "formatID":I
    const/4 v2, 0x0

    .local v2, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    packed-switch v3, :pswitch_data_0

    sget-object v10, Landroid/sec/clipboard/ClipboardConverter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "default : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    new-instance v7, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v7}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .local v7, "textdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/sec/clipboard/data/list/ClipboardDataText;->setText(Ljava/lang/CharSequence;)Z

    :cond_2
    invoke-virtual {v7, p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->setClipdata(Landroid/content/ClipData;)V

    move-object v2, v7

    goto :goto_0

    .end local v7    # "textdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :pswitch_1
    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .local v1, "bitmapData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setBitmapPath(Ljava/lang/String;)Z

    :cond_3
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setClipdata(Landroid/content/ClipData;)V

    move-object v2, v1

    goto :goto_0

    .end local v1    # "bitmapData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :pswitch_2
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;-><init>()V

    .local v0, "Htmldata":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtml(Ljava/lang/CharSequence;)Z

    :cond_4
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setClipdata(Landroid/content/ClipData;)V

    move-object v2, v0

    goto/16 :goto_0

    .end local v0    # "Htmldata":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :pswitch_3
    new-instance v8, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    invoke-direct {v8}, Landroid/sec/clipboard/data/list/ClipboardDataUri;-><init>()V

    .local v8, "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setUri(Landroid/net/Uri;)Z

    :cond_5
    invoke-virtual {v8, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setClipdata(Landroid/content/ClipData;)V

    move-object v2, v8

    goto/16 :goto_0

    .end local v8    # "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :pswitch_4
    new-instance v4, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    invoke-direct {v4}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;-><init>()V

    .local v4, "intentData":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {p1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->setIntent(Landroid/content/Intent;)Z

    :cond_6
    invoke-virtual {v4, p1}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->setClipdata(Landroid/content/ClipData;)V

    move-object v2, v4

    goto/16 :goto_0

    .end local v4    # "intentData":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    :pswitch_5
    new-instance v9, Landroid/sec/clipboard/data/list/ClipboardDataUriList;

    invoke-direct {v9}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;-><init>()V

    .local v9, "uriList":Landroid/sec/clipboard/data/list/ClipboardDataUriList;
    invoke-direct {p0, p1}, Landroid/sec/clipboard/ClipboardConverter;->getUriList(Landroid/content/ClipData;)Ljava/util/ArrayList;

    move-result-object v5

    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v5, :cond_7

    invoke-virtual {v9, v5}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->setUriList(Ljava/util/ArrayList;)Z

    :cond_7
    invoke-virtual {v9, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->setClipdata(Landroid/content/ClipData;)V

    move-object v2, v9

    goto/16 :goto_0

    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v9    # "uriList":Landroid/sec/clipboard/data/list/ClipboardDataUriList;
    :pswitch_6
    new-instance v6, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;

    invoke-direct {v6}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;-><init>()V

    .local v6, "multiType":Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;
    if-eqz p1, :cond_8

    invoke-virtual {v6, p1}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->setClipdata(Landroid/content/ClipData;)V

    :cond_8
    move-object v2, v6

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public ClipboardDataToClipData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/content/ClipData;
    .locals 1
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v0, 0x0

    .local v0, "clipData":Landroid/content/ClipData;
    return-object v0
.end method
