.class public Landroid/widget/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuView$1;,
        Landroid/widget/ActionMenuView$LayoutParams;,
        Landroid/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"

.field private static mIsThemeDeviceDefaultFamily:Z


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private mOriginalEndPadding:I

.field private mOriginalOverflowEndPadding:I

.field private mOriginalOverflowStartPadding:I

.field private mOriginalStartPadding:I

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v8, 0x45

    const/16 v7, 0x44

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    invoke-virtual {p0, v4}, Landroid/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    .line 90
    .local v1, "density":F
    const/high16 v5, 0x42600000    # 56.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    .line 91
    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 92
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 93
    iput v4, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 96
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 97
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x11600bd

    invoke-virtual {v5, v6, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 98
    iget v5, v2, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_0

    :goto_0
    sput-boolean v3, Landroid/widget/ActionMenuView;->mIsThemeDeviceDefaultFamily:Z

    .line 102
    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const v5, 0x10102d8

    invoke-virtual {p1, p2, v3, v5, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuView;->mOriginalStartPadding:I

    .line 104
    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuView;->mOriginalEndPadding:I

    .line 105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const v5, 0x10102f6

    invoke-virtual {p1, p2, v3, v5, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    .line 108
    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    .line 109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    move v3, v4

    .line 98
    goto :goto_0
.end method

.method static synthetic access$200(Landroid/widget/ActionMenuView;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuView;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuView;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method private getNumericValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    const/4 v1, 0x0

    .line 267
    :goto_0
    return v1

    .line 261
    :cond_0
    const/4 v1, 0x0

    .line 263
    .local v1, "num":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuView$LayoutParams;

    .line 510
    .local v8, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 512
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 513
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 515
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 517
    .local v7, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 519
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 520
    .local v0, "cellsUsed":I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 521
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 523
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 525
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 526
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 527
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 528
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 531
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    iget-boolean v11, v8, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 532
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 534
    iput v0, v8, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 535
    mul-int v10, v0, p1

    .line 536
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 538
    return v0

    .line 515
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 517
    .restart local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 531
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 42
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 272
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 273
    .local v17, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 274
    .local v37, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 276
    .local v19, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .line 277
    .local v36, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .line 279
    .local v18, "heightPadding":I
    const/16 v38, -0x2

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v22

    .line 282
    .local v22, "itemHeightSpec":I
    sub-int v37, v37, v36

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .line 286
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .line 288
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_0

    .line 290
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 491
    :goto_0
    return-void

    .line 294
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .line 296
    .local v5, "cellSize":I
    move v8, v4

    .line 297
    .local v8, "cellsRemaining":I
    const/16 v25, 0x0

    .line 298
    .local v25, "maxChildHeight":I
    const/16 v24, 0x0

    .line 299
    .local v24, "maxCellsUsed":I
    const/4 v14, 0x0

    .line 300
    .local v14, "expandableItemCount":I
    const/16 v34, 0x0

    .line 301
    .local v34, "visibleItemCount":I
    const/16 v16, 0x0

    .line 304
    .local v16, "hasOverflow":Z
    const-wide/16 v32, 0x0

    .line 306
    .local v32, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v12

    .line 307
    .local v12, "childCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v12, :cond_9

    .line 308
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 309
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2

    .line 307
    :cond_1
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 311
    :cond_2
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    .line 312
    .local v21, "isGeneratedItem":Z
    add-int/lit8 v34, v34, 0x1

    .line 314
    if-eqz v21, :cond_3

    .line 317
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 320
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 321
    .local v23, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 322
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 323
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 324
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 325
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 326
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 327
    if-eqz v21, :cond_7

    move-object/from16 v38, v11

    check-cast v38, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_7

    const/16 v38, 0x1

    :goto_3
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 330
    sget-boolean v38, Landroid/widget/ActionMenuView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v38, :cond_4

    .line 331
    move/from16 v0, v21

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 336
    :cond_4
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_8

    const/4 v7, 0x1

    .line 338
    .local v7, "cellsAvailable":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 341
    .local v9, "cellsUsed":I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 342
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_5

    add-int/lit8 v14, v14, 0x1

    .line 343
    :cond_5
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_6

    const/16 v16, 0x1

    .line 345
    :cond_6
    sub-int/2addr v8, v9

    .line 346
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 347
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_1

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_2

    .line 327
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_7
    const/16 v38, 0x0

    goto :goto_3

    :cond_8
    move v7, v8

    .line 336
    goto :goto_4

    .line 352
    .end local v11    # "child":Landroid/view/View;
    .end local v21    # "isGeneratedItem":Z
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_9
    if-eqz v16, :cond_b

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    .line 357
    .local v10, "centerSingleExpandedItem":Z
    :goto_5
    const/16 v30, 0x0

    .line 358
    .local v30, "needsExpansion":Z
    :goto_6
    if-lez v14, :cond_f

    if-lez v8, :cond_f

    .line 359
    const v26, 0x7fffffff

    .line 360
    .local v26, "minCells":I
    const-wide/16 v28, 0x0

    .line 361
    .local v28, "minCellsAt":J
    const/16 v27, 0x0

    .line 362
    .local v27, "minCellsItemCount":I
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    if-ge v0, v12, :cond_e

    .line 363
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 364
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 367
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_c

    .line 362
    :cond_a
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 352
    .end local v10    # "centerSingleExpandedItem":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "needsExpansion":Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_5

    .line 370
    .restart local v10    # "centerSingleExpandedItem":Z
    .restart local v11    # "child":Landroid/view/View;
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    .restart local v30    # "needsExpansion":Z
    :cond_c
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 371
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    .line 372
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 373
    const/16 v27, 0x1

    goto :goto_8

    .line 374
    :cond_d
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 375
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v28, v28, v38

    .line 376
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 381
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_e
    or-long v32, v32, v28

    .line 383
    move/from16 v0, v27

    if-le v0, v8, :cond_14

    .line 416
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_f
    if-nez v16, :cond_19

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_19

    const/16 v31, 0x1

    .line 417
    .local v31, "singleItem":Z
    :goto_9
    if-lez v8, :cond_21

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_21

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_10

    if-nez v31, :cond_10

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_21

    .line 419
    :cond_10
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .line 421
    .local v13, "expandCount":F
    if-nez v31, :cond_12

    .line 423
    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_11

    .line 424
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 425
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_11

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 427
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_11
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_12

    .line 428
    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 429
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_12

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 433
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_12
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_1a

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .line 436
    .local v15, "extraPixels":I
    :goto_a
    const/16 v20, 0x0

    :goto_b
    move/from16 v0, v20

    if-ge v0, v12, :cond_20

    .line 437
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_1b

    .line 436
    :cond_13
    :goto_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    .line 386
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    .end local v31    # "singleItem":Z
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    :cond_14
    add-int/lit8 v26, v26, 0x1

    .line 388
    const/16 v20, 0x0

    :goto_d
    move/from16 v0, v20

    if-ge v0, v12, :cond_18

    .line 389
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 390
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 391
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v28

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_16

    .line 393
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 388
    :cond_15
    :goto_e
    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    .line 397
    :cond_16
    if-eqz v10, :cond_17

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_17

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_17

    .line 399
    sget-boolean v38, Landroid/widget/ActionMenuView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v38, :cond_17

    .line 401
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 405
    :cond_17
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 406
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 407
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 410
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_18
    const/16 v30, 0x1

    .line 411
    goto/16 :goto_6

    .line 416
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_19
    const/16 v31, 0x0

    goto/16 :goto_9

    .line 433
    .restart local v13    # "expandCount":F
    .restart local v31    # "singleItem":Z
    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 439
    .restart local v15    # "extraPixels":I
    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 440
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 441
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_1d

    .line 443
    move-object/from16 v0, v23

    iput v15, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 444
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 445
    if-nez v20, :cond_1c

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_1c

    .line 448
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 450
    :cond_1c
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 451
    :cond_1d
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1e

    .line 452
    move-object/from16 v0, v23

    iput v15, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 453
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 454
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 455
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 460
    :cond_1e
    if-eqz v20, :cond_1f

    .line 461
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 463
    :cond_1f
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v38

    if-eq v0, v1, :cond_13

    .line 464
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_c

    .line 469
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_20
    const/4 v8, 0x0

    .line 473
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    :cond_21
    if-eqz v30, :cond_23

    .line 474
    const/16 v20, 0x0

    :goto_f
    move/from16 v0, v20

    if-ge v0, v12, :cond_23

    .line 475
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 476
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 478
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_22

    .line 474
    :goto_10
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    .line 480
    :cond_22
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .line 481
    .local v35, "width":I
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 486
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v35    # "width":I
    :cond_23
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_24

    .line 487
    move/from16 v19, v25

    .line 490
    :cond_24
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 713
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 823
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 847
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 686
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 688
    .local v0, "params":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 689
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 694
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 699
    if-eqz p1, :cond_2

    .line 700
    instance-of v1, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    check-cast p1, Landroid/widget/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/widget/ActionMenuView$LayoutParams;)V

    .line 703
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 704
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 708
    .end local v0    # "result":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 700
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 708
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 718
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 719
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 720
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 751
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    .line 752
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 753
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 754
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v2, Landroid/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 755
    new-instance v1, Landroid/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 756
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 757
    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 759
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 760
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 763
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v1

    .line 757
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 670
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 671
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 734
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    .line 830
    if-eqz p1, :cond_0

    sget-boolean v3, Landroid/widget/ActionMenuView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_2

    .line 831
    :cond_0
    const/4 v2, 0x0

    .line 842
    :cond_1
    :goto_0
    return v2

    .line 833
    :cond_2
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 834
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 835
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 836
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_3

    instance-of v3, v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_3

    .line 837
    check-cast v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 839
    :cond_3
    if-lez p1, :cond_1

    instance-of v3, v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    .line 840
    check-cast v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 739
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 740
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v0, 0x0

    .line 725
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 728
    :cond_0
    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 157
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 159
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 161
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 164
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 649
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 650
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    .line 651
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 32
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 543
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    move/from16 v30, v0

    if-nez v30, :cond_1

    .line 544
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v6

    .line 549
    .local v6, "childCount":I
    sub-int v30, p5, p3

    div-int/lit8 v15, v30, 0x2

    .line 550
    .local v15, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 551
    .local v7, "dividerWidth":I
    const/16 v18, 0x0

    .line 552
    .local v18, "overflowWidth":I
    const/16 v17, 0x0

    .line 553
    .local v17, "nonOverflowWidth":I
    const/16 v16, 0x0

    .line 554
    .local v16, "nonOverflowCount":I
    sub-int v30, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v30, v30, v31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v31

    sub-int v29, v30, v31

    .line 555
    .local v29, "widthRemaining":I
    const/4 v8, 0x0

    .line 556
    .local v8, "hasOverflow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->isLayoutRtl()Z

    move-result v11

    .line 557
    .local v11, "isLayoutRtl":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_7

    .line 558
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 559
    .local v27, "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 557
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 563
    :cond_2
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/ActionMenuView$LayoutParams;

    .line 564
    .local v19, "p":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5

    .line 565
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 566
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 567
    add-int v18, v18, v7

    .line 570
    :cond_3
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 573
    .local v9, "height":I
    if-eqz v11, :cond_4

    .line 574
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v30

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v12, v30, v31

    .line 575
    .local v12, "l":I
    add-int v20, v12, v18

    .line 580
    .local v20, "r":I
    :goto_3
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 581
    .local v26, "t":I
    add-int v5, v26, v9

    .line 582
    .local v5, "b":I
    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 584
    sub-int v29, v29, v18

    .line 585
    const/4 v8, 0x1

    .line 586
    goto :goto_2

    .line 577
    .end local v5    # "b":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    .end local v26    # "t":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v30, v30, v31

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    sub-int v20, v30, v31

    .line 578
    .restart local v20    # "r":I
    sub-int v12, v20, v18

    .restart local v12    # "l":I
    goto :goto_3

    .line 587
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    :cond_5
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    add-int v21, v30, v31

    .line 588
    .local v21, "size":I
    add-int v17, v17, v21

    .line 589
    sub-int v29, v29, v21

    .line 590
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 591
    add-int v17, v17, v7

    .line 593
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 597
    .end local v19    # "p":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v21    # "size":I
    .end local v27    # "v":Landroid/view/View;
    :cond_7
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v6, v0, :cond_8

    if-nez v8, :cond_8

    .line 599
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 600
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 601
    .local v28, "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 602
    .restart local v9    # "height":I
    sub-int v30, p4, p2

    div-int/lit8 v14, v30, 0x2

    .line 603
    .local v14, "midHorizontal":I
    div-int/lit8 v30, v28, 0x2

    sub-int v12, v14, v30

    .line 604
    .restart local v12    # "l":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 605
    .restart local v26    # "t":I
    add-int v30, v12, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 609
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v14    # "midHorizontal":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v28    # "width":I
    :cond_8
    if-eqz v8, :cond_a

    const/16 v30, 0x0

    :goto_4
    sub-int v22, v16, v30

    .line 610
    .local v22, "spacerCount":I
    const/16 v31, 0x0

    if-lez v22, :cond_b

    div-int v30, v29, v22

    :goto_5
    move/from16 v0, v31

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 612
    .local v23, "spacerSize":I
    if-eqz v11, :cond_d

    .line 613
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v25, v30, v31

    .line 614
    .local v25, "startRight":I
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v6, :cond_0

    .line 615
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 616
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/ActionMenuView$LayoutParams;

    .line 617
    .local v13, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_9

    iget-boolean v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_c

    .line 614
    :cond_9
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 609
    .end local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v22    # "spacerCount":I
    .end local v23    # "spacerSize":I
    .end local v25    # "startRight":I
    .end local v27    # "v":Landroid/view/View;
    :cond_a
    const/16 v30, 0x1

    goto :goto_4

    .line 610
    .restart local v22    # "spacerCount":I
    :cond_b
    const/16 v30, 0x0

    goto :goto_5

    .line 621
    .restart local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v23    # "spacerSize":I
    .restart local v25    # "startRight":I
    .restart local v27    # "v":Landroid/view/View;
    :cond_c
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    sub-int v25, v25, v30

    .line 622
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 623
    .restart local v28    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 624
    .restart local v9    # "height":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 625
    .restart local v26    # "t":I
    sub-int v30, v25, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 626
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v30, v30, v28

    add-int v30, v30, v23

    sub-int v25, v25, v30

    goto :goto_7

    .line 629
    .end local v9    # "height":I
    .end local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v25    # "startRight":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v28    # "width":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v24

    .line 630
    .local v24, "startLeft":I
    const/4 v10, 0x0

    :goto_8
    if-ge v10, v6, :cond_0

    .line 631
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 632
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/ActionMenuView$LayoutParams;

    .line 633
    .restart local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_e

    iget-boolean v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_f

    .line 630
    :cond_e
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 637
    :cond_f
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v24, v24, v30

    .line 638
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 639
    .restart local v28    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 640
    .restart local v9    # "height":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 641
    .restart local v26    # "t":I
    add-int v30, v24, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 642
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v30, v30, v28

    add-int v30, v30, v23

    add-int v24, v24, v30

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 173
    iget-boolean v4, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 174
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 176
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 177
    iput v8, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 182
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 183
    .local v5, "widthSize":I
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 184
    iput v5, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 185
    iget-object v6, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 188
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 189
    .local v1, "childCount":I
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    if-lez v1, :cond_3

    .line 190
    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuView;->onMeasureExactFormat(II)V

    .line 211
    :goto_1
    return-void

    .end local v1    # "childCount":I
    .end local v5    # "widthSize":I
    :cond_2
    move v6, v8

    .line 174
    goto :goto_0

    .line 193
    .restart local v1    # "childCount":I
    .restart local v5    # "widthSize":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_7

    .line 194
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuView$LayoutParams;

    .line 196
    .local v3, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iput v8, v3, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v8, v3, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 198
    instance-of v6, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_5

    .line 199
    iget v6, p0, Landroid/widget/ActionMenuView;->mOriginalStartPadding:I

    iget v7, p0, Landroid/widget/ActionMenuView;->mOriginalEndPadding:I

    invoke-virtual {v0, v6, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 193
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 200
    .restart local v0    # "child":Landroid/view/View;
    :cond_5
    iget-boolean v6, v3, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v6, :cond_4

    .line 201
    instance-of v6, v0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    if-eqz v6, :cond_6

    .line 202
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    iget v9, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    invoke-virtual {v6, v7, v8, v9, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 204
    .restart local v0    # "child":Landroid/view/View;
    :cond_6
    iget v6, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    iget v7, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    invoke-virtual {v0, v6, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 209
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public peekMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method semGetChildCountWithBadge()I
    .locals 4

    .prologue
    .line 219
    iget-object v3, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v3, :cond_1

    .line 220
    const/4 v0, 0x0

    .line 230
    :cond_0
    return v0

    .line 223
    :cond_1
    const/4 v0, 0x0

    .line 224
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 225
    iget-object v3, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 226
    .local v2, "itemImpl":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->semGetBadgeText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 227
    add-int/lit8 v0, v0, 0x1

    .line 224
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method semGetSumOfDigitsInBadges()I
    .locals 4

    .prologue
    .line 239
    iget-object v3, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v3, :cond_1

    .line 240
    const/4 v2, 0x0

    .line 250
    :cond_0
    return v2

    .line 243
    :cond_1
    const/4 v2, 0x0

    .line 244
    .local v2, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 245
    iget-object v3, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v0}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 246
    .local v1, "itemImpl":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 247
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->semGetBadgeText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/ActionMenuView;->getNumericValue(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 244
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z

    .prologue
    .line 852
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 853
    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 771
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 772
    iput-object p2, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 773
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .prologue
    .line 167
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 168
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 659
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 660
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 661
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 681
    iput-boolean p1, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    .line 682
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 121
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 122
    iput p1, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 123
    if-nez p1, :cond_1

    .line 124
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroid/widget/ActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 145
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 146
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 147
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
