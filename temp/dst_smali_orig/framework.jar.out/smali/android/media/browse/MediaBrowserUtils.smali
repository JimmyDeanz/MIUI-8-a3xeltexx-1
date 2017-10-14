.class public Landroid/media/browse/MediaBrowserUtils;
.super Ljava/lang/Object;
.source "MediaBrowserUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_3

    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    move v1, v0

    :cond_4
    return v1

    :cond_5
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_6

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_6

    move v1, v0

    :cond_6
    return v1
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 11
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    if-nez p0, :cond_2

    const/4 v2, -0x1

    .local v2, "page1":I
    :goto_0
    if-nez p1, :cond_3

    const/4 v3, -0x1

    .local v3, "page2":I
    :goto_1
    if-nez p0, :cond_4

    const/4 v4, -0x1

    .local v4, "pageSize1":I
    :goto_2
    if-nez p1, :cond_5

    const/4 v5, -0x1

    .local v5, "pageSize2":I
    :goto_3
    if-eq v2, v9, :cond_0

    if-ne v4, v9, :cond_6

    :cond_0
    const/4 v6, 0x0

    .local v6, "startIndex1":I
    const v0, 0x7fffffff

    .local v0, "endIndex1":I
    :goto_4
    if-eq v3, v9, :cond_1

    if-ne v5, v9, :cond_7

    :cond_1
    const/4 v7, 0x0

    .local v7, "startIndex2":I
    const v1, 0x7fffffff

    .local v1, "endIndex2":I
    :goto_5
    if-gt v6, v7, :cond_8

    if-gt v7, v0, :cond_8

    return v10

    .end local v0    # "endIndex1":I
    .end local v1    # "endIndex2":I
    .end local v2    # "page1":I
    .end local v3    # "page2":I
    .end local v4    # "pageSize1":I
    .end local v5    # "pageSize2":I
    .end local v6    # "startIndex1":I
    .end local v7    # "startIndex2":I
    :cond_2
    const-string v8, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "page1":I
    goto :goto_0

    :cond_3
    const-string v8, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .restart local v3    # "page2":I
    goto :goto_1

    :cond_4
    const-string v8, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .restart local v4    # "pageSize1":I
    goto :goto_2

    :cond_5
    const-string v8, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .restart local v5    # "pageSize2":I
    goto :goto_3

    :cond_6
    mul-int v6, v4, v2

    .restart local v6    # "startIndex1":I
    add-int v8, v6, v4

    add-int/lit8 v0, v8, -0x1

    .restart local v0    # "endIndex1":I
    goto :goto_4

    :cond_7
    mul-int v7, v5, v3

    .restart local v7    # "startIndex2":I
    add-int v8, v7, v5

    add-int/lit8 v1, v8, -0x1

    .restart local v1    # "endIndex2":I
    goto :goto_5

    :cond_8
    if-gt v6, v1, :cond_9

    if-gt v1, v0, :cond_9

    return v10

    :cond_9
    const/4 v8, 0x0

    return v8
.end method
