.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v8, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v7, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    iput v7, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    iput v9, p0, Landroid/widget/GridView;->mStretchMode:I

    iput-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iput-object v6, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    const v6, 0x800003

    iput v6, p0, Landroid/widget/GridView;->mGravity:I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .local v2, "hSpacing":I
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .local v5, "vSpacing":I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .local v3, "index":I
    if-ltz v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .local v1, "columnWidth":I
    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .local v4, "numColumns":I
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setGravity(I)V

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "offset":I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "offset":I
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    if-lez v1, :cond_2

    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .local v2, "delta":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    :cond_0
    if-gez v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge v3, v4, :cond_4

    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    :cond_4
    if-lez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-boolean v4, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    :cond_1
    const/4 v1, 0x0

    .local v1, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    if-eq v0, v3, :cond_2

    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_29

    move v2, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    iget v4, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/GridView;->mTwCurrentFocusPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v1, v3

    :goto_2
    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_6
    iget v4, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/GridView;->mTwCurrentFocusPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v1, v3

    :goto_3
    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_3

    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_9
    iget v4, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/GridView;->mTwCurrentFocusPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v1, v3

    :goto_4
    goto :goto_1

    :cond_b
    move v1, v2

    goto :goto_4

    :cond_c
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    move v1, v3

    :goto_5
    goto :goto_1

    :cond_e
    move v1, v2

    goto :goto_5

    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_f
    iget v4, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/GridView;->mTwCurrentFocusPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_10
    move v1, v3

    :goto_6
    goto/16 :goto_1

    :cond_11
    move v1, v2

    goto :goto_6

    :cond_12
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    move v1, v3

    :goto_7
    goto/16 :goto_1

    :cond_14
    move v1, v2

    goto :goto_7

    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_5
    iget-object v4, p0, Landroid/widget/GridView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_15

    iget-object v4, p0, Landroid/widget/GridView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_15
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_16
    move v1, v3

    :goto_8
    goto/16 :goto_1

    :cond_17
    move v1, v2

    goto :goto_8

    :cond_18
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_19
    move v1, v3

    :goto_9
    goto/16 :goto_1

    :cond_1a
    move v1, v2

    goto :goto_9

    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_1b
    move v1, v3

    :goto_a
    goto/16 :goto_1

    :cond_1c
    move v1, v2

    goto :goto_a

    :cond_1d
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1e
    move v1, v3

    :goto_b
    goto/16 :goto_1

    :cond_1f
    move v1, v2

    goto :goto_b

    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_20
    move v1, v3

    :goto_c
    goto/16 :goto_1

    :cond_21
    move v1, v2

    goto :goto_c

    :cond_22
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_23
    move v1, v3

    :goto_d
    goto/16 :goto_1

    :cond_24
    move v1, v2

    goto :goto_d

    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_26

    :cond_25
    move v1, v3

    :goto_e
    goto/16 :goto_1

    :cond_26
    move v1, v2

    goto :goto_e

    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_28

    :cond_27
    move v1, v3

    :goto_f
    goto/16 :goto_1

    :cond_28
    move v1, v2

    goto :goto_f

    :cond_29
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move v2, v3

    goto/16 :goto_0

    :cond_2a
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

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

.method private correctTooHigh(III)V
    .locals 9
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .local v6, "lastPosition":I
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    if-lez p3, :cond_3

    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .local v4, "lastBottom":I
    iget v7, p0, Landroid/widget/GridView;->mBottom:I

    iget v8, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .local v1, "end":I
    sub-int v0, v1, v4

    .local v0, "bottomOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .local v3, "firstTop":I
    if-lez v0, :cond_3

    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_3

    :cond_0
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v7, :cond_3

    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_2
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 10
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v8, :cond_3

    if-lez p3, :cond_3

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .local v2, "firstTop":I
    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .local v6, "start":I
    iget v8, p0, Landroid/widget/GridView;->mBottom:I

    iget v9, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .local v0, "end":I
    sub-int v7, v2, v6

    .local v7, "topOffset":I
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .local v3, "lastBottom":I
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .local v5, "lastPosition":I
    if-lez v7, :cond_3

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    :cond_0
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_3

    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_2
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_3
    return-void
.end method

