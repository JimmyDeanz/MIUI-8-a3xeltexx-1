.class public Landroid/widget/HorizontalListView;
.super Landroid/widget/AbsHorizontalListView;
.source "HorizontalListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HorizontalListView$ArrowScrollFocusResult;,
        Landroid/widget/HorizontalListView$FocusSelector;,
        Landroid/widget/HorizontalListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Landroid/widget/HorizontalListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iput-boolean v9, p0, Landroid/widget/HorizontalListView;->mAreAllItemsSelectable:Z

    iput-boolean v8, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    new-instance v6, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;-><init>(Landroid/widget/HorizontalListView$1;)V

    iput-object v6, p0, Landroid/widget/HorizontalListView;->mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    invoke-virtual {p0, v5}, Landroid/widget/HorizontalListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .local v2, "dividerHeight":I
    if-eqz v2, :cond_4

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->setDividerHeight(I)V

    :cond_4
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/HorizontalListView;->mHeaderDividersEnabled:Z

    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/HorizontalListView;->mFooterDividersEnabled:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/HorizontalListView;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private addViewLeftSide(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    add-int/lit8 v2, p2, -0x1

    .local v2, "abovePosition":I
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/HorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v5, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/widget/HorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object v1
.end method

.method private addViewRightSide(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    add-int/lit8 v2, p2, 0x1

    .local v2, "belowPosition":I
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/HorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    add-int v3, v0, v4

    .local v3, "edgeOfNewChild":I
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/HorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object v1
.end method

.method private adjustViewsLeftOrRight()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    if-lez v1, :cond_2

    iget-boolean v3, p0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v4

    .local v2, "delta":I
    iget v3, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    :cond_0
    if-gez v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-ge v3, v4, :cond_4

    iget v3, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    :cond_4
    if-lez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v10

    iget-object v11, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v5, v10, v11

    .local v5, "listRight":I
    iget-object v10, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    .local v4, "listLeft":I
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v7

    .local v7, "numChildren":I
    const/16 v10, 0x42

    if-ne p1, v10, :cond_6

    add-int/lit8 v3, v7, -0x1

    .local v3, "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    iget v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    :cond_0
    :goto_0
    if-gt v7, v3, :cond_1

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, Landroid/widget/HorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int v8, v10, v3

    .local v8, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .local v9, "viewToMakeVisible":Landroid/view/View;
    move v2, v5

    .local v2, "goalRight":I
    iget v10, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_2

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v2, v10

    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-gt v10, v2, :cond_3

    const/4 v10, 0x0

    .end local v2    # "goalRight":I
    :goto_1
    return v10

    .restart local v2    # "goalRight":I
    :cond_3
    const/4 v10, -0x1

    if-eq p2, v10, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v2, v10

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_4

    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v0, v10, v2

    .local v0, "amountToScroll":I
    iget v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-ne v10, v11, :cond_5

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v6, v10, v5

    .local v6, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .end local v6    # "max":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1

    .end local v0    # "amountToScroll":I
    .end local v2    # "goalRight":I
    .end local v3    # "indexToMakeVisible":I
    .end local v8    # "positionToMakeVisible":I
    .end local v9    # "viewToMakeVisible":Landroid/view/View;
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_7

    iget v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    :cond_7
    :goto_2
    if-gez v3, :cond_8

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v10, v11}, Landroid/widget/HorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    iget v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    iget v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_2

    :cond_8
    iget v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int v8, v10, v3

    .restart local v8    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .restart local v9    # "viewToMakeVisible":Landroid/view/View;
    move v1, v4

    .local v1, "goalLeft":I
    if-lez v8, :cond_9

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v1, v10

    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v10, v1, :cond_a

    const/4 v10, 0x0

    goto :goto_1

    :cond_a
    const/4 v10, -0x1

    if-eq p2, v10, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_b

    const/4 v10, 0x0

    goto :goto_1

    :cond_b
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v0, v1, v10

    .restart local v0    # "amountToScroll":I
    iget v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-nez v10, :cond_c

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v6, v4, v10

    .restart local v6    # "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .end local v6    # "max":I
    :cond_c
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_1
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "amountToScroll":I
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/widget/HorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/16 v2, 0x11

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    if-lez p3, :cond_0

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    .local v1, "listRight":I
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v2, v1, :cond_0

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v1

    iget v2, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Landroid/widget/HorizontalListView$ArrowScrollFocusResult;
    .locals 17
    .param p1, "direction"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v12

    .local v12, "selectedView":Landroid/view/View;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .local v8, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .end local v8    # "oldFocus":Landroid/view/View;
    .local v7, "newFocus":Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/HorizontalListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .local v9, "positionOfNewFocus":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    invoke-direct/range {p0 .. p1}, Landroid/widget/HorizontalListView;->lookForSelectablePositionOnScreen(I)I

    move-result v11

    .local v11, "selectablePosition":I
    const/4 v14, -0x1

    if-eq v11, v14, :cond_a

    const/16 v14, 0x42

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    if-lt v11, v9, :cond_1

    :cond_0
    const/16 v14, 0x11

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-le v11, v9, :cond_a

    :cond_1
    const/4 v14, 0x0

    .end local v9    # "positionOfNewFocus":I
    .end local v11    # "selectablePosition":I
    :goto_1
    return-object v14

    .end local v7    # "newFocus":Landroid/view/View;
    :cond_2
    const/16 v14, 0x42

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-lez v14, :cond_3

    const/4 v3, 0x1

    .local v3, "leftFadingEdgeShowing":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_3
    add-int v4, v15, v14

    .local v4, "listLeft":I
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    if-le v14, v4, :cond_5

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    .local v13, "xSearchPoint":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    .end local v3    # "leftFadingEdgeShowing":Z
    .end local v4    # "listLeft":I
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "newFocus":Landroid/view/View;
    goto :goto_0

    .end local v7    # "newFocus":Landroid/view/View;
    .end local v13    # "xSearchPoint":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .restart local v3    # "leftFadingEdgeShowing":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .restart local v4    # "listLeft":I
    :cond_5
    move v13, v4

    goto :goto_4

    .end local v3    # "leftFadingEdgeShowing":Z
    .end local v4    # "listLeft":I
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-ge v14, v15, :cond_7

    const/4 v10, 0x1

    .local v10, "rightFadingEdgeShowing":Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v15, v14, v15

    if-eqz v10, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_7
    sub-int v5, v15, v14

    .local v5, "listRight":I
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    if-ge v14, v5, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    .restart local v13    # "xSearchPoint":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .end local v5    # "listRight":I
    .end local v10    # "rightFadingEdgeShowing":Z
    .end local v13    # "xSearchPoint":I
    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    .restart local v10    # "rightFadingEdgeShowing":Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    .restart local v5    # "listRight":I
    :cond_9
    move v13, v5

    goto :goto_8

    .end local v5    # "listRight":I
    .end local v10    # "rightFadingEdgeShowing":Z
    .restart local v7    # "newFocus":Landroid/view/View;
    .restart local v9    # "positionOfNewFocus":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Landroid/widget/HorizontalListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v2

    .local v2, "focusScroll":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getMaxScrollAmount()I

    move-result v6

    .local v6, "maxScrollAmount":I
    if-ge v2, v6, :cond_b

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v2}, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;->populate(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/HorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;->populate(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .end local v2    # "focusScroll":I
    .end local v6    # "maxScrollAmount":I
    .end local v9    # "positionOfNewFocus":I
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .local v6, "selectedView":Landroid/view/View;
    iget v5, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    .local v5, "selectedPos":I
    invoke-direct {p0, v6, v5, p1}, Landroid/widget/HorizontalListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v4

    .local v4, "nextSelectedPosition":I
    invoke-direct {p0, p1, v4}, Landroid/widget/HorizontalListView;->amountToScroll(II)I

    move-result v0

    .local v0, "amountToScroll":I
    iget-boolean v7, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_c

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->arrowScrollFocused(I)Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    move-result-object v1

    .local v1, "focusResult":Landroid/widget/HorizontalListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    :cond_2
    if-eqz v1, :cond_d

    move v3, v8

    .local v3, "needToRedraw":Z
    :goto_2
    if-eq v4, v10, :cond_4

    if-eqz v1, :cond_e

    move v7, v8

    :goto_3
    invoke-direct {p0, v6, p1, v4, v7}, Landroid/widget/HorizontalListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalListView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    move v5, v4

    iget-boolean v7, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .end local v2    # "focused":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->checkSelectionChanged()V

    :cond_4
    if-lez v0, :cond_6

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->logActivity()V

    :cond_5
    const/16 v7, 0x11

    if-ne p1, v7, :cond_f

    .end local v0    # "amountToScroll":I
    :goto_4
    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->scrollListItemsBy(I)V

    const/4 v3, 0x1

    :cond_6
    iget-boolean v7, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_8

    if-nez v1, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .restart local v2    # "focused":Landroid/view/View;
    invoke-direct {p0, v2, p0}, Landroid/widget/HorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {p0, v2}, Landroid/widget/HorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_8

    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .end local v2    # "focused":Landroid/view/View;
    :cond_8
    if-ne v4, v10, :cond_9

    if-eqz v6, :cond_9

    invoke-direct {p0, v6, p0}, Landroid/widget/HorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_9

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->hideSelector()V

    iput v10, p0, Landroid/widget/HorizontalListView;->mResurrectToPosition:I

    :cond_9
    if-eqz v3, :cond_0

    if-eqz v6, :cond_a

    invoke-virtual {p0, v5, v6}, Landroid/widget/HorizontalListView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, p0, Landroid/widget/HorizontalListView;->mSelectedLeft:I

    :cond_a
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    :cond_b
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invokeOnItemScrollListener()V

    move v9, v8

    goto/16 :goto_0

    .end local v1    # "focusResult":Landroid/widget/HorizontalListView$ArrowScrollFocusResult;
    .end local v3    # "needToRedraw":Z
    .restart local v0    # "amountToScroll":I
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1    # "focusResult":Landroid/widget/HorizontalListView$ArrowScrollFocusResult;
    :cond_d
    move v3, v9

    goto/16 :goto_2

    .restart local v3    # "needToRedraw":Z
    :cond_e
    move v7, v9

    goto/16 :goto_3

    :cond_f
    neg-int v0, v0

    goto :goto_4
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-object v0, v4, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .local v3, "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-eqz v3, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x42

    const/16 v6, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget-boolean v5, p0, Landroid/widget/HorizontalListView;->mDataChanged:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->layoutChildren()V

    :cond_3
    const/4 v2, 0x0

    .local v2, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    if-eq v0, v4, :cond_4

    sparse-switch p1, :sswitch_data_0

    :cond_4
    :goto_1
    if-nez v2, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/HorizontalListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    packed-switch v0, :pswitch_data_0

    move v4, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    iget v5, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/HorizontalListView;->mTwCurrentFocusPosition:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_4

    move v1, p2

    .end local p2    # "count":I
    .local v1, "count":I
    :goto_2
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_4

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_6
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    move v2, v4

    :goto_3
    goto :goto_1

    :cond_8
    move v2, v3

    goto :goto_3

    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    iget v5, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/HorizontalListView;->mTwCurrentFocusPosition:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_4

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    :goto_4
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_4

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_4

    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_a
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    move v2, v4

    :goto_5
    goto :goto_1

    :cond_c
    move v2, v3

    goto :goto_5

    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_d
    iget v5, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/HorizontalListView;->mTwCurrentFocusPosition:I

    const/16 v5, 0x21

    invoke-direct {p0, v5}, Landroid/widget/HorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_e
    iget v5, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/HorizontalListView;->mTwCurrentFocusPosition:I

    const/16 v5, 0x82

    invoke-direct {p0, v5}, Landroid/widget/HorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->keyPressed()V

    const/4 v2, 0x1

    goto/16 :goto_1

    :sswitch_5
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_f

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_10
    move v2, v4

    :cond_11
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_12
    move v2, v3

    goto :goto_6

    :cond_13
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_14
    move v2, v4

    :goto_7
    goto :goto_6

    :cond_15
    move v2, v3

    goto :goto_7

    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_16
    move v2, v4

    :goto_8
    goto/16 :goto_1

    :cond_17
    move v2, v3

    goto :goto_8

    :cond_18
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    :cond_19
    move v2, v4

    :goto_9
    goto/16 :goto_1

    :cond_1a
    move v2, v3

    goto :goto_9

    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_1b
    move v2, v4

    :goto_a
    goto/16 :goto_1

    :cond_1c
    move v2, v3

    goto :goto_a

    :cond_1d
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1e
    move v2, v4

    :goto_b
    goto/16 :goto_1

    :cond_1f
    move v2, v3

    goto :goto_b

    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_21

    :cond_20
    move v2, v4

    :goto_c
    goto/16 :goto_1

    :cond_21
    move v2, v3

    goto :goto_c

    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_22

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_23

    :cond_22
    move v2, v4

    :goto_d
    goto/16 :goto_1

    :cond_23
    move v2, v3

    goto :goto_d

    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsHorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsHorizontalListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsHorizontalListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .param p1, "childCount"    # I

    .prologue
    iget v7, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v4, v7, -0x1

    .local v4, "lastPosition":I
    iget v7, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_2

    if-lez p1, :cond_2

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .local v5, "lastRight":I
    iget v7, p0, Landroid/widget/HorizontalListView;->mRight:I

    iget v8, p0, Landroid/widget/HorizontalListView;->mLeft:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v0, v7, v8

    .local v0, "end":I
    sub-int v6, v0, v5

    .local v6, "rightOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .local v2, "firstLeft":I
    if-lez v6, :cond_2

    iget v7, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v2, v7, :cond_2

    :cond_0
    iget v7, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    iget v7, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-lez v7, :cond_2

    iget v7, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstLeft":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "lastRight":I
    .end local v6    # "rightOffset":I
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .param p1, "childCount"    # I

    .prologue
    iget v8, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .local v2, "firstLeft":I
    iget-object v8, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->left:I

    .local v7, "start":I
    iget v8, p0, Landroid/widget/HorizontalListView;->mRight:I

    iget v9, p0, Landroid/widget/HorizontalListView;->mLeft:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    .local v0, "end":I
    sub-int v6, v2, v7

    .local v6, "leftOffset":I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .local v5, "lastRight":I
    iget v8, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v4, v8, -0x1

    .local v4, "lastPosition":I
    if-lez v6, :cond_2

    iget v8, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v4, v8, :cond_0

    if-le v5, v0, :cond_3

    :cond_0
    iget v8, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_1

    sub-int v8, v5, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_1
    neg-int v8, v6

    invoke-virtual {p0, v8}, Landroid/widget/HorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    iget v8, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_2

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstLeft":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v4    # "lastPosition":I
    .end local v5    # "lastRight":I
    .end local v6    # "leftOffset":I
    .end local v7    # "start":I
    :cond_2
    :goto_0
    return-void

    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstLeft":I
    .restart local v3    # "lastChild":Landroid/view/View;
    .restart local v4    # "lastPosition":I
    .restart local v5    # "lastRight":I
    .restart local v6    # "leftOffset":I
    .restart local v7    # "start":I
    :cond_3
    iget v8, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_2

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .local v0, "distance":I
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/widget/HorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, p0, Landroid/widget/HorizontalListView;->mRight:I

    iget v3, p0, Landroid/widget/HorizontalListView;->mLeft:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    .local v1, "listRight":I
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v2, v1, :cond_0

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillFromLeft(I)Landroid/view/View;
    .locals 2
    .param p1, "nextLeft"    # I

    .prologue
    iget v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    :cond_0
    iget v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .param p1, "childrenLeft"    # I
    .param p2, "childrenRight"    # I

    .prologue
    const/4 v3, 0x1

    sub-int v8, p2, p1

    .local v8, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->reconcileSelectedPosition()I

    move-result v1

    .local v1, "position":I
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .local v6, "sel":Landroid/view/View;
    iput v1, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .local v7, "selWidth":I
    if-gt v7, v8, :cond_0

    sub-int v0, v8, v7

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    invoke-direct {p0, v6, v1}, Landroid/widget/HorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->correctTooHigh(I)V

    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedLeft"    # I
    .param p2, "childrenLeft"    # I
    .param p3, "childrenRight"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v7

    .local v7, "fadingEdgeLength":I
    iget v2, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    .local v2, "selectedPosition":I
    move/from16 v0, p2

    invoke-direct {p0, v0, v7, v2}, Landroid/widget/HorizontalListView;->getLeftSelectionPixel(III)I

    move-result v8

    .local v8, "leftSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v7, v2}, Landroid/widget/HorizontalListView;->getRightSelectionPixel(III)I

    move-result v10

    .local v10, "rightSelectionPixel":I
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v11

    .local v11, "sel":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v10, :cond_1

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v12, v1, v8

    .local v12, "spaceLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v13, v1, v10

    .local v13, "spaceRight":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .local v9, "offset":I
    neg-int v1, v9

    invoke-virtual {v11, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .end local v9    # "offset":I
    .end local v12    # "spaceLeft":I
    .end local v13    # "spaceRight":I
    :cond_0
    :goto_0
    invoke-direct {p0, v11, v2}, Landroid/widget/HorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    iget-boolean v1, p0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/HorizontalListView;->correctTooHigh(I)V

    :goto_1
    return-object v11

    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v8, :cond_0

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v12, v8, v1

    .restart local v12    # "spaceLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v13, v10, v1

    .restart local v13    # "spaceRight":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .restart local v9    # "offset":I
    invoke-virtual {v11, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    .end local v9    # "offset":I
    .end local v12    # "spaceLeft":I
    .end local v13    # "spaceRight":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/HorizontalListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillLeft(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextRight"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    .local v7, "end":I
    iget v0, p0, Landroid/widget/HorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    if-ltz p1, :cond_3

    iget v0, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    sub-int p2, v0, v1

    if-eqz v5, :cond_1

    move-object v8, v6

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    move v5, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalListView;->setVisibleRangeHint(II)V

    return-object v8
.end method

.method private fillLeftAndRight(Landroid/view/View;I)V
    .locals 3
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    iget v0, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillRight(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextLeft"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .local v8, "selectedView":Landroid/view/View;
    iget v0, p0, Landroid/widget/HorizontalListView;->mRight:I

    iget v1, p0, Landroid/widget/HorizontalListView;->mLeft:I

    sub-int v7, v0, v1

    .local v7, "end":I
    iget v0, p0, Landroid/widget/HorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    iget v0, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-ge p1, v0, :cond_3

    iget v0, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    move v5, v3

    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    add-int p2, v0, v1

    if-eqz v5, :cond_1

    move-object v8, v6

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    iget v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalListView;->setVisibleRangeHint(II)V

    return-object v8
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "left"    # I

    .prologue
    const/4 v3, 0x1

    iget v0, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .local v5, "tempIsSelected":Z
    :goto_0
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .local v10, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    iget v7, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .local v7, "dividerHeight":I
    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v8

    .local v8, "leftSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v9

    .local v9, "rightSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v6

    .local v6, "childCount":I
    if-lez v6, :cond_0

    invoke-direct {p0, v6}, Landroid/widget/HorizontalListView;->correctTooHigh(I)V

    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .end local v10    # "temp":Landroid/view/View;
    :goto_2
    return-object v10

    .end local v5    # "tempIsSelected":Z
    .end local v6    # "childCount":I
    .end local v7    # "dividerHeight":I
    .end local v8    # "leftSide":Landroid/view/View;
    .end local v9    # "rightSide":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .restart local v5    # "tempIsSelected":Z
    .restart local v7    # "dividerHeight":I
    .restart local v10    # "temp":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v9

    .restart local v9    # "rightSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v8

    .restart local v8    # "leftSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v6

    .restart local v6    # "childCount":I
    if-lez v6, :cond_0

    invoke-direct {p0, v6}, Landroid/widget/HorizontalListView;->correctTooLow(I)V

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    move-object v10, v8

    goto :goto_2

    :cond_4
    move-object v10, v9

    goto :goto_2
.end method

.method private getAccessibilityFocusedChild()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-nez v2, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    .local v0, "focusedView":Landroid/view/View;
    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_1
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_3

    if-eq v1, p0, :cond_3

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    :cond_3
    instance-of v4, v1, Landroid/view/View;

    if-nez v4, :cond_0

    move-object v0, v3

    goto :goto_0
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getLeftSelectionPixel(III)I
    .locals 1
    .param p1, "childrenLeft"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    move v0, p1

    .local v0, "leftSelectionPixel":I
    if-lez p3, :cond_0

    add-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private getRightSelectionPixel(III)I
    .locals 2
    .param p1, "childrenRight"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    move v0, p1

    .local v0, "rightSelectionPixel":I
    iget v1, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    sub-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .prologue
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const/4 v0, 0x0

    .local v0, "leftSelected":Z
    iget v8, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    sub-int v7, v8, v9

    .local v7, "selectedIndex":I
    iget v8, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    sub-int v3, p3, v8

    .local v3, "nextSelectedIndex":I
    const/16 v8, 0x11

    if-ne p2, v8, :cond_3

    move v2, v3

    .local v2, "leftViewIndex":I
    move v6, v7

    .local v6, "rightViewIndex":I
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "leftView":Landroid/view/View;
    move-object v5, p1

    .local v5, "rightView":Landroid/view/View;
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v4

    .local v4, "numChildren":I
    if-eqz v1, :cond_1

    if-nez p4, :cond_4

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, v1, v2, v4}, Landroid/widget/HorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    :cond_1
    if-eqz v5, :cond_2

    if-nez p4, :cond_5

    if-nez v0, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v5, v8}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, v5, v6, v4}, Landroid/widget/HorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    :cond_2
    return-void

    .end local v1    # "leftView":Landroid/view/View;
    .end local v2    # "leftViewIndex":I
    .end local v4    # "numChildren":I
    .end local v5    # "rightView":Landroid/view/View;
    .end local v6    # "rightViewIndex":I
    :cond_3
    move v2, v7

    .restart local v2    # "leftViewIndex":I
    move v6, v3

    .restart local v6    # "rightViewIndex":I
    move-object v1, p1

    .restart local v1    # "leftView":Landroid/view/View;
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "rightView":Landroid/view/View;
    goto :goto_0

    .restart local v4    # "numChildren":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private handleVerticalFocusWithinListItem(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/16 v5, 0x21

    if-eq p1, v5, :cond_0

    const/16 v5, 0x82

    if-eq p1, v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v3

    .local v3, "numChildren":I
    iget-boolean v5, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .local v4, "selectedView":Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .local v0, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "selectedView":Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .local v2, "nextFocus":Landroid/view/View;
    if-eqz v2, :cond_1

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroid/widget/HorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Landroid/widget/HorizontalListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/HorizontalListView;->playSoundEffect(I)V

    const/4 v5, 0x1

    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :goto_0
    return v5

    .restart local v0    # "currentFocus":Landroid/view/View;
    .restart local v2    # "nextFocus":Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .local v1, "globalNextFocus":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-direct {p0, v1, p0}, Landroid/widget/HorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v1    # "globalNextFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/HorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logActivity()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Landroid/widget/HorizontalListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private logActivity(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/View;

    .prologue
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/widget/HorizontalListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "cnt":I
    .end local v1    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_2
    instance-of v3, p1, Landroid/widget/CheckBox;

    if-eqz v3, :cond_3

    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "CHECKED"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    instance-of v3, p1, Landroid/widget/RadioButton;

    if-eqz v3, :cond_4

    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "CHECKED"

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz p2, :cond_5

    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_5

    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>MENUTEXT:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    instance-of v3, p1, Landroid/widget/AbsHorizontalListView;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Landroid/widget/HorizontalListView$1;

    invoke-direct {v4, p0, p1}, Landroid/widget/HorizontalListView$1;-><init>(Landroid/widget/HorizontalListView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "UNCHECKED"

    goto/16 :goto_2

    :cond_7
    const-string v3, "UNCHECKED"

    goto :goto_3
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v6, -0x1

    iget v1, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    .local v1, "firstPosition":I
    const/16 v7, 0x42

    if-ne p1, v7, :cond_5

    iget v7, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_1

    iget v7, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .local v5, "startPos":I
    :goto_0
    iget-object v7, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_2

    move v4, v6

    :cond_0
    :goto_1
    return v4

    .end local v5    # "startPos":I
    :cond_1
    move v5, v1

    goto :goto_0

    .restart local v5    # "startPos":I
    :cond_2
    if-ge v5, v1, :cond_3

    move v5, v1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getLastVisiblePosition()I

    move-result v3

    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, "pos":I
    :goto_2
    if-gt v4, v3, :cond_b

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "pos":I
    .end local v5    # "startPos":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .local v2, "last":I
    iget v7, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .restart local v5    # "startPos":I
    :goto_3
    if-ltz v5, :cond_6

    iget-object v7, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_8

    :cond_6
    move v4, v6

    goto :goto_1

    .end local v5    # "startPos":I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    .restart local v5    # "startPos":I
    :cond_8
    if-le v5, v2, :cond_9

    move v5, v2

    :cond_9
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4    # "pos":I
    :goto_4
    if-lt v4, v1, :cond_b

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2    # "last":I
    :cond_b
    move v4, v6

    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "x"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenTop"    # I
    .param p5, "selected"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/HorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .end local v1    # "child":Landroid/view/View;
    .local v8, "child":Landroid/view/View;
    :goto_0
    return-object v8

    .end local v8    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/HorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    :cond_1
    move-object v8, v1

    .end local v1    # "child":Landroid/view/View;
    .restart local v8    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustRight(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .local v1, "oldWidth":I
    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->measureItem(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->relayoutMeasuredItem(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v2, v3, v1

    .local v2, "widthDelta":I
    add-int/lit8 v0, p2, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "widthDelta":I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Landroid/widget/HorizontalListView;->mHeightMeasureSpec:I

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .local v0, "childHeightSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .local v2, "lpWidth":I
    if-lez v2, :cond_1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "childWidthSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    .end local v1    # "childWidthSpec":I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .local v3, "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .restart local v3    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->forceAdd:Z

    iget-object v4, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->height:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .local v0, "childHeightSpec":I
    iget v2, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->width:I

    .local v2, "lpWidth":I
    if-lez v2, :cond_1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "childWidthSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    .end local v1    # "childWidthSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 20
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenLeft"    # I
    .param p5, "childrenRight"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v10

    .local v10, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    move/from16 v17, v0

    .local v17, "selectedPosition":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/HorizontalListView;->getLeftSelectionPixel(III)I

    move-result v12

    .local v12, "leftSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/HorizontalListView;->getRightSelectionPixel(III)I

    move-result v15

    .local v15, "rightSelectionPixel":I
    if-lez p3, :cond_2

    add-int/lit8 v4, v17, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .local v9, "dividerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int v5, v3, v9

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .local v16, "sel":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v15, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v18, v3, v12

    .local v18, "spaceLeft":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v19, v3, v15

    .local v19, "spaceRight":I
    sub-int v3, p5, p4

    div-int/lit8 v11, v3, 0x2

    .local v11, "halfHorizontalSpace":I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    .local v14, "offset":I
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    neg-int v3, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    neg-int v3, v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .end local v11    # "halfHorizontalSpace":I
    .end local v14    # "offset":I
    .end local v18    # "spaceLeft":I
    .end local v19    # "spaceRight":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    .end local v9    # "dividerHeight":I
    :goto_0
    return-object v16

    .restart local v9    # "dividerHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    goto :goto_0

    .end local v9    # "dividerHeight":I
    .end local v16    # "sel":Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16    # "sel":Landroid/view/View;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v12, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v18, v12, v3

    .restart local v18    # "spaceLeft":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v19, v15, v3

    .restart local v19    # "spaceRight":I
    sub-int v3, p5, p4

    div-int/lit8 v11, v3, 0x2

    .restart local v11    # "halfHorizontalSpace":I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    .restart local v14    # "offset":I
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/View;->offsetLeftAndRight(I)V

    .end local v11    # "halfHorizontalSpace":I
    .end local v14    # "offset":I
    .end local v18    # "spaceLeft":I
    .end local v19    # "spaceRight":I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/HorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    goto :goto_0

    .end local v16    # "sel":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16    # "sel":Landroid/view/View;
    goto :goto_1

    .end local v16    # "sel":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    .local v5, "oldLeft":I
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16    # "sel":Landroid/view/View;
    move/from16 v0, p4

    if-ge v5, v0, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v13

    .local v13, "newRight":I
    add-int/lit8 v3, p4, 0x14

    if-ge v13, v3, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, p4, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .end local v13    # "newRight":I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/HorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 8
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .prologue
    const/16 v7, 0x42

    const/4 v4, -0x1

    if-ne p3, v7, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v2, v5, v6

    .local v2, "listRight":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    if-gt v5, v2, :cond_0

    if-eq p2, v4, :cond_1

    iget v5, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-lt p2, v5, :cond_1

    add-int/lit8 v3, p2, 0x1

    .end local v2    # "listRight":I
    .local v3, "nextSelected":I
    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v3, v5, :cond_4

    .end local v3    # "nextSelected":I
    :cond_0
    :goto_1
    return v4

    .restart local v2    # "listRight":I
    :cond_1
    iget v3, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    goto :goto_0

    .end local v2    # "listRight":I
    :cond_2
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v5, Landroid/graphics/Rect;->left:I

    .local v1, "listLeft":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v5, v1, :cond_0

    iget v5, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x1

    .local v0, "lastPos":I
    if-eq p2, v4, :cond_3

    if-gt p2, v0, :cond_3

    add-int/lit8 v3, p2, -0x1

    .restart local v3    # "nextSelected":I
    :goto_2
    goto :goto_0

    .end local v3    # "nextSelected":I
    :cond_3
    move v3, v0

    goto :goto_2

    .end local v0    # "lastPos":I
    .end local v1    # "listLeft":I
    .restart local v3    # "nextSelected":I
    :cond_4
    if-ne p3, v7, :cond_5

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {p0, v3, v4}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .param p1, "newFocus"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v2

    .local v2, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .local v4, "h":I
    iget-object v6, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .local v1, "childLeft":I
    add-int v2, v1, v5

    .local v2, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .local v3, "childTop":I
    add-int v0, v3, v4

    .local v0, "childBottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalListView$FixedViewInfo;

    .local v1, "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .end local v1    # "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    :cond_0
    return-void

    .restart local v1    # "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .param p1, "amount"    # I

    .prologue
    const/4 v11, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v6, v9, v10

    .local v6, "listRight":I
    iget-object v9, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v9, Landroid/graphics/Rect;->left:I

    .local v5, "listLeft":I
    iget-object v8, p0, Landroid/widget/HorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    .local v8, "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    if-gez p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v7

    .local v7, "numChildren":I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "last":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_0

    iget v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .local v3, "lastVisiblePosition":I
    iget v9, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_0

    invoke-direct {p0, v1, v3}, Landroid/widget/HorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v3    # "lastVisiblePosition":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/widget/HorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    :cond_1
    invoke-virtual {p0, v11}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "first":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v5, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .local v4, "layoutParams":Landroid/widget/AbsHorizontalListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    invoke-virtual {p0, v11}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    goto :goto_1

    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v7    # "numChildren":I
    :cond_3
    invoke-virtual {p0, v11}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "first":Landroid/view/View;
    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_4

    iget v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-lez v9, :cond_4

    iget v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/HorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iget v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/HorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "lastIndex":I
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "last":Landroid/view/View;
    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v6, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .restart local v4    # "layoutParams":Landroid/widget/AbsHorizontalListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_3

    .end local v2    # "lastIndex":I
    .end local v4    # "layoutParams":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_7
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "flowRightSide"    # Z
    .param p5, "childrenTop"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z

    .prologue
    const-wide/16 v20, 0x8

    const-string v19, "setupListItem"

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz p6, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_9

    const/4 v11, 0x1

    .local v11, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_a

    const/16 v17, 0x1

    .local v17, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalListView;->mTouchMode:I

    .local v13, "mode":I
    if-lez v13, :cond_b

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    .local v10, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_c

    const/16 v16, 0x1

    .local v16, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_d

    :cond_0
    const/4 v14, 0x1

    .local v14, "needToMeasure":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .local v15, "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-nez v15, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .end local v15    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    check-cast v15, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .restart local v15    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    if-eqz p7, :cond_2

    iget-boolean v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    :cond_2
    iget-boolean v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    iget v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    :cond_3
    if-eqz p4, :cond_e

    const/16 v19, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Landroid/widget/HorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    if-eqz v17, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    :cond_4
    if-eqz v16, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v19, p1

    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_6
    :goto_7
    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mHeightMeasureSpec:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .local v5, "childHeightSpec":I
    iget v12, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->width:I

    .local v12, "lpWidth":I
    if-lez v12, :cond_13

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .local v8, "childWidthSpec":I
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpWidth":I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .local v18, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .local v9, "h":I
    if-eqz p4, :cond_15

    move/from16 v6, p3

    .local v6, "childLeft":I
    :goto_a
    if-eqz v14, :cond_16

    add-int v7, v6, v18

    .local v7, "childRight":I
    add-int v4, p5, v9

    .local v4, "childBottom":I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1, v7, v4}, Landroid/view/View;->layout(IIII)V

    .end local v4    # "childBottom":I
    .end local v7    # "childRight":I
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-nez v19, :cond_7

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_7
    if-eqz p7, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/AbsHorizontalListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_8
    const-wide/16 v20, 0x8

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .end local v6    # "childLeft":I
    .end local v9    # "h":I
    .end local v10    # "isPressed":Z
    .end local v11    # "isSelected":Z
    .end local v13    # "mode":I
    .end local v14    # "needToMeasure":Z
    .end local v15    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v16    # "updateChildPressed":Z
    .end local v17    # "updateChildSelected":Z
    .end local v18    # "w":I
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .restart local v11    # "isSelected":Z
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_1

    .restart local v13    # "mode":I
    .restart local v17    # "updateChildSelected":Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    .restart local v10    # "isPressed":Z
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_3

    .restart local v16    # "updateChildPressed":Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_4

    .restart local v14    # "needToMeasure":Z
    .restart local v15    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_5

    :cond_f
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->forceAdd:Z

    iget v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_10
    if-eqz p4, :cond_11

    const/16 v19, -0x1

    :goto_c
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/widget/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_11
    const/16 v19, 0x0

    goto :goto_c

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_7

    .restart local v5    # "childHeightSpec":I
    .restart local v12    # "lpWidth":I
    :cond_13
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childWidthSpec":I
    goto/16 :goto_8

    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpWidth":I
    :cond_14
    invoke-virtual/range {p0 .. p1}, Landroid/widget/HorizontalListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_9

    .restart local v9    # "h":I
    .restart local v18    # "w":I
    :cond_15
    sub-int v6, p3, v18

    goto/16 :goto_a

    .restart local v6    # "childLeft":I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v6, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b
.end method

.method private showingLeftFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/HorizontalListView;->mScrollX:I

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v0, v2, v3

    .local v0, "listLeft":I
    iget v2, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private showingRightFadingEdge()Z
    .locals 6

    .prologue
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .local v3, "rightOfRightChild":I
    iget v4, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, -0x1

    .local v1, "lastVisiblePosition":I
    iget v4, p0, Landroid/widget/HorizontalListView;->mScrollX:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .local v2, "listRight":I
    iget v4, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_0

    if-ge v3, v2, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/HorizontalListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    new-instance v0, Landroid/widget/HorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalListView$FixedViewInfo;-><init>(Landroid/widget/HorizontalListView;)V

    .local v0, "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewHorizontalListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    :cond_0
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->onChanged()V

    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/HorizontalListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    new-instance v0, Landroid/widget/HorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalListView$FixedViewInfo;-><init>(Landroid/widget/HorizontalListView;)V

    .local v0, "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewHorizontalListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    :cond_0
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->onChanged()V

    :cond_1
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->logActivity()V

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/widget/HorizontalListView;->mInLayout:Z

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->arrowScrollImpl(I)Z

    move-result v0

    .local v0, "handled":Z
    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-boolean v2, p0, Landroid/widget/HorizontalListView;->mInLayout:Z

    return v0

    .end local v0    # "handled":Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Landroid/widget/HorizontalListView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/AbsHorizontalListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalListView;->mCachingStarted:Z

    move/from16 v39, v0

    if-eqz v39, :cond_0

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HorizontalListView;->mCachingActive:Z

    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .local v9, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    .local v33, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    .local v32, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v33, :cond_d

    const/4 v12, 0x1

    .local v12, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v32, :cond_e

    const/4 v11, 0x1

    .local v11, "drawOverscrollFooter":Z
    :goto_1
    if-lez v9, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v39, v0

    if-eqz v39, :cond_f

    const/4 v10, 0x1

    .local v10, "drawDividers":Z
    :goto_2
    if-nez v10, :cond_1

    if-nez v12, :cond_1

    if-eqz v11, :cond_17

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .local v6, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mPaddingTop:I

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mBottom:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mTop:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mPaddingBottom:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v8

    .local v8, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v19

    .local v19, "headerCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    move/from16 v26, v0

    .local v26, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    sub-int v18, v26, v39

    .local v18, "footerLimit":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalListView;->mHeaderDividersEnabled:Z

    move/from16 v20, v0

    .local v20, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalListView;->mFooterDividersEnabled:Z

    move/from16 v17, v0

    .local v17, "footerDividers":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    move/from16 v16, v0

    .local v16, "first":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/HorizontalListView;->mAreAllItemsSelectable:Z

    .local v5, "areAllItemsSelectable":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .local v4, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->isOpaque()Z

    move-result v39

    if-eqz v39, :cond_10

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->isOpaque()Z

    move-result v39

    if-nez v39, :cond_10

    const/4 v15, 0x1

    .local v15, "fillForMissingDividers":Z
    :goto_3
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    if-nez v39, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalListView;->mIsCacheColorOpaque:Z

    move/from16 v39, v0

    if-eqz v39, :cond_2

    new-instance v39, Landroid/graphics/Paint;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getCacheColorHint()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    .local v34, "paint":Landroid/graphics/Paint;
    const/4 v13, 0x0

    .local v13, "effectivePaddingLeft":I
    const/4 v14, 0x0

    .local v14, "effectivePaddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mGroupFlags:I

    move/from16 v39, v0

    and-int/lit8 v39, v39, 0x22

    const/16 v40, 0x22

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v13, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v14, v0, Landroid/graphics/Rect;->right:I

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mRight:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mLeft:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    sub-int v39, v39, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mScrollX:I

    move/from16 v40, v0

    add-int v29, v39, v40

    .local v29, "listRight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    move/from16 v39, v0

    if-nez v39, :cond_18

    const/16 v36, 0x0

    .local v36, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mScrollX:I

    move/from16 v37, v0

    .local v37, "scrollX":I
    if-lez v8, :cond_4

    if-gez v37, :cond_4

    if-eqz v12, :cond_11

    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v0, v37

    iput v0, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/HorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    :cond_4
    :goto_4
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_5
    move/from16 v0, v21

    if-ge v0, v8, :cond_16

    add-int v27, v16, v21

    .local v27, "itemIndex":I
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    const/16 v24, 0x1

    .local v24, "isHeader":Z
    :goto_6
    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_13

    const/16 v23, 0x1

    .local v23, "isFooter":Z
    :goto_7
    if-nez v20, :cond_5

    if-nez v24, :cond_c

    :cond_5
    if-nez v17, :cond_6

    if-nez v23, :cond_c

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v36

    add-int/lit8 v39, v8, -0x1

    move/from16 v0, v21

    move/from16 v1, v39

    if-ne v0, v1, :cond_14

    const/16 v25, 0x1

    .local v25, "isLastItem":Z
    :goto_8
    if-eqz v10, :cond_c

    move/from16 v0, v36

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    if-eqz v11, :cond_7

    if-nez v25, :cond_c

    :cond_7
    add-int/lit8 v30, v27, 0x1

    .local v30, "nextIndex":I
    if-nez v5, :cond_b

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-nez v39, :cond_9

    if-eqz v20, :cond_8

    if-nez v24, :cond_9

    :cond_8
    if-eqz v17, :cond_15

    if-eqz v23, :cond_15

    :cond_9
    if-nez v25, :cond_b

    move/from16 v0, v30

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-nez v39, :cond_b

    if-eqz v20, :cond_a

    move/from16 v0, v30

    move/from16 v1, v19

    if-lt v0, v1, :cond_b

    :cond_a
    if-eqz v17, :cond_15

    move/from16 v0, v30

    move/from16 v1, v18

    if-lt v0, v1, :cond_15

    :cond_b
    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    add-int v39, v36, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .end local v7    # "child":Landroid/view/View;
    .end local v25    # "isLastItem":Z
    .end local v30    # "nextIndex":I
    :cond_c
    :goto_9
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5

    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v8    # "count":I
    .end local v10    # "drawDividers":Z
    .end local v11    # "drawOverscrollFooter":Z
    .end local v12    # "drawOverscrollHeader":Z
    .end local v13    # "effectivePaddingLeft":I
    .end local v14    # "effectivePaddingRight":I
    .end local v15    # "fillForMissingDividers":Z
    .end local v16    # "first":I
    .end local v17    # "footerDividers":Z
    .end local v18    # "footerLimit":I
    .end local v19    # "headerCount":I
    .end local v20    # "headerDividers":Z
    .end local v21    # "i":I
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v26    # "itemCount":I
    .end local v27    # "itemIndex":I
    .end local v29    # "listRight":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "right":I
    .end local v37    # "scrollX":I
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_0

    .restart local v12    # "drawOverscrollHeader":Z
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_1

    .restart local v11    # "drawOverscrollFooter":Z
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_2

    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v6    # "bounds":Landroid/graphics/Rect;
    .restart local v8    # "count":I
    .restart local v10    # "drawDividers":Z
    .restart local v16    # "first":I
    .restart local v17    # "footerDividers":Z
    .restart local v18    # "footerLimit":I
    .restart local v19    # "headerCount":I
    .restart local v20    # "headerDividers":Z
    .restart local v26    # "itemCount":I
    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_3

    .restart local v13    # "effectivePaddingLeft":I
    .restart local v14    # "effectivePaddingRight":I
    .restart local v15    # "fillForMissingDividers":Z
    .restart local v29    # "listRight":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    .restart local v36    # "right":I
    .restart local v37    # "scrollX":I
    :cond_11
    if-eqz v10, :cond_4

    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    neg-int v0, v9

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_4

    .restart local v21    # "i":I
    .restart local v27    # "itemIndex":I
    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_6

    .restart local v24    # "isHeader":Z
    :cond_13
    const/16 v23, 0x0

    goto/16 :goto_7

    .restart local v7    # "child":Landroid/view/View;
    .restart local v23    # "isFooter":Z
    :cond_14
    const/16 v25, 0x0

    goto/16 :goto_8

    .restart local v25    # "isLastItem":Z
    .restart local v30    # "nextIndex":I
    :cond_15
    if-eqz v15, :cond_c

    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    add-int v39, v36, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_9

    .end local v7    # "child":Landroid/view/View;
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v25    # "isLastItem":Z
    .end local v27    # "itemIndex":I
    .end local v30    # "nextIndex":I
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mRight:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mScrollX:I

    move/from16 v40, v0

    add-int v31, v39, v40

    .local v31, "overFooterRight":I
    if-eqz v11, :cond_17

    add-int v39, v16, v8

    move/from16 v0, v39

    move/from16 v1, v26

    if-ne v0, v1, :cond_17

    move/from16 v0, v31

    move/from16 v1, v36

    if-le v0, v1, :cond_17

    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v0, v31

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/HorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v8    # "count":I
    .end local v13    # "effectivePaddingLeft":I
    .end local v14    # "effectivePaddingRight":I
    .end local v15    # "fillForMissingDividers":Z
    .end local v16    # "first":I
    .end local v17    # "footerDividers":Z
    .end local v18    # "footerLimit":I
    .end local v19    # "headerCount":I
    .end local v20    # "headerDividers":Z
    .end local v21    # "i":I
    .end local v26    # "itemCount":I
    .end local v29    # "listRight":I
    .end local v31    # "overFooterRight":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "right":I
    .end local v37    # "scrollX":I
    :cond_17
    :goto_a
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsHorizontalListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v6    # "bounds":Landroid/graphics/Rect;
    .restart local v8    # "count":I
    .restart local v13    # "effectivePaddingLeft":I
    .restart local v14    # "effectivePaddingRight":I
    .restart local v15    # "fillForMissingDividers":Z
    .restart local v16    # "first":I
    .restart local v17    # "footerDividers":Z
    .restart local v18    # "footerLimit":I
    .restart local v19    # "headerCount":I
    .restart local v20    # "headerDividers":Z
    .restart local v26    # "itemCount":I
    .restart local v29    # "listRight":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mScrollX:I

    move/from16 v37, v0

    .restart local v37    # "scrollX":I
    if-lez v8, :cond_19

    if-eqz v12, :cond_19

    move/from16 v0, v37

    iput v0, v6, Landroid/graphics/Rect;->left:I

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLeft()I

    move-result v39

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/HorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    :cond_19
    if-eqz v12, :cond_21

    const/16 v38, 0x1

    .local v38, "start":I
    :goto_b
    move/from16 v21, v38

    .restart local v21    # "i":I
    :goto_c
    move/from16 v0, v21

    if-ge v0, v8, :cond_26

    add-int v27, v16, v21

    .restart local v27    # "itemIndex":I
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_22

    const/16 v24, 0x1

    .restart local v24    # "isHeader":Z
    :goto_d
    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_23

    const/16 v23, 0x1

    .restart local v23    # "isFooter":Z
    :goto_e
    if-nez v20, :cond_1a

    if-nez v24, :cond_20

    :cond_1a
    if-nez v17, :cond_1b

    if-nez v23, :cond_20

    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v28

    .local v28, "left":I
    if-eqz v10, :cond_20

    move/from16 v0, v28

    if-le v0, v13, :cond_20

    move/from16 v0, v21

    move/from16 v1, v38

    if-ne v0, v1, :cond_24

    const/16 v22, 0x1

    .local v22, "isFirstItem":Z
    :goto_f
    add-int/lit8 v35, v27, -0x1

    .local v35, "previousIndex":I
    if-nez v5, :cond_1f

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-nez v39, :cond_1d

    if-eqz v20, :cond_1c

    if-nez v24, :cond_1d

    :cond_1c
    if-eqz v17, :cond_25

    if-eqz v23, :cond_25

    :cond_1d
    if-nez v22, :cond_1f

    move/from16 v0, v35

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-nez v39, :cond_1f

    if-eqz v20, :cond_1e

    move/from16 v0, v35

    move/from16 v1, v19

    if-lt v0, v1, :cond_1f

    :cond_1e
    if-eqz v17, :cond_25

    move/from16 v0, v35

    move/from16 v1, v18

    if-lt v0, v1, :cond_25

    :cond_1f
    sub-int v39, v28, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v39, v21, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .end local v7    # "child":Landroid/view/View;
    .end local v22    # "isFirstItem":Z
    .end local v28    # "left":I
    .end local v35    # "previousIndex":I
    :cond_20
    :goto_10
    add-int/lit8 v21, v21, 0x1

    goto :goto_c

    .end local v21    # "i":I
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v27    # "itemIndex":I
    .end local v38    # "start":I
    :cond_21
    const/16 v38, 0x0

    goto/16 :goto_b

    .restart local v21    # "i":I
    .restart local v27    # "itemIndex":I
    .restart local v38    # "start":I
    :cond_22
    const/16 v24, 0x0

    goto :goto_d

    .restart local v24    # "isHeader":Z
    :cond_23
    const/16 v23, 0x0

    goto :goto_e

    .restart local v7    # "child":Landroid/view/View;
    .restart local v23    # "isFooter":Z
    .restart local v28    # "left":I
    :cond_24
    const/16 v22, 0x0

    goto :goto_f

    .restart local v22    # "isFirstItem":Z
    .restart local v35    # "previousIndex":I
    :cond_25
    if-eqz v15, :cond_20

    sub-int v39, v28, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_10

    .end local v7    # "child":Landroid/view/View;
    .end local v22    # "isFirstItem":Z
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v27    # "itemIndex":I
    .end local v28    # "left":I
    .end local v35    # "previousIndex":I
    :cond_26
    if-lez v8, :cond_17

    if-lez v37, :cond_17

    if-eqz v11, :cond_27

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalListView;->mRight:I

    .local v3, "absListRight":I
    iput v3, v6, Landroid/graphics/Rect;->left:I

    add-int v39, v3, v37

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/HorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_a

    .end local v3    # "absListRight":I
    :cond_27
    if-eqz v10, :cond_17

    move/from16 v0, v29

    iput v0, v6, Landroid/graphics/Rect;->left:I

    add-int v39, v29, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_a
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .local v1, "handled":Z
    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/HorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .end local v0    # "focused":Landroid/view/View;
    :cond_0
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsHorizontalListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .local v0, "more":Z
    iget-boolean v1, p0, Landroid/widget/HorizontalListView;->mCachingActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/HorizontalListView;->mCachingActive:Z

    :cond_0
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .local v0, "span":I
    if-ge v0, v1, :cond_0

    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->right:I

    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .local v0, "span":I
    if-ge v0, v1, :cond_0

    iget v2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->left:I

    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method fillGap(Z)V
    .locals 6
    .param p1, "rightSide"    # Z

    .prologue
    const/16 v5, 0x22

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v0

    .local v0, "count":I
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .local v1, "paddingLeft":I
    iget v4, p0, Landroid/widget/HorizontalListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getListPaddingLeft()I

    move-result v1

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    add-int v3, v4, v5

    .local v3, "startOffset":I
    :goto_0
    iget v4, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/HorizontalListView;->correctTooHigh(I)V

    .end local v1    # "paddingLeft":I
    :goto_1
    return-void

    .end local v3    # "startOffset":I
    .restart local v1    # "paddingLeft":I
    :cond_1
    move v3, v1

    goto :goto_0

    .end local v1    # "paddingLeft":I
    :cond_2
    const/4 v2, 0x0

    .local v2, "paddingRight":I
    iget v4, p0, Landroid/widget/HorizontalListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getListPaddingRight()I

    move-result v2

    :cond_3
    if-lez v0, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .restart local v3    # "startOffset":I
    :goto_2
    iget v4, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/HorizontalListView;->correctTooLow(I)V

    goto :goto_1

    .end local v3    # "startOffset":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v4

    sub-int v3, v4, v2

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "x"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    if-lez v0, :cond_3

    iget-boolean v3, p0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_0

    iget v3, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return v3

    .restart local v1    # "i":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_2

    iget v3, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p3, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/HorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/HorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .param p1, "id"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/HorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/HorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/HorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/HorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .local v1, "moved":Z
    const/16 v3, 0x11

    if-ne p1, v3, :cond_3

    iget v3, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/HorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .local v2, "position":I
    if-ltz v2, :cond_0

    iput v5, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invokeOnItemScrollListener()V

    :cond_0
    const/4 v1, 0x1

    .end local v2    # "position":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->awakenScrollBars()Z

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    :cond_2
    return v1

    :cond_3
    const/16 v3, 0x42

    if-ne p1, v3, :cond_1

    iget v3, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v0, v3, -0x1

    .local v0, "lastItem":I
    iget v3, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-ge v3, v0, :cond_1

    iget v3, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v0, v4}, Landroid/widget/HorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .restart local v2    # "position":I
    if-ltz v2, :cond_4

    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invokeOnItemScrollListener()V

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    iget-object v8, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getCheckedItemIds()[J

    move-result-object v5

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    iget v8, p0, Landroid/widget/HorizontalListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/HorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    iget-object v7, p0, Landroid/widget/HorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .local v7, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .local v3, "count":I
    new-array v5, v3, [J

    .local v5, "ids":[J
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .local v1, "checkedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "checkedCount":I
    .local v2, "checkedCount":I
    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "checkedCount":I
    .restart local v2    # "checkedCount":I
    goto :goto_1

    :cond_2
    if-eq v2, v3, :cond_0

    new-array v6, v2, [J

    .local v6, "result":[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    move-object v5, v6

    goto :goto_0

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "checkedCount":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    .end local v6    # "result":[J
    .end local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v5, v10, [J

    goto :goto_0

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "checkedCount":I
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "ids":[J
    .restart local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    goto :goto_2
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    const v0, 0x3ea8f5c3    # 0.33f

    iget v1, p0, Landroid/widget/HorizontalListView;->mRight:I

    iget v2, p0, Landroid/widget/HorizontalListView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    iget-boolean v5, p0, Landroid/widget/HorizontalListView;->mCachingActive:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/HorizontalListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/HorizontalListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/AbsHorizontalListView;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const/4 v4, 0x1

    .local v4, "retValue":Z
    :goto_0
    if-eqz v4, :cond_3

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->left:I

    .local v2, "listLeft":I
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "first":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v2, :cond_6

    :cond_2
    move v4, v6

    .end local v0    # "first":Landroid/view/View;
    .end local v2    # "listLeft":I
    .end local v4    # "retValue":Z
    :cond_3
    :goto_2
    return v4

    :cond_4
    move v4, v6

    goto :goto_0

    .restart local v4    # "retValue":Z
    :cond_5
    iget v2, p0, Landroid/widget/HorizontalListView;->mPaddingLeft:I

    goto :goto_1

    .restart local v0    # "first":Landroid/view/View;
    .restart local v2    # "listLeft":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v7

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    :goto_3
    sub-int v3, v7, v5

    .local v3, "listRight":I
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v5, v3, :cond_3

    :cond_7
    move v4, v6

    goto :goto_2

    .end local v1    # "last":Landroid/view/View;
    .end local v3    # "listRight":I
    :cond_8
    iget v5, p0, Landroid/widget/HorizontalListView;->mPaddingRight:I

    goto :goto_3
.end method

.method protected layoutChildren()V
    .locals 28

    .prologue
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/widget/HorizontalListView;->mBlockLayoutRequests:Z

    .local v10, "blockLayoutRequests":Z
    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalListView;->mBlockLayoutRequests:Z

    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalListView;->mBlockLayoutRequests:Z

    goto :goto_0

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    .local v6, "childrenLeft":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mLeft:I

    move/from16 v26, v0

    sub-int v2, v2, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v7, v2, v26

    .local v7, "childrenRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v12

    .local v12, "childCount":I
    const/16 v18, 0x0

    .local v18, "index":I
    const/4 v5, 0x0

    .local v5, "delta":I
    const/4 v3, 0x0

    .local v3, "oldSel":Landroid/view/View;
    const/16 v20, 0x0

    .local v20, "oldFirst":Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v18, v2, v26

    if-ltz v18, :cond_3

    move/from16 v0, v18

    if-ge v0, v12, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mNextSelectedPosition:I

    if-ltz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    move/from16 v26, v0

    sub-int v5, v2, v26

    :cond_4
    add-int v2, v18, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :cond_5
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalListView;->mDataChanged:Z

    .local v13, "dataChanged":Z
    if-eqz v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->handleDataChanged()V

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v10, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .end local v13    # "dataChanged":Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v18, v2, v26

    if-ltz v18, :cond_5

    move/from16 v0, v18

    if-ge v0, v12, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .restart local v13    # "dataChanged":Z
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move/from16 v0, v26

    if-eq v2, v0, :cond_9

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ") with Adapter("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ")]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "oldSel":Landroid/view/View;
    .end local v4    # "newSel":Landroid/view/View;
    .end local v5    # "delta":I
    .end local v6    # "childrenLeft":I
    .end local v7    # "childrenRight":I
    .end local v12    # "childCount":I
    .end local v13    # "dataChanged":Z
    .end local v18    # "index":I
    .end local v20    # "oldFirst":Landroid/view/View;
    :catchall_0
    move-exception v2

    if-nez v10, :cond_8

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HorizontalListView;->mBlockLayoutRequests:Z

    :cond_8
    throw v2

    .restart local v3    # "oldSel":Landroid/view/View;
    .restart local v4    # "newSel":Landroid/view/View;
    .restart local v5    # "delta":I
    .restart local v6    # "childrenLeft":I
    .restart local v7    # "childrenRight":I
    .restart local v12    # "childCount":I
    .restart local v13    # "dataChanged":Z
    .restart local v18    # "index":I
    .restart local v20    # "oldFirst":Landroid/view/View;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalListView;->setSelectedPositionInt(I)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getAccessibilityFocusedChild()Landroid/view/View;

    move-result-object v8

    .local v8, "accessFocusedChild":Landroid/view/View;
    if-eqz v8, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/HorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v9

    .local v9, "accessibilityFocusPosition":I
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v16

    .local v16, "focusedChild":Landroid/view/View;
    if-eqz v16, :cond_a

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    .local v14, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v22, v0

    .local v22, "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    if-eqz v13, :cond_c

    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v12, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v26, v14, v17

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .end local v9    # "accessibilityFocusPosition":I
    .end local v14    # "firstPosition":I
    .end local v16    # "focusedChild":Landroid/view/View;
    .end local v17    # "i":I
    .end local v22    # "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    :cond_b
    const/4 v9, -0x1

    .restart local v9    # "accessibilityFocusPosition":I
    goto :goto_2

    .restart local v14    # "firstPosition":I
    .restart local v16    # "focusedChild":Landroid/view/View;
    .restart local v22    # "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    :cond_c
    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v14}, Landroid/widget/AbsHorizontalListView$RecycleBin;->fillActiveViews(II)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->detachAllViewsFromParent()V

    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsHorizontalListView$RecycleBin;->removeSkippedScrap()V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    if-nez v12, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-nez v2, :cond_14

    const/4 v2, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .local v21, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/HorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v24

    .end local v6    # "childrenLeft":I
    .end local v21    # "position":I
    .local v24, "sel":Landroid/view/View;
    :goto_4
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsHorizontalListView$RecycleBin;->scrapActiveViews()V

    if-eqz v24, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v25, 0x1

    .local v25, "shouldPlaceFocus":Z
    :goto_5
    if-eqz v16, :cond_1b

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/16 v19, 0x1

    .local v19, "maintainedFocus":Z
    :goto_6
    if-eqz v25, :cond_1e

    if-nez v19, :cond_1e

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    :goto_7
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalListView;->mSelectedLeft:I

    .end local v19    # "maintainedFocus":Z
    .end local v25    # "shouldPlaceFocus":Z
    :cond_e
    :goto_8
    if-eqz v8, :cond_f

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/view/View;->setHasTransientState(Z)V

    invoke-virtual {v8}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, -0x1

    if-eq v9, v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    sub-int v2, v9, v2

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v21

    .restart local v21    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .local v23, "restoreView":Landroid/view/View;
    if-eqz v23, :cond_f

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestAccessibilityFocus()Z

    .end local v21    # "position":I
    .end local v23    # "restoreView":Landroid/view/View;
    :cond_f
    if-eqz v16, :cond_10

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalListView;->mDataChanged:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalListView;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/HorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalListView;->mNeedSync:Z

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalListView;->setNextSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->updateScrollIndicators()V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-lez v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->checkSelectionChanged()V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v10, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .end local v24    # "sel":Landroid/view/View;
    .restart local v6    # "childrenLeft":I
    :pswitch_2
    if-eqz v4, :cond_13

    :try_start_4
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Landroid/widget/HorizontalListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v24    # "sel":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/widget/HorizontalListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v24    # "sel":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mSpecificTop:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v2, v1}, Landroid/widget/HorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v24    # "sel":Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_4

    .end local v24    # "sel":Landroid/view/View;
    :pswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/HorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_4

    .end local v24    # "sel":Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mSpecificTop:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v2, v1}, Landroid/widget/HorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v24    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/HorizontalListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v24    # "sel":Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .restart local v21    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v21    # "position":I
    .end local v24    # "sel":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-ltz v2, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v2, v0, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-nez v3, :cond_16

    .end local v6    # "childrenLeft":I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/HorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v24    # "sel":Landroid/view/View;
    .restart local v6    # "childrenLeft":I
    :cond_16
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v2, v0, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-nez v20, :cond_18

    .end local v6    # "childrenLeft":I
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/HorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v24    # "sel":Landroid/view/View;
    .restart local v6    # "childrenLeft":I
    :cond_18
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_a

    :cond_19
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/HorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v6    # "childrenLeft":I
    :cond_1a
    const/16 v25, 0x0

    goto/16 :goto_5

    .restart local v25    # "shouldPlaceFocus":Z
    :cond_1b
    const/16 v19, 0x0

    goto/16 :goto_6

    .restart local v19    # "maintainedFocus":Z
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v15

    .local v15, "focused":Landroid/view/View;
    if-eqz v15, :cond_1d

    invoke-virtual {v15}, Landroid/view/View;->clearFocus()V

    :cond_1d
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_7

    .end local v15    # "focused":Landroid/view/View;
    :cond_1e
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_7

    .end local v19    # "maintainedFocus":Z
    .end local v25    # "shouldPlaceFocus":Z
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mTouchMode:I

    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v2, v0, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mTouchMode:I

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v2, v0, :cond_21

    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v2, v2, v26

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .local v11, "child":Landroid/view/View;
    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Landroid/widget/HorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_8

    .end local v11    # "child":Landroid/view/View;
    :cond_21
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalListView;->mSelectedLeft:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v2, -0x1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .local v1, "count":I
    iget-boolean v3, p0, Landroid/widget/HorizontalListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_3

    if-eqz p2, :cond_2

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    goto :goto_0
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .locals 6
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .prologue
    const/4 v3, -0x1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v3

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0, p2, p3}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .local v1, "after":I
    if-ne v1, v3, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .local v2, "count":I
    add-int/lit8 v4, v2, -0x1

    invoke-static {p1, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    if-eqz p3, :cond_4

    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    if-le p2, p1, :cond_3

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    if-gt p2, p1, :cond_6

    move v1, v3

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    add-int/lit8 v5, p2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_2
    if-ge p2, p1, :cond_5

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    if-lt p2, p1, :cond_6

    move v1, v3

    goto :goto_0

    :cond_6
    move v1, p2

    goto :goto_0
.end method

.method final measureWidthOfChildren(IIIII)I
    .locals 12
    .param p1, "heightMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxWidth"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    iget-object v10, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v6, v10, v11

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v10, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v9, v10, v11

    .local v9, "returnedWidth":I
    iget v10, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Landroid/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .local v3, "dividerHeight":I
    :goto_1
    const/4 v6, 0x0

    .local v6, "prevWidthWithoutPartialChild":I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    :cond_2
    iget-object v7, p0, Landroid/widget/HorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    .local v7, "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->recycleOnMeasure()Z

    move-result v8

    .local v8, "recyle":Z
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mIsScrap:[Z

    .local v5, "isScrap":[Z
    move v4, p2

    .local v4, "i":I
    :goto_2
    if-gt v4, p3, :cond_9

    invoke-virtual {p0, v4, v5}, Landroid/widget/HorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_8

    invoke-direct {p0, v2, v4, p1}, Landroid/widget/HorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    if-lez v4, :cond_3

    add-int/2addr v9, v3

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsHorizontalListView$LayoutParams;

    iget v10, v10, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "dividerHeight":I
    .end local v4    # "i":I
    .end local v5    # "isScrap":[Z
    .end local v6    # "prevWidthWithoutPartialChild":I
    .end local v7    # "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    .end local v8    # "recyle":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "dividerHeight":I
    .restart local v4    # "i":I
    .restart local v5    # "isScrap":[Z
    .restart local v6    # "prevWidthWithoutPartialChild":I
    .restart local v7    # "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    .restart local v8    # "recyle":Z
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    move v6, v9

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v6, v9

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/AbsHorizontalListView;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v0

    .local v0, "count":I
    if-lez v0, :cond_1

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->addHeaderView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->removeAllViews()V

    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 15
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    invoke-super/range {p0 .. p3}, Landroid/widget/AbsHorizontalListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .local v2, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .local v5, "closetChildIndex":I
    const/4 v4, 0x0

    .local v4, "closestChildLeft":I
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    iget v12, p0, Landroid/widget/HorizontalListView;->mScrollX:I

    iget v13, p0, Landroid/widget/HorizontalListView;->mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v13

    iget v14, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->layoutChildren()V

    :cond_0
    iget-object v11, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .local v11, "otherRect":Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .local v9, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v3

    .local v3, "childCount":I
    iget v7, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    .local v7, "firstPosition":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v8}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .local v10, "other":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v10, v11}, Landroid/widget/HorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Landroid/widget/HorizontalListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .local v6, "distance":I
    if-ge v6, v9, :cond_1

    move v9, v6

    move v5, v8

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v4

    goto :goto_1

    .end local v3    # "childCount":I
    .end local v6    # "distance":I
    .end local v7    # "firstPosition":I
    .end local v8    # "i":I
    .end local v9    # "minDistance":I
    .end local v10    # "other":Landroid/view/View;
    .end local v11    # "otherRect":Landroid/graphics/Rect;
    :cond_3
    if-ltz v5, :cond_4

    iget v12, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Landroid/widget/HorizontalListView;->setSelectionFromTop(II)V

    :goto_2
    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/HorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v2, Landroid/widget/HorizontalListView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getCount()I

    move-result v1

    .local v1, "count":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsHorizontalListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .local v2, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-eqz v2, :cond_0

    iget v5, v2, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_0

    move v0, v3

    .local v0, "isHeading":Z
    :goto_0
    invoke-static {v4, v3, p2, v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v1

    .local v1, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void

    .end local v0    # "isHeading":Z
    .end local v1    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    :cond_0
    move v0, v4

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/HorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/HorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .local v12, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .local v10, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .local v4, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .local v11, "heightSize":I
    const/4 v9, 0x0

    .local v9, "childWidth":I
    const/4 v7, 0x0

    .local v7, "childHeight":I
    const/4 v8, 0x0

    .local v8, "childState":I
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    iget v0, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v12, :cond_0

    if-nez v10, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/HorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6, v2, p2}, Landroid/widget/HorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Landroid/widget/HorizontalListView;->combineMeasuredStates(II)I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    iget v0, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .end local v6    # "child":Landroid/view/View;
    :cond_1
    if-nez v10, :cond_5

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getHorizontalScrollbarHeight()I

    move-result v1

    add-int v11, v0, v1

    :goto_1
    if-nez v12, :cond_2

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    :cond_2
    const/high16 v0, -0x80000000

    if-ne v12, v0, :cond_3

    move-object v0, p0

    move v1, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/HorizontalListView;->measureWidthOfChildren(IIIII)I

    move-result v4

    :cond_3
    invoke-virtual {p0, v4, v11}, Landroid/widget/HorizontalListView;->setMeasuredDimension(II)V

    iput p2, p0, Landroid/widget/HorizontalListView;->mHeightMeasureSpec:I

    return-void

    :cond_4
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_5
    const/high16 v0, -0x1000000

    and-int/2addr v0, v8

    or-int/2addr v11, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_1

    iget v5, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v0, v5, v6

    .local v0, "childPosition":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    .local v1, "childRight":I
    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/HorizontalListView;->mPaddingLeft:I

    sub-int v6, p1, v6

    sub-int v6, v1, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .local v4, "offset":I
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v3, v5, v4

    .local v3, "left":I
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mFocusSelector:Landroid/widget/HorizontalListView$FocusSelector;

    if-nez v5, :cond_0

    new-instance v5, Landroid/widget/HorizontalListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/HorizontalListView$FocusSelector;-><init>(Landroid/widget/HorizontalListView;Landroid/widget/HorizontalListView$1;)V

    iput-object v5, p0, Landroid/widget/HorizontalListView;->mFocusSelector:Landroid/widget/HorizontalListView$FocusSelector;

    :cond_0
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mFocusSelector:Landroid/widget/HorizontalListView$FocusSelector;

    invoke-virtual {v5, v0, v3}, Landroid/widget/HorizontalListView$FocusSelector;->setup(II)Landroid/widget/HorizontalListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/HorizontalListView;->post(Ljava/lang/Runnable;)Z

    .end local v0    # "childPosition":I
    .end local v1    # "childRight":I
    .end local v2    # "focusedChild":Landroid/view/View;
    .end local v3    # "left":I
    .end local v4    # "offset":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsHorizontalListView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->onWindowFocusChanged(Z)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->logActivity()V

    :cond_0
    return-void
.end method

.method pageScroll(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Landroid/widget/HorizontalListView;->logActivity()V

    :cond_0
    const/16 v5, 0x11

    if-ne p1, v5, :cond_5

    iget v5, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "nextPage":I
    const/4 v2, 0x0

    .local v2, "rightSide":Z
    :goto_0
    if-ltz v0, :cond_4

    iget v5, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v5, v0, v2}, Landroid/widget/HorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    .local v1, "position":I
    if-ltz v1, :cond_4

    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    iget v3, p0, Landroid/widget/HorizontalListView;->mPaddingLeft:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/widget/HorizontalListView;->mSpecificTop:I

    if-eqz v2, :cond_1

    iget v3, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v5

    sub-int/2addr v3, v5

    if-le v1, v3, :cond_1

    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    iput v4, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invokeOnItemScrollListener()V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    :cond_3
    move v3, v4

    .end local v0    # "nextPage":I
    .end local v1    # "position":I
    .end local v2    # "rightSide":Z
    :cond_4
    return v3

    :cond_5
    const/16 v5, 0x42

    if-ne p1, v5, :cond_4

    iget v5, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0    # "nextPage":I
    const/4 v2, 0x1

    .restart local v2    # "rightSide":Z
    goto :goto_0
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x0

    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewHorizontalListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/HorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x0

    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewHorizontalListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/HorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .local v8, "rectLeftWithinChild":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v12

    .local v12, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getScrollX()I

    move-result v6

    .local v6, "listUnfadedLeft":I
    add-int v7, v6, v12

    .local v7, "listUnfadedRight":I
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    .local v4, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->showingLeftFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    iget v13, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v8, v4, :cond_1

    :cond_0
    add-int/2addr v6, v4

    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    add-int/lit8 v13, v1, -0x1

    invoke-virtual {p0, v13}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v9

    .local v9, "rightOfRightChild":I
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->showingRightFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    iget v13, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    iget v14, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int v14, v9, v4

    if-ge v13, v14, :cond_3

    :cond_2
    sub-int/2addr v7, v4

    :cond_3
    const/4 v11, 0x0

    .local v11, "scrollXDelta":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    if-le v13, v6, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v13, v12, :cond_6

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v6

    add-int/2addr v11, v13

    :goto_0
    sub-int v3, v9, v7

    .local v3, "distanceToRight":I
    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .end local v3    # "distanceToRight":I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    .local v10, "scroll":Z
    :goto_2
    if-eqz v10, :cond_5

    neg-int v13, v11

    invoke-direct {p0, v13}, Landroid/widget/HorizontalListView;->scrollListItemsBy(I)V

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Landroid/widget/HorizontalListView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    iput v13, p0, Landroid/widget/HorizontalListView;->mSelectedLeft:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    :cond_5
    return v10

    .end local v10    # "scroll":Z
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    if-ge v13, v6, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-ge v13, v7, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v13, v12, :cond_8

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v5

    .local v5, "left":I
    sub-int v2, v5, v6

    .local v2, "deltaToLeft":I
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .end local v2    # "deltaToLeft":I
    .end local v5    # "left":I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int v13, v6, v13

    sub-int/2addr v11, v13

    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    invoke-super {p0}, Landroid/widget/AbsHorizontalListView;->resetList()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resetList()V

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->clear()V

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    :cond_1
    new-instance v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewHorizontalListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/HorizontalListView;->mOldSelectedPosition:I

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/HorizontalListView;->mOldSelectedRowId:J

    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/HorizontalListView;->mAreAllItemsSelectable:Z

    iget v1, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    iput v1, p0, Landroid/widget/HorizontalListView;->mOldItemCount:I

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->checkFocus()V

    new-instance v1, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsHorizontalListView$RecycleBin;->setViewTypeCount(I)V

    iget-boolean v1, p0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .local v0, "position":I
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->setNextSelectedPositionInt(I)V

    iget v1, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->checkSelectionChanged()V

    .end local v0    # "position":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->requestLayout()V

    return-void

    :cond_3
    iput-object p1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4, v5}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_1

    .end local v0    # "position":I
    :cond_5
    iput-boolean v5, p0, Landroid/widget/HorizontalListView;->mAreAllItemsSelectable:Z

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->checkFocus()V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .local v0, "opaque":Z
    :goto_0
    iput-boolean v0, p0, Landroid/widget/HorizontalListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->setCacheColorHint(I)V

    return-void

    .end local v0    # "opaque":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    :goto_0
    iput-object p1, p0, Landroid/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Landroid/widget/HorizontalListView;->mDividerIsOpaque:Z

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    return-void

    :cond_2
    iput v0, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HorizontalListView;->mFooterDividersEnabled:Z

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HorizontalListView;->mHeaderDividersEnabled:Z

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .param p1, "itemsCanFocus"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    if-nez p1, :cond_0

    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->setDescendantFocusability(I)V

    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Landroid/widget/HorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Landroid/widget/HorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/widget/HorizontalListView;->mScrollX:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    if-lez v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/HorizontalListView;->mNextSelectedPosition:I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->setSelection(I)V

    goto :goto_0

    :cond_1
    iput v0, p0, Landroid/widget/HorizontalListView;->mNextSelectedPosition:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "x"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalListView;->setNextSelectedPositionInt(I)V

    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/HorizontalListView;->mSpecificTop:I

    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    iput p1, p0, Landroid/widget/HorizontalListView;->mSyncPosition:I

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/HorizontalListView;->mSyncRowId:J

    :cond_3
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->requestLayout()V

    goto :goto_0

    :cond_5
    iput p1, p0, Landroid/widget/HorizontalListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalListView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    .local v1, "selectedPosition":I
    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->layoutChildren()V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->awakenScrollBars()Z

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->smoothScrollByOffset(I)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->smoothScrollToPosition(I)V

    return-void
.end method
