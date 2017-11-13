.class public abstract Lcom/android/incallui/view/IndexSortedView;
.super Landroid/widget/LinearLayout;
.source "IndexSortedView.java"


# instance fields
.field private dividerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private hideBelowDividerSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hideSelfDividerSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalViewsCount:I

.field private viewMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/view/IndexSortedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/view/IndexSortedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/IndexSortedView;->setOrientation(I)V

    .line 33
    invoke-direct {p0}, Lcom/android/incallui/view/IndexSortedView;->initData()V

    .line 34
    return-void
.end method

.method private controlDividerToShow(ZIILandroid/view/View;)V
    .locals 2
    .param p1, "isFirstDivider"    # Z
    .param p2, "frontIndex"    # I
    .param p3, "index"    # I
    .param p4, "view"    # Landroid/view/View;

    .prologue
    .line 164
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/view/IndexSortedView;->hideSelfDividerSet:Ljava/util/HashSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/view/IndexSortedView;->hideBelowDividerSet:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/incallui/view/IndexSortedView;->getTotalViewCount()I

    move-result v0

    .line 41
    .local v0, "count":I
    iput v0, p0, Lcom/android/incallui/view/IndexSortedView;->mTotalViewsCount:I

    .line 42
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/incallui/view/IndexSortedView;->viewMap:Landroid/util/SparseArray;

    .line 43
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/incallui/view/IndexSortedView;->dividerMap:Landroid/util/SparseArray;

    .line 44
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/incallui/view/IndexSortedView;->hideSelfDividerSet:Ljava/util/HashSet;

    .line 45
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/incallui/view/IndexSortedView;->hideBelowDividerSet:Ljava/util/HashSet;

    .line 46
    return-void
.end method

.method private refreshDividerVisibility()V
    .locals 5

    .prologue
    .line 150
    const/4 v2, 0x1

    .line 151
    .local v2, "isFirstDivider":Z
    const/4 v0, -0x1

    .line 152
    .local v0, "frontIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/android/incallui/view/IndexSortedView;->mTotalViewsCount:I

    if-ge v1, v4, :cond_1

    .line 153
    iget-object v4, p0, Lcom/android/incallui/view/IndexSortedView;->dividerMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 154
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 155
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/android/incallui/view/IndexSortedView;->controlDividerToShow(ZIILandroid/view/View;)V

    .line 156
    const/4 v2, 0x0

    .line 157
    move v0, v1

    .line 152
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public addIndexView(ILandroid/view/View;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 82
    if-gez p1, :cond_0

    .line 83
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "index must be > 0 !"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 85
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/view/IndexSortedView;->viewMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 108
    :goto_0
    return-void

    .line 88
    :cond_1
    const/4 v2, 0x0

    .line 90
    .local v2, "targetIndex":I
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 91
    iget-object v4, p0, Lcom/android/incallui/view/IndexSortedView;->viewMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 92
    .local v3, "tmpView":Landroid/view/View;
    if-eqz v3, :cond_4

    .line 93
    invoke-virtual {p0, v3}, Lcom/android/incallui/view/IndexSortedView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 98
    .end local v3    # "tmpView":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/view/IndexSortedView;->getDividerView(I)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "dividerView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 100
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 101
    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/view/IndexSortedView;->addView(Landroid/view/View;I)V

    .line 102
    iget-object v4, p0, Lcom/android/incallui/view/IndexSortedView;->dividerMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 105
    :cond_3
    invoke-virtual {p0, p2, v2}, Lcom/android/incallui/view/IndexSortedView;->addView(Landroid/view/View;I)V

    .line 106
    iget-object v4, p0, Lcom/android/incallui/view/IndexSortedView;->viewMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    invoke-direct {p0}, Lcom/android/incallui/view/IndexSortedView;->refreshDividerVisibility()V

    goto :goto_0

    .line 90
    .end local v0    # "dividerView":Landroid/view/View;
    .restart local v3    # "tmpView":Landroid/view/View;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public clearAllView()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/incallui/view/IndexSortedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/view/IndexSortedView;->viewMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 136
    iget-object v0, p0, Lcom/android/incallui/view/IndexSortedView;->dividerMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 137
    invoke-virtual {p0}, Lcom/android/incallui/view/IndexSortedView;->removeAllViewsInLayout()V

    goto :goto_0
.end method

.method public varargs configIndexBackNoDivider([I)V
    .locals 6
    .param p1, "indexs"    # [I

    .prologue
    .line 70
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 71
    .local v2, "index":I
    iget-object v4, p0, Lcom/android/incallui/view/IndexSortedView;->hideBelowDividerSet:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "index":I
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/view/IndexSortedView;->refreshDividerVisibility()V

    .line 74
    return-void
.end method

.method public varargs configIndexFrontNoDivider([I)V
    .locals 6
    .param p1, "indexs"    # [I

    .prologue
    .line 58
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 59
    .local v2, "index":I
    iget-object v4, p0, Lcom/android/incallui/view/IndexSortedView;->hideSelfDividerSet:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "index":I
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/view/IndexSortedView;->refreshDividerVisibility()V

    .line 62
    return-void
.end method

.method public getColor(I)I
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/incallui/view/IndexSortedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected abstract getDividerView(I)Landroid/view/View;
.end method

.method public getSize(I)I
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/incallui/view/IndexSortedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected abstract getTotalViewCount()I
.end method

.method public removeViewByIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 117
    iget-object v2, p0, Lcom/android/incallui/view/IndexSortedView;->viewMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 118
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/android/incallui/view/IndexSortedView;->dividerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 119
    .local v0, "dividerView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0, v1}, Lcom/android/incallui/view/IndexSortedView;->removeViewInLayout(Landroid/view/View;)V

    .line 121
    iget-object v2, p0, Lcom/android/incallui/view/IndexSortedView;->viewMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 123
    :cond_0
    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/incallui/view/IndexSortedView;->removeViewInLayout(Landroid/view/View;)V

    .line 125
    iget-object v2, p0, Lcom/android/incallui/view/IndexSortedView;->dividerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/view/IndexSortedView;->requestLayout()V

    .line 128
    invoke-direct {p0}, Lcom/android/incallui/view/IndexSortedView;->refreshDividerVisibility()V

    .line 129
    return-void
.end method