.method private determineColumns(I)Z
    .locals 8
    .param p1, "availableSpace"    # I

    .prologue
    const/4 v7, 0x1

    iget v2, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .local v2, "requestedHorizontalSpacing":I
    iget v4, p0, Landroid/widget/GridView;->mStretchMode:I

    .local v4, "stretchMode":I
    iget v1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .local v1, "requestedColumnWidth":I
    const/4 v0, 0x0

    .local v0, "didNotInitiallyFit":Z
    iget v5, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    if-lez v1, :cond_2

    add-int v5, p1, v2

    add-int v6, v1, v2

    div-int/2addr v5, v6

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    :goto_0
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-gtz v5, :cond_0

    iput v7, p0, Landroid/widget/GridView;->mNumColumns:I

    :cond_0
    packed-switch v4, :pswitch_data_0

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v2

    sub-int v3, v5, v6

    .local v3, "spaceLeftOver":I
    if-gez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    packed-switch v4, :pswitch_data_1

    .end local v3    # "spaceLeftOver":I
    :goto_1
    return v0

    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    :cond_3
    iget v5, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    :pswitch_0
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    iput v2, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .restart local v3    # "spaceLeftOver":I
    :pswitch_1
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v5, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/GridView;->mColumnWidth:I

    iput v2, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :pswitch_2
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v5, v7, :cond_4

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :cond_4
    add-int v5, v2, v3

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :pswitch_3
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v5, v7, :cond_5

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v5, v5, 0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :cond_5
    add-int v5, v2, v3

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "selectedView":Landroid/view/View;
    iget v3, p0, Landroid/widget/GridView;->mBottom:I

    iget v4, p0, Landroid/widget/GridView;->mTop:I

    sub-int v0, v3, v4

    .local v0, "end":I
    iget v3, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge p1, v3, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_1
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v3

    goto :goto_0

    .end local v2    # "temp":Landroid/view/View;
    :cond_2
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .param p1, "lastPosition"    # I
    .param p2, "nextBottom"    # I

    .prologue
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .local v0, "invertedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .local v2, "fadingEdgeLength":I
    iget v9, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .local v9, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .local v4, "numColumns":I
    iget v11, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .local v11, "verticalSpacing":I
    const/4 v6, -0x1

    .local v6, "rowEnd":I
    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    rem-int v12, v9, v4

    sub-int v7, v9, v12

    .local v7, "rowStart":I
    :goto_0
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v10

    .local v10, "topSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .local v1, "bottomSelectionPixel":I
    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v6

    :goto_1
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .local v8, "sel":Landroid/view/View;
    iput v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v5, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .local v5, "referenceView":Landroid/view/View;
    invoke-direct {p0, v5, v10, v1}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    invoke-direct {p0, v5, v10, v1}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v12, :cond_2

    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    :goto_2
    return-object v8

    .end local v1    # "bottomSelectionPixel":I
    .end local v5    # "referenceView":Landroid/view/View;
    .end local v7    # "rowStart":I
    .end local v8    # "sel":Landroid/view/View;
    .end local v10    # "topSelectionPixel":I
    :cond_0
    iget v12, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    .local v3, "invertedSelection":I
    iget v12, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "rowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    .restart local v1    # "bottomSelectionPixel":I
    .restart local v10    # "topSelectionPixel":I
    :cond_1
    move v12, v7

    goto :goto_1

    .restart local v5    # "referenceView":Landroid/view/View;
    .restart local v8    # "sel":Landroid/view/View;
    :cond_2
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .param p1, "nextTop"    # I

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    :cond_0
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 15
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v10

    .local v10, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .local v4, "numColumns":I
    iget v12, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .local v12, "verticalSpacing":I
    const/4 v7, -0x1

    .local v7, "rowEnd":I
    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    rem-int v13, v10, v4

    sub-int v8, v10, v13

    .local v8, "rowStart":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .local v2, "fadingEdgeLength":I
    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v11

    .local v11, "topSelectionPixel":I
    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v7

    :goto_1
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    .local v9, "sel":Landroid/view/View;
    iput v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .local v6, "referenceView":Landroid/view/View;
    if-nez v6, :cond_2

    :goto_2
    return-object v9

    .end local v2    # "fadingEdgeLength":I
    .end local v6    # "referenceView":Landroid/view/View;
    .end local v8    # "rowStart":I
    .end local v9    # "sel":Landroid/view/View;
    .end local v11    # "topSelectionPixel":I
    :cond_0
    iget v13, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    .local v3, "invertedSelection":I
    iget v13, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8    # "rowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    .restart local v2    # "fadingEdgeLength":I
    .restart local v11    # "topSelectionPixel":I
    :cond_1
    move v13, v8

    goto :goto_1

    .restart local v6    # "referenceView":Landroid/view/View;
    .restart local v9    # "sel":Landroid/view/View;
    :cond_2
    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v13, :cond_3

    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/widget/GridView;->pinToBottom(I)V

    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_2

    :cond_3
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .local v1, "bottomSelectionPixel":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .local v5, "offset":I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p1}, Landroid/widget/GridView;->pinToTop(I)V

    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    .local v6, "numColumns":I
    const/4 v4, -0x1

    .local v4, "motionRowEnd":I
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_1

    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .local v5, "motionRowStart":I
    :goto_0
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v10, :cond_2

    move v10, v4

    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .local v8, "temp":Landroid/view/View;
    iput v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .local v7, "referenceView":Landroid/view/View;
    if-nez v7, :cond_3

    const/4 v8, 0x0

    .end local v8    # "temp":Landroid/view/View;
    :cond_0
    :goto_2
    return-object v8

    .end local v5    # "motionRowStart":I
    .end local v7    # "referenceView":Landroid/view/View;
    :cond_1
    iget v10, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    .local v3, "invertedSelection":I
    iget v10, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5    # "motionRowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    :cond_2
    move v10, v5

    goto :goto_1

    .restart local v7    # "referenceView":Landroid/view/View;
    .restart local v8    # "temp":Landroid/view/View;
    :cond_3
    iget v9, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .local v9, "verticalSpacing":I
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_5

    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .local v0, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .local v1, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .local v2, "childCount":I
    if-lez v2, :cond_4

    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooHigh(III)V

    :cond_4
    :goto_3
    if-nez v8, :cond_0

    if-eqz v0, :cond_6

    move-object v8, v0

    goto :goto_2

    .end local v0    # "above":Landroid/view/View;
    .end local v1    # "below":Landroid/view/View;
    .end local v2    # "childCount":I
    :cond_5
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .restart local v2    # "childCount":I
    if-lez v2, :cond_4

    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_3

    :cond_6
    move-object v8, v1

    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, "selectedView":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "end":I
    iget v3, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    :cond_0
    :goto_0
    if-le p2, v0, :cond_2

    if-ltz p1, :cond_2

    invoke-direct {p0, p1, p2, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_1
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v3

    goto :goto_0

    .end local v2    # "temp":Landroid/view/View;
    :cond_2
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v3, :cond_3

    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    :cond_3
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "numColumns"    # I
    .param p4, "rowStart"    # I

    .prologue
    move v0, p1

    .local v0, "bottomSelectionPixel":I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    sub-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "rowStart"    # I

    .prologue
    move v0, p1

    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    add-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .param p1, "childIndex"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .local v0, "count":I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .local v1, "invertedIndex":I
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .local v3, "rowStart":I
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .local v2, "rowEnd":I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "rowEnd":I
    .end local v3    # "rowStart":I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .restart local v2    # "rowEnd":I
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3    # "rowStart":I
    goto :goto_0

    :sswitch_0
    if-ne p1, v3, :cond_2

    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    goto :goto_1

    :sswitch_1
    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    :sswitch_2
    if-eq p1, v2, :cond_1

    move v4, v5

    goto :goto_1

    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    move v4, v5

    goto :goto_1

    :sswitch_4
    if-ne p1, v3, :cond_3

    if-eqz v3, :cond_1

    :cond_3
    move v4, v5

    goto :goto_1

    :sswitch_5
    if-ne p1, v2, :cond_4

    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    :cond_4
    move v4, v5

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z
    .param p6, "where"    # I

    .prologue
    iget-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

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

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .end local v1    # "child":Landroid/view/View;
    .local v9, "child":Landroid/view/View;
    :goto_0
    return-object v9

    .end local v9    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "child":Landroid/view/View;
    iget-object v0, p0, Landroid/widget/GridView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .end local v1    # "child":Landroid/view/View;
    .restart local v9    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 19
    .param p1, "startPos"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z

    .prologue
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/GridView;->mColumnWidth:I

    .local v9, "columnWidth":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .local v12, "horizontalSpacing":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v14

    .local v14, "isLayoutRtl":Z
    if-eqz v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    sub-int v3, v1, v9

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    move v1, v12

    :goto_0
    sub-int v5, v3, v1

    .local v5, "nextLeft":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mNumColumns:I

    add-int v1, v1, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/GridView;->mItemCount:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .local v15, "last":I
    :cond_0
    :goto_2
    const/16 v18, 0x0

    .local v18, "selectedView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v11

    .local v11, "hasFocus":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v13

    .local v13, "inClick":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v17, v0

    .local v17, "selectedPosition":I
    const/4 v8, 0x0

    .local v8, "child":Landroid/view/View;
    if-eqz v14, :cond_9

    const/16 v16, -0x1

    .local v16, "nextChildDir":I
    :goto_3
    move/from16 v2, p1

    .local v2, "pos":I
    :goto_4
    if-ge v2, v15, :cond_c

    move/from16 v0, v17

    if-ne v2, v0, :cond_a

    const/4 v6, 0x1

    .local v6, "selected":Z
    :goto_5
    if-eqz p3, :cond_b

    const/4 v7, -0x1

    .local v7, "where":I
    :goto_6
    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v8

    mul-int v1, v16, v9

    add-int/2addr v5, v1

    add-int/lit8 v1, v15, -0x1

    if-ge v2, v1, :cond_1

    mul-int v1, v16, v12

    add-int/2addr v5, v1

    :cond_1
    if-eqz v6, :cond_3

    if-nez v11, :cond_2

    if-eqz v13, :cond_3

    :cond_2
    move-object/from16 v18, v8

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v2    # "pos":I
    .end local v5    # "nextLeft":I
    .end local v6    # "selected":Z
    .end local v7    # "where":I
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "hasFocus":Z
    .end local v13    # "inClick":Z
    .end local v15    # "last":I
    .end local v16    # "nextChildDir":I
    .end local v17    # "selectedPosition":I
    .end local v18    # "selectedView":Landroid/view/View;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    move v1, v12

    :goto_7
    add-int v5, v3, v1

    .restart local v5    # "nextLeft":I
    goto :goto_1

    .end local v5    # "nextLeft":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    .restart local v5    # "nextLeft":I
    :cond_7
    add-int/lit8 v15, p1, 0x1

    .restart local v15    # "last":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int v1, v15, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/GridView;->mNumColumns:I

    if-ge v1, v3, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v3, v15, p1

    sub-int/2addr v1, v3

    add-int v3, v9, v12

    mul-int v10, v1, v3

    .local v10, "deltaLeft":I
    if-eqz v14, :cond_8

    const/4 v1, -0x1

    :goto_8
    mul-int/2addr v1, v10

    add-int/2addr v5, v1

    goto :goto_2

    :cond_8
    const/4 v1, 0x1

    goto :goto_8

    .end local v10    # "deltaLeft":I
    .restart local v8    # "child":Landroid/view/View;
    .restart local v11    # "hasFocus":Z
    .restart local v13    # "inClick":Z
    .restart local v17    # "selectedPosition":I
    .restart local v18    # "selectedView":Landroid/view/View;
    :cond_9
    const/16 v16, 0x1

    goto :goto_3

    .restart local v2    # "pos":I
    .restart local v16    # "nextChildDir":I
    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    .restart local v6    # "selected":Z
    :cond_b
    sub-int v7, v2, p1

    goto :goto_6

    .end local v6    # "selected":Z
    :cond_c
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    :cond_d
    return-object v18
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 22
    .param p1, "delta"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .local v5, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v16, v0

    .local v16, "selectedPosition":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/GridView;->mNumColumns:I

    .local v7, "numColumns":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v18, v0

    .local v18, "verticalSpacing":I
    const/4 v13, -0x1

    .local v13, "rowEnd":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    .local v9, "oldRowStart":I
    rem-int v19, v16, v7

    sub-int v14, v16, v19

    .local v14, "rowStart":I
    :goto_0
    sub-int v12, v14, v9

    .local v12, "rowDelta":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v17

    .local v17, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    .local v4, "bottomSelectionPixel":I
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v8, 0x0

    .local v8, "oldBottom":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move/from16 v19, v13

    :goto_2
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .local v15, "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .local v11, "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .end local v8    # "oldBottom":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    :goto_4
    return-object v15

    .end local v4    # "bottomSelectionPixel":I
    .end local v9    # "oldRowStart":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v12    # "rowDelta":I
    .end local v14    # "rowStart":I
    .end local v15    # "sel":Landroid/view/View;
    .end local v17    # "topSelectionPixel":I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    .local v6, "invertedSelection":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    .restart local v14    # "rowStart":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    .restart local v9    # "oldRowStart":I
    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_0

    .end local v6    # "invertedSelection":I
    .restart local v4    # "bottomSelectionPixel":I
    .restart local v12    # "rowDelta":I
    .restart local v17    # "topSelectionPixel":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto/16 :goto_1

    .restart local v8    # "oldBottom":I
    :cond_2
    move/from16 v19, v14

    goto/16 :goto_2

    .end local v8    # "oldBottom":I
    :cond_3
    if-gez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    const/4 v10, 0x0

    .local v10, "oldTop":I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v19, v13

    :goto_6
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .restart local v11    # "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_5

    .restart local v10    # "oldTop":I
    :cond_5
    move/from16 v19, v14

    goto :goto_6

    .end local v10    # "oldTop":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    const/4 v10, 0x0

    .restart local v10    # "oldTop":I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move/from16 v19, v13

    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .restart local v11    # "referenceView":Landroid/view/View;
    goto/16 :goto_3

    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_7

    .restart local v10    # "oldTop":I
    :cond_8
    move/from16 v19, v14

    goto :goto_8

    .end local v10    # "oldTop":I
    .restart local v11    # "referenceView":Landroid/view/View;
    .restart local v15    # "sel":Landroid/view/View;
    :cond_9
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private pinToBottom(I)V
    .locals 5
    .param p1, "childrenBottom"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .local v1, "count":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .local v0, "bottom":I
    sub-int v2, p1, v0

    .local v2, "offset":I
    if-lez v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .end local v0    # "bottom":I
    .end local v2    # "offset":I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 3
    .param p1, "childrenTop"    # I

    .prologue
    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .local v1, "top":I
    sub-int v0, p1, v1

    .local v0, "offset":I
    if-gez v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .end local v0    # "offset":I
    .end local v1    # "top":I
    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 26
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flow"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z
    .param p8, "where"    # I

    .prologue
    const-wide/16 v24, 0x8

    const-string v23, "setupGridItem"

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz p6, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v23

    if-eqz v23, :cond_7

    const/4 v15, 0x1

    .local v15, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v23

    move/from16 v0, v23

    if-eq v15, v0, :cond_8

    const/16 v21, 0x1

    .local v21, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v17, v0

    .local v17, "mode":I
    if-lez v17, :cond_9

    const/16 v23, 0x3

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    const/4 v14, 0x1

    .local v14, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v23

    move/from16 v0, v23

    if-eq v14, v0, :cond_a

    const/16 v20, 0x1

    .local v20, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v21, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v23

    if-eqz v23, :cond_b

    :cond_0
    const/16 v18, 0x1

    .local v18, "needToMeasure":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    .local v19, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .end local v19    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    .restart local v19    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    if-eqz p7, :cond_c

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v23, v0

    if-nez v23, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    if-eqz v21, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setSelected(Z)V

    if-eqz v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->requestFocus()Z

    :cond_2
    if-eqz v20, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mChoiceMode:I

    move/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v23, v0

    if-eqz v23, :cond_d

    move-object/from16 v23, p1

    check-cast v23, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v24

    invoke-interface/range {v23 .. v24}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_4
    :goto_6
    if-eqz v18, :cond_e

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v25, v0

    invoke-static/range {v23 .. v25}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .local v8, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v25, v0

    invoke-static/range {v23 .. v25}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    .local v12, "childWidthSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v8}, Landroid/view/View;->measure(II)V

    .end local v8    # "childHeightSpec":I
    .end local v12    # "childWidthSpec":I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    .local v22, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .local v13, "h":I
    if-eqz p4, :cond_f

    move/from16 v11, p3

    .local v11, "childTop":I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getLayoutDirection()I

    move-result v16

    .local v16, "layoutDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mGravity:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    .local v6, "absoluteGravity":I
    and-int/lit8 v23, v6, 0x7

    packed-switch v23, :pswitch_data_0

    :pswitch_0
    move/from16 v9, p5

    .local v9, "childLeft":I
    :goto_9
    if-eqz v18, :cond_10

    add-int v10, v9, v22

    .local v10, "childRight":I
    add-int v7, v11, v13

    .local v7, "childBottom":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v11, v10, v7}, Landroid/view/View;->layout(IIII)V

    .end local v7    # "childBottom":I
    .end local v10    # "childRight":I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mCachingStarted:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_5
    if-eqz p7, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p2

    if-eq v0, v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_6
    const-wide/16 v24, 0x8

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .end local v6    # "absoluteGravity":I
    .end local v9    # "childLeft":I
    .end local v11    # "childTop":I
    .end local v13    # "h":I
    .end local v14    # "isPressed":Z
    .end local v15    # "isSelected":Z
    .end local v16    # "layoutDirection":I
    .end local v17    # "mode":I
    .end local v18    # "needToMeasure":Z
    .end local v19    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v20    # "updateChildPressed":Z
    .end local v21    # "updateChildSelected":Z
    .end local v22    # "w":I
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_0

    .restart local v15    # "isSelected":Z
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_1

    .restart local v17    # "mode":I
    .restart local v21    # "updateChildSelected":Z
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_2

    .restart local v14    # "isPressed":Z
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_3

    .restart local v20    # "updateChildPressed":Z
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_4

    .restart local v18    # "needToMeasure":Z
    .restart local v19    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_c
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v19

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v23, v0

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_6

    :cond_e
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_7

    .restart local v13    # "h":I
    .restart local v22    # "w":I
    :cond_f
    sub-int v11, p3, v13

    goto/16 :goto_8

    .restart local v6    # "absoluteGravity":I
    .restart local v11    # "childTop":I
    .restart local v16    # "layoutDirection":I
    :pswitch_1
    move/from16 v9, p5

    .restart local v9    # "childLeft":I
    goto/16 :goto_9

    .end local v9    # "childLeft":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v23, v0

    sub-int v23, v23, v22

    div-int/lit8 v23, v23, 0x2

    add-int v9, p5, v23

    .restart local v9    # "childLeft":I
    goto/16 :goto_9

    .end local v9    # "childLeft":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v23, v0

    add-int v23, v23, p5

    sub-int v9, v23, v22

    .restart local v9    # "childLeft":I
    goto/16 :goto_9

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v23

    sub-int v23, v9, v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    sub-int v23, v11, v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/16 v12, 0x42

    const/16 v11, 0x11

    const/4 v10, 0x0

    const/4 v9, 0x6

    iget v5, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .local v5, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .local v4, "numColumns":I
    const/4 v3, 0x0

    .local v3, "moved":Z
    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v7, :cond_6

    div-int v7, v5, v4

    mul-int v6, v7, v4

    .local v6, "startOfRowPos":I
    add-int v7, v6, v4

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "endOfRowPos":I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v2

    .local v2, "isLayoutRtl":Z
    if-le v5, v6, :cond_7

    if-ne p1, v11, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    if-ne p1, v12, :cond_7

    if-eqz v2, :cond_7

    :cond_2
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v7, v5, -0x1

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v3, 0x1

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->playSoundEffect(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_5
    return v3

    .end local v0    # "endOfRowPos":I
    .end local v2    # "isLayoutRtl":Z
    .end local v6    # "startOfRowPos":I
    :cond_6
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v1, v7, v5

    .local v1, "invertedSelection":I
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    div-int v8, v1, v4

    mul-int/2addr v8, v4

    sub-int v0, v7, v8

    .restart local v0    # "endOfRowPos":I
    sub-int v7, v0, v4

    add-int/lit8 v7, v7, 0x1

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .restart local v6    # "startOfRowPos":I
    goto :goto_0

    .end local v1    # "invertedSelection":I
    :sswitch_0
    if-lez v6, :cond_0

    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    sub-int v7, v5, v4

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_1
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_0

    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int v7, v5, v4

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v3, 0x1

    goto :goto_1

    .restart local v2    # "isLayoutRtl":Z
    :cond_7
    if-ge v5, v0, :cond_3

    if-ne p1, v11, :cond_8

    if-nez v2, :cond_9

    :cond_8
    if-ne p1, v12, :cond_3

    if-nez v2, :cond_3

    :cond_9
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v7, v5, 0x1

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v3, 0x1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .prologue
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .local v0, "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .restart local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    :goto_0
    return-void

    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .local v1, "invertedIndex":I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .local v1, "count":I
    if-lez v1, :cond_2

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .local v4, "numColumns":I
    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    .local v5, "rowCount":I
    mul-int/lit8 v2, v5, 0x64

    .local v2, "extent":I
    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .local v6, "top":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int v3, v8, v9

    .local v3, "height":I
    if-lez v3, :cond_0

    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .local v0, "bottom":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int v3, v8, v9

    if-lez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "numColumns":I
    .end local v5    # "rowCount":I
    .end local v6    # "top":I
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v8

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-ltz v8, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int v0, v8, v9

    .local v0, "height":I
    if-lez v0, :cond_0

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .local v1, "numColumns":I
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    div-int v3, v8, v1

    .local v3, "rowCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->isStackFromBottom()Z

    move-result v8

    if-eqz v8, :cond_1

    mul-int v8, v3, v1

    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int v2, v8, v9

    .local v2, "oddItemsOnFirstRow":I
    :goto_0
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v8, v2

    div-int v6, v8, v1

    .local v6, "whichRow":I
    mul-int/lit8 v8, v6, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v0

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v3

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .end local v0    # "height":I
    .end local v1    # "numColumns":I
    .end local v2    # "oddItemsOnFirstRow":I
    .end local v3    # "rowCount":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "whichRow":I
    :cond_0
    return v7

    .restart local v0    # "height":I
    .restart local v1    # "numColumns":I
    .restart local v3    # "rowCount":I
    .restart local v4    # "top":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    move v2, v7

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .local v0, "numColumns":I
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    .local v2, "rowCount":I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "result":I
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    return v1
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "numColumns"

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method fillGap(Z)V
    .locals 9
    .param p1, "down"    # Z

    .prologue
    const/16 v8, 0x22

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .local v1, "numColumns":I
    iget v6, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .local v6, "verticalSpacing":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .local v0, "count":I
    if-eqz p1, :cond_3

    const/4 v3, 0x0

    .local v3, "paddingTop":I
    iget v7, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v3

    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v5, v7, v6

    .local v5, "startOffset":I
    :goto_0
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int v4, v7, v0

    .local v4, "position":I
    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v7, :cond_1

    add-int/lit8 v7, v1, -0x1

    add-int/2addr v4, v7

    :cond_1
    invoke-direct {p0, v4, v5}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Landroid/widget/GridView;->correctTooHigh(III)V

    .end local v3    # "paddingTop":I
    :goto_1
    return-void

    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    .restart local v3    # "paddingTop":I
    :cond_2
    move v5, v3

    goto :goto_0

    .end local v3    # "paddingTop":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "paddingBottom":I
    iget v7, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_4

    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result v2

    :cond_4
    if-lez v0, :cond_5

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v5, v7, v6

    .restart local v5    # "startOffset":I
    :goto_2
    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    .restart local v4    # "position":I
    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v7, :cond_6

    sub-int/2addr v4, v1

    :goto_3
    invoke-direct {p0, v4, v5}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_1

    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v7

    sub-int v5, v7, v2

    goto :goto_2

    .restart local v4    # "position":I
    .restart local v5    # "startOffset":I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    if-lez v0, :cond_3

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .local v2, "numColumns":I
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :goto_1
    return v3

    .restart local v1    # "i":I
    .restart local v2    # "numColumns":I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .local v0, "moved":Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_1
    return v0

    :cond_2
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getNumColumns()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    return v0
.end method

.method public getRequestedColumnWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 36

    .prologue
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .local v7, "blockLayoutRequests":Z
    if-nez v7, :cond_0

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v33, v0

    if-nez v33, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .local v11, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mBottom:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTop:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    sub-int v10, v33, v34

    .local v10, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v9

    .local v9, "childCount":I
    const/4 v13, 0x0

    .local v13, "delta":I
    const/16 v25, 0x0

    .local v25, "oldSel":Landroid/view/View;
    const/16 v24, 0x0

    .local v24, "oldFirst":Landroid/view/View;
    const/16 v23, 0x0

    .local v23, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mLayoutMode:I

    move/from16 v33, v0

    packed-switch v33, :pswitch_data_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v34, v0

    sub-int v19, v33, v34

    .local v19, "index":I
    if-ltz v19, :cond_3

    move/from16 v0, v19

    if-ge v0, v9, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    :cond_3
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .end local v19    # "index":I
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/GridView;->mDataChanged:Z

    .local v12, "dataChanged":Z
    if-eqz v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->handleDataChanged()V

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v33, v0

    if-nez v33, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_1

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .end local v12    # "dataChanged":Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v34, v0

    sub-int v19, v33, v34

    .restart local v19    # "index":I
    if-ltz v19, :cond_4

    move/from16 v0, v19

    if-ge v0, v9, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    goto :goto_1

    .end local v19    # "index":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v33, v0

    if-ltz v33, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v34, v0

    sub-int v13, v33, v34

    goto :goto_1

    .restart local v12    # "dataChanged":Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    const/4 v4, 0x0

    .local v4, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v5, 0x0

    .local v5, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v6, -0x1

    .local v6, "accessibilityFocusPosition":I
    const/16 v21, 0x0

    .local v21, "mInsideViewAccFocused":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v31

    .local v31, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v31, :cond_a

    invoke-virtual/range {v31 .. v31}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v16

    .local v16, "focusHost":Landroid/view/View;
    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v15

    .local v15, "focusChild":Landroid/view/View;
    move-object/from16 v0, v16

    if-eq v0, v15, :cond_7

    const/16 v21, 0x1

    :cond_7
    if-eqz v15, :cond_a

    if-eqz v12, :cond_8

    invoke-virtual {v15}, Landroid/view/View;->hasTransientState()Z

    move-result v33

    if-nez v33, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mAdapterHasStableIds:Z

    move/from16 v33, v0

    if-eqz v33, :cond_9

    :cond_8
    move-object/from16 v5, v16

    invoke-virtual/range {v31 .. v31}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    .end local v15    # "focusChild":Landroid/view/View;
    .end local v16    # "focusHost":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/GridView;->mFirstPosition:I

    .local v14, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v28, v0

    .local v28, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v12, :cond_b

    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v9, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    add-int v34, v14, v17

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .end local v17    # "i":I
    :cond_b
    move-object/from16 v0, v28

    invoke-virtual {v0, v9, v14}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mLayoutMode:I

    move/from16 v33, v0

    packed-switch v33, :pswitch_data_1

    if-nez v9, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v33, v0

    if-nez v33, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v33, v0

    if-eqz v33, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v33

    if-eqz v33, :cond_14

    :cond_d
    const/16 v33, -0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v30

    .end local v11    # "childrenTop":I
    .local v30, "sel":Landroid/view/View;
    :goto_4
    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    if-eqz v30, :cond_1d

    const/16 v33, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTop()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mSelectedTop:I

    :cond_e
    :goto_5
    if-eqz v31, :cond_f

    invoke-virtual/range {v31 .. v31}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v22

    .local v22, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v22, :cond_23

    if-eqz v5, :cond_22

    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v33

    if-eqz v33, :cond_22

    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v27

    .local v27, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v4, :cond_21

    if-eqz v27, :cond_21

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v32

    .local v32, "virtualViewId":I
    const/16 v33, 0x40

    const/16 v34, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .end local v22    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v27    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v32    # "virtualViewId":I
    :cond_f
    :goto_6
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mLayoutMode:I

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mDataChanged:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    :cond_10
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mNeedSync:Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->updateScrollIndicators()V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v33, v0

    if-lez v33, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_1

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .end local v30    # "sel":Landroid/view/View;
    .restart local v11    # "childrenTop":I
    :pswitch_3
    if-eqz v23, :cond_12

    :try_start_3
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1, v11, v10}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v30    # "sel":Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v30    # "sel":Landroid/view/View;
    :pswitch_4
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .end local v4    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .end local v9    # "childCount":I
    .end local v10    # "childrenBottom":I
    .end local v11    # "childrenTop":I
    .end local v12    # "dataChanged":Z
    .end local v13    # "delta":I
    .end local v14    # "firstPosition":I
    .end local v21    # "mInsideViewAccFocused":Z
    .end local v23    # "newSel":Landroid/view/View;
    .end local v24    # "oldFirst":Landroid/view/View;
    .end local v25    # "oldSel":Landroid/view/View;
    .end local v28    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v30    # "sel":Landroid/view/View;
    .end local v31    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :catchall_0
    move-exception v33

    if-nez v7, :cond_13

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_13
    throw v33

    .restart local v4    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v5    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .restart local v9    # "childCount":I
    .restart local v10    # "childrenBottom":I
    .restart local v11    # "childrenTop":I
    .restart local v12    # "dataChanged":Z
    .restart local v13    # "delta":I
    .restart local v14    # "firstPosition":I
    .restart local v21    # "mInsideViewAccFocused":Z
    .restart local v23    # "newSel":Landroid/view/View;
    .restart local v24    # "oldFirst":Landroid/view/View;
    .restart local v25    # "oldSel":Landroid/view/View;
    .restart local v28    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v31    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :pswitch_5
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1, v10}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .end local v30    # "sel":Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSpecificTop:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v30    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSyncPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSpecificTop:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v30    # "sel":Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11, v10}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v30    # "sel":Landroid/view/View;
    :cond_14
    const/16 v33, 0x0

    goto/16 :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v33, v0

    add-int/lit8 v20, v33, -0x1

    .local v20, "last":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v33, v0

    if-eqz v33, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v33

    if-eqz v33, :cond_17

    :cond_16
    const/16 v33, -0x1

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v10}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v30    # "sel":Landroid/view/View;
    :cond_17
    move/from16 v33, v20

    goto :goto_7

    .end local v20    # "last":I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v33, v0

    if-ltz v33, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v33, v0

    if-nez v25, :cond_19

    .end local v11    # "childrenTop":I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1, v11}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v30    # "sel":Landroid/view/View;
    .restart local v11    # "childrenTop":I
    :cond_19
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v11

    goto :goto_8

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v33, v0

    if-nez v24, :cond_1b

    .end local v11    # "childrenTop":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1, v11}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v30    # "sel":Landroid/view/View;
    .restart local v11    # "childrenTop":I
    :cond_1b
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v11

    goto :goto_9

    :cond_1c
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1, v11}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v11    # "childrenTop":I
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v33, v0

    if-lez v33, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v33, v0

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_1e

    const/16 v18, 0x1

    .local v18, "inTouchMode":Z
    :goto_a
    if-eqz v18, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v8}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .end local v8    # "child":Landroid/view/View;
    .end local v18    # "inTouchMode":Z
    :cond_1e
    const/16 v18, 0x0

    goto :goto_a

    .restart local v18    # "inTouchMode":Z
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectorPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .restart local v8    # "child":Landroid/view/View;
    if-eqz v8, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectorPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v8}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .end local v8    # "child":Landroid/view/View;
    :cond_20
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mSelectedTop:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .end local v18    # "inTouchMode":Z
    .restart local v22    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v27    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_21
    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_6

    .end local v27    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_22
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v33, v6, v33

    const/16 v34, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    invoke-static/range {v33 .. v35}, Landroid/util/MathUtils;->constrain(III)I

    move-result v26

    .local v26, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .local v29, "restoreView":Landroid/view/View;
    if-eqz v29, :cond_f

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_6

    .end local v26    # "position":I
    .end local v29    # "restoreView":Landroid/view/View;
    :cond_23
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v33, v6, v33

    const/16 v34, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    invoke-static/range {v33 .. v35}, Landroid/util/MathUtils;->constrain(III)I

    move-result v26

    .restart local v26    # "position":I
    if-eqz v21, :cond_24

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .restart local v29    # "restoreView":Landroid/view/View;
    :goto_b
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v33

    if-eqz v33, :cond_f

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_f

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->clearAccessibilityFocus()V

    if-eqz v29, :cond_f

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_6

    .end local v29    # "restoreView":Landroid/view/View;
    :cond_24
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v29

    .restart local v29    # "restoreView":Landroid/view/View;
    goto :goto_b

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v1, -0x1

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v1

    .end local p1    # "position":I
    :cond_1
    :goto_0
    return p1

    .restart local p1    # "position":I
    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-lt p1, v2, :cond_1

    :cond_3
    move p1, v1

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const/4 v1, -0x1

    .local v1, "closestChildIndex":I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    iget v7, p0, Landroid/widget/GridView;->mScrollX:I

    iget v8, p0, Landroid/widget/GridView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    iget-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .local v6, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .local v4, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    invoke-direct {p0, v3, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "other":Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v5, v6}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p3, v6, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .local v2, "distance":I
    if-ge v2, v4, :cond_0

    move v4, v2

    move v1, v3

    goto :goto_1

    .end local v0    # "childCount":I
    .end local v2    # "distance":I
    .end local v3    # "i":I
    .end local v4    # "minDistance":I
    .end local v5    # "other":Landroid/view/View;
    .end local v6    # "otherRect":Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelection(I)V

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v7

    .local v7, "count":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v6

    .local v6, "columnsCount":I
    div-int v11, v7, v6

    .local v11, "rowsCount":I
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    rem-int v2, p2, v6

    .local v2, "column":I
    div-int v0, p2, v6

    .local v0, "row":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    .local v10, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v10, :cond_1

    iget v1, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v3, -0x2

    if-eq v1, v3, :cond_1

    const/4 v4, 0x1

    .local v4, "isHeading":Z
    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->isItemChecked(I)Z

    move-result v5

    .local v5, "isSelected":Z
    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v9

    .local v9, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void

    .end local v0    # "row":I
    .end local v2    # "column":I
    .end local v4    # "isHeading":Z
    .end local v5    # "isSelected":Z
    .end local v9    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .end local v10    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_0
    add-int/lit8 v1, v7, -0x1

    sub-int v8, v1, p2

    .local v8, "invertedIndex":I
    add-int/lit8 v1, v6, -0x1

    rem-int v3, v8, v6

    sub-int v2, v1, v3

    .restart local v2    # "column":I
    add-int/lit8 v1, v11, -0x1

    div-int v3, v8, v6

    sub-int v0, v1, v3

    .restart local v0    # "row":I
    goto :goto_0

    .end local v8    # "invertedIndex":I
    .restart local v10    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .local v1, "columnsCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v4

    div-int v2, v4, v1

    .local v2, "rowsCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getSelectionModeForAccessibility()I

    move-result v3

    .local v3, "selectionMode":I
    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    if-gtz v1, :cond_0

    if-lez v2, :cond_1

    :cond_0
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .local v11, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .local v12, "heightSize":I
    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v18, v19, v20

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v19

    add-int v18, v18, v19

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    .local v7, "childWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/GridView;->determineColumns(I)Z

    move-result v10

    .local v10, "didNotInitiallyFit":Z
    const/4 v4, 0x0

    .local v4, "childHeight":I
    const/4 v6, 0x0

    .local v6, "childState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_a

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mItemCount:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/GridView;->mItemCount:I

    .local v9, "count":I
    if-lez v9, :cond_2

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mIsScrap:[Z

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .local v16, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v16, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .end local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .restart local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v5

    .local v5, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v8

    .local v8, "childWidthSpec":I
    invoke-virtual {v3, v8, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Landroid/widget/GridView;->combineMeasuredStates(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v19, v19, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    add-int v12, v19, v20

    :cond_3
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v11, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v15, v19, v20

    .local v15, "ourSize":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/GridView;->mNumColumns:I

    .local v14, "numColumns":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v9, :cond_5

    add-int/2addr v15, v4

    add-int v19, v13, v14

    move/from16 v0, v19

    if-ge v0, v9, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v19, v0

    add-int v15, v15, v19

    :cond_4
    if-lt v15, v12, :cond_b

    move v15, v12

    :cond_5
    move v12, v15

    .end local v13    # "i":I
    .end local v14    # "numColumns":I
    .end local v15    # "ourSize":I
    :cond_6
    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v15, v19, v20

    .restart local v15    # "ourSize":I
    move/from16 v0, v18

    if-gt v15, v0, :cond_7

    if-eqz v10, :cond_8

    :cond_7
    const/high16 v19, 0x1000000

    or-int v18, v18, v19

    .end local v15    # "ourSize":I
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mWidthMeasureSpec:I

    return-void

    .end local v4    # "childHeight":I
    .end local v6    # "childState":I
    .end local v7    # "childWidth":I
    .end local v9    # "count":I
    .end local v10    # "didNotInitiallyFit":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v18, v19, v20

    goto/16 :goto_0

    .restart local v4    # "childHeight":I
    .restart local v6    # "childState":I
    .restart local v7    # "childWidth":I
    .restart local v10    # "didNotInitiallyFit":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/widget/ListAdapter;->getCount()I

    move-result v19

    goto/16 :goto_1

    .restart local v9    # "count":I
    .restart local v13    # "i":I
    .restart local v14    # "numColumns":I
    .restart local v15    # "ourSize":I
    :cond_b
    add-int/2addr v13, v14

    goto/16 :goto_2
.end method

.method pageScroll(I)Z
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .local v0, "nextPage":I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    iget v2, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .local v0, "numColumns":I
    const-string v4, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .local v2, "row":I
    mul-int v4, v2, v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "position":I
    if-ltz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1020037
        :pswitch_0
    .end packed-switch
.end method

.method sequenceScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget v5, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .local v5, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .local v4, "numColumns":I
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    .local v0, "count":I
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_3

    div-int v10, v5, v4

    mul-int v7, v10, v4

    .local v7, "startOfRow":I
    add-int v10, v7, v4

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "endOfRow":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "moved":Z
    const/4 v6, 0x0

    .local v6, "showScroll":Z
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->playSoundEffect(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_2
    return v3

    .end local v1    # "endOfRow":I
    .end local v3    # "moved":Z
    .end local v6    # "showScroll":Z
    .end local v7    # "startOfRow":I
    :cond_3
    add-int/lit8 v10, v0, -0x1

    sub-int v2, v10, v5

    .local v2, "invertedSelection":I
    add-int/lit8 v10, v0, -0x1

    div-int v11, v2, v4

    mul-int/2addr v11, v4

    sub-int v1, v10, v11

    .restart local v1    # "endOfRow":I
    sub-int v10, v1, v4

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "startOfRow":I
    goto :goto_0

    .end local v2    # "invertedSelection":I
    .restart local v3    # "moved":Z
    .restart local v6    # "showScroll":Z
    :pswitch_0
    add-int/lit8 v10, v0, -0x1

    if-ge v5, v10, :cond_0

    iput v12, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v3, 0x1

    if-ne v5, v1, :cond_4

    move v6, v8

    :goto_2
    goto :goto_1

    :cond_4
    move v6, v9

    goto :goto_2

    :pswitch_1
    if-lez v5, :cond_0

    iput v12, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v3, 0x1

    if-ne v5, v7, :cond_5

    move v6, v8

    :goto_3
    goto :goto_1

    :cond_5
    move v6, v9

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    iput-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/GridView;->mOldSelectedPosition:I

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/GridView;->mOldSelectedRowId:J

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    iput v1, p0, Landroid/widget/GridView;->mOldItemCount:I

    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/GridView;->mItemCount:I

    iput-boolean v5, p0, Landroid/widget/GridView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .local v0, "position":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .end local v0    # "position":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    return-void

    :cond_1
    invoke-virtual {p0, v4, v5}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_0

    .end local v0    # "position":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setColumnWidth(I)V
    .locals 1
    .param p1, "columnWidth"    # I

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .param p1, "horizontalSpacing"    # I

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridView;->mLayoutMode:I

    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    return-void

    :cond_1
    iput p1, p0, Landroid/widget/GridView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    iget v4, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    .local v4, "previousSelectedPosition":I
    iget-object v5, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    .local v0, "next":I
    :goto_0
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v5, :cond_3

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    .local v2, "previous":I
    :goto_1
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, v0, v5

    .local v1, "nextRow":I
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v2, v5

    .local v3, "previousRow":I
    if-eq v1, v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_1
    return-void

    .end local v0    # "next":I
    .end local v1    # "nextRow":I
    .end local v2    # "previous":I
    .end local v3    # "previousRow":I
    :cond_2
    iget v0, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    goto :goto_0

    .restart local v0    # "next":I
    :cond_3
    move v2, v4

    goto :goto_1
.end method

.method public setStretchMode(I)V
    .locals 1
    .param p1, "stretchMode"    # I

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .param p1, "verticalSpacing"    # I

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    return-void
.end method
