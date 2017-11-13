.class public Landroid/sec/clipboard/data/ClipboardDataFactory;
.super Ljava/lang/Object;
.source "ClipboardDataFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .param p0, "format"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    packed-switch p0, :pswitch_data_0

    .line 77
    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 48
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 51
    :pswitch_1
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .line 52
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 55
    :pswitch_2
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;-><init>()V

    .line 56
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 59
    :pswitch_3
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataUri;-><init>()V

    .line 60
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 63
    :pswitch_4
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;-><init>()V

    .line 64
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 67
    :pswitch_5
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;-><init>()V

    .line 68
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 71
    :pswitch_6
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;-><init>()V

    .line 72
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 45
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
