.class Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectQuickPopupWindow"
.end annotation


# static fields
.field private static final COPY:I = 0x1

.field private static final DICTIONARY:I = 0x3

.field private static final SELECTALL:I = 0x0

.field private static final SHARE:I = 0x2

.field private static final TRANSLATE:I = 0x4

.field private static final TW_POPUP_TEXT_LAYOUT:I = 0x1090160


# instance fields
.field private MAX_ITEMS_LANDSCAPE_PHONE:I

.field private MAX_ITEMS_LANDSCAPE_TABLET:I

.field private MAX_ITEMS_PORTRAIT_PHONE:I

.field private MAX_ITEMS_PORTRAIT_TABLET:I

.field private final TOTAL_ITEMS:I

.field private mActionBarHeight:I

.field private mContentView:Landroid/view/ViewGroup;

.field private mExtraItemWidth:I

.field private mHandlerHeight:I

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field mIconDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTablet:Z

.field private mItemWidth:I

.field private mMaxShowingMenuCount:I

.field mMenuEnables:[Z

.field private mMenuItemCount:I

.field mMenuTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupBgPaddingHeight:I

.field private mPopupBgPaddingWidth:I

.field private mPopupHeight:I

.field private mPopupMaxWidth:I

.field private mPopupWidth:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field private mStatusbarHeight:I

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/MultiSelectPopupWindow;)V
    .locals 2

    .prologue
    const/4 v1, 0x5

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->TOTAL_ITEMS:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIsTablet:Z

    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuEnables:[Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isTablet()Z
    invoke-static {p1}, Landroid/widget/MultiSelectPopupWindow;->access$000(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIsTablet:Z

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->createPopupWindow()V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->initContentView()V

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->setHeight()V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private calculatePopupWindowWidth()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "currentMenuCount":I
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuEnables:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getPopupWidthLimit()I

    move-result v3

    if-le v2, v3, :cond_2

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    if-ge v0, v2, :cond_1

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mExtraItemWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    :cond_1
    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    return-void

    :cond_2
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getMenuLimit()I

    move-result v2

    if-ge v0, v2, :cond_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private computeLocalPosition()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->measureContent()V

    const/4 v1, 0x2

    new-array v0, v1, [I

    .local v0, "position":[I
    invoke-direct {p0, v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getMultiSelectQuickPopupPosition([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    return-void
.end method

.method private createPopupWindow()V
    .locals 5

    .prologue
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a3d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "bgRes":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, "bgResPadding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingHeight:I

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getMenuLimit()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .local v0, "isPortrait":Z
    :goto_0
    iget-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIsTablet:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->MAX_ITEMS_PORTRAIT_TABLET:I

    :goto_1
    return v1

    .end local v0    # "isPortrait":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "isPortrait":Z
    :cond_1
    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->MAX_ITEMS_LANDSCAPE_TABLET:I

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->MAX_ITEMS_PORTRAIT_PHONE:I

    goto :goto_1

    :cond_3
    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->MAX_ITEMS_LANDSCAPE_PHONE:I

    goto :goto_1
.end method

.method private getMultiSelectQuickPopupPosition([I)V
    .locals 38
    .param p1, "position"    # [I

    .prologue
    if-nez p1, :cond_0

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 p1, v0

    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    .local v12, "menuItemCount":I
    const/4 v13, 0x0

    .local v13, "menuLimit":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_e

    const/4 v13, 0x4

    :goto_0
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v30

    .local v30, "text":Ljava/lang/CharSequence;
    if-nez v30, :cond_1

    const-string v34, "MultiSelectPopupWindow"

    const-string v35, "getTextFormultiSelection() text is null"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .local v18, "screen":[I
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v33, v0

    .local v33, "window":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    const/16 v34, 0x0

    aget v34, v18, v34

    const/16 v35, 0x0

    aget v35, v33, v35

    sub-int v16, v34, v35

    .local v16, "parentViewPositionX":I
    const/16 v34, 0x1

    aget v34, v18, v34

    const/16 v35, 0x1

    aget v35, v33, v35

    sub-int v17, v34, v35

    .local v17, "parentViewPositionY":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v32

    .local v32, "viewportToContentVerticalOffset":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v31

    .local v31, "viewportToContentHorizontalOffset":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    .local v22, "screenWidth":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    .local v20, "screenHeight":I
    move/from16 v8, v20

    .local v8, "fullScreenHeight":I
    const/16 v21, 0x0

    .local v21, "screenTop":I
    move/from16 v19, v20

    .local v19, "screenBottom":I
    invoke-static/range {v30 .. v30}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v24

    .local v24, "selStart":I
    invoke-static/range {v30 .. v30}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v23

    .local v23, "selEnd":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v26

    .local v26, "startLine":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .local v4, "endLine":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v34

    const/16 v35, 0x1

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v28, v34, v32

    .local v28, "startLineTop":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v34

    const/16 v35, 0x1

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v27, v34, v32

    .local v27, "startLineBottom":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v34

    const/16 v35, 0x1

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v6, v34, v32

    .local v6, "endLineTop":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v34

    const/16 v35, 0x1

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v5, v34, v32

    .local v5, "endLineBottom":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v34

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    const/16 v35, 0x0

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v29, v34, v31

    .local v29, "startX":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v34

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    const/16 v35, 0x0

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v7, v34, v31

    .local v7, "endX":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/text/Layout;->getWidth()I

    move-result v11

    .local v11, "maxWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mActionBarHeight:I

    .local v2, "actionBarHeight":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHandlerHeight:I

    .local v9, "handlerHeight":I
    const/4 v10, 0x1

    .local v10, "isStatusBarVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingHeight:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupHeight:I

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/view/IWindowManager;->isStatusBarVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :goto_1
    if-nez v10, :cond_2

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mStatusbarHeight:I

    :cond_2
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->isMultiWindow()Z

    move-result v34

    if-eqz v34, :cond_6

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    const-string v35, "multiwindow_facade"

    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .local v15, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v25

    .local v25, "stackBoxBound":Landroid/graphics/Rect;
    if-eqz v25, :cond_3

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v20

    :cond_3
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v34

    if-eqz v34, :cond_4

    const/16 v21, 0x0

    :cond_4
    const/16 v34, 0x1

    aget v34, v18, v34

    move/from16 v0, v34

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    const/16 v34, 0x1

    aget v34, v18, v34

    move/from16 v0, v34

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    :cond_5
    const/16 v34, 0x1

    aget v34, v18, v34

    if-lez v34, :cond_6

    const/16 v34, 0x1

    aget v34, v18, v34

    move/from16 v0, v34

    if-ge v0, v8, :cond_6

    const/16 v21, 0x0

    move/from16 v19, v8

    .end local v15    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v25    # "stackBoxBound":Landroid/graphics/Rect;
    :cond_6
    move/from16 v0, v26

    if-ne v0, v4, :cond_f

    const/16 v34, 0x0

    sub-int v35, v7, v29

    div-int/lit8 v35, v35, 0x2

    add-int v35, v35, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v35, v35, v36

    aput v35, p1, v34

    :goto_2
    const/16 v34, 0x0

    aget v34, p1, v34

    if-gez v34, :cond_11

    const/16 v34, 0x0

    aget v34, p1, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v34

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_10

    const/16 v34, 0x0

    aget v35, p1, v34

    const/16 v36, 0x0

    aget v36, p1, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(I)I

    move-result v36

    sub-int v36, v36, v16

    add-int v35, v35, v36

    aput v35, p1, v34

    :cond_7
    :goto_3
    const/16 v34, 0x0

    aget v34, p1, v34

    if-gez v34, :cond_8

    const/16 v34, 0x0

    const/16 v35, 0x0

    aput v35, p1, v34

    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    const/16 v34, 0x0

    aget v35, p1, v34

    const/16 v36, 0x0

    aget v36, p1, v36

    add-int v36, v36, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    move/from16 v37, v0

    add-int v36, v36, v37

    sub-int v36, v36, v22

    sub-int v35, v35, v36

    aput v35, p1, v34

    :cond_8
    :goto_4
    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    sub-int v35, v28, v35

    aput v35, p1, v34

    const/16 v34, 0x1

    aget v34, p1, v34

    add-int v34, v34, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mStatusbarHeight:I

    move/from16 v35, v0

    add-int v35, v35, v2

    add-int v35, v35, v21

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_9

    const/16 v34, 0x1

    add-int v35, v5, v9

    aput v35, p1, v34

    :cond_9
    const/16 v34, 0x1

    aget v34, p1, v34

    add-int v34, v34, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    move/from16 v0, v19

    if-le v5, v0, :cond_12

    move/from16 v14, v19

    .local v14, "middlePosition":I
    :goto_5
    if-gez v27, :cond_a

    const/16 v27, 0x0

    :cond_a
    add-int v34, v27, v9

    sub-int v34, v14, v34

    div-int/lit8 v14, v34, 0x2

    add-int v34, v27, v9

    sub-int v34, v5, v34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_13

    const/16 v34, 0x1

    add-int v35, v27, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupHeight:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v36, v14, v36

    add-int v35, v35, v36

    aput v35, p1, v34

    .end local v14    # "middlePosition":I
    :cond_b
    :goto_6
    const/16 v34, 0x1

    aget v34, p1, v34

    add-int v34, v34, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move/from16 v1, v19

    if-gt v0, v1, :cond_c

    const/16 v34, 0x1

    aget v34, p1, v34

    add-int v34, v34, v17

    move/from16 v0, v34

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    :cond_c
    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    sub-int v35, v19, v35

    aput v35, p1, v34

    const/16 v34, 0x1

    aget v35, p1, v34

    sub-int v35, v35, v21

    aput v35, p1, v34

    :cond_d
    return-void

    .end local v2    # "actionBarHeight":I
    .end local v4    # "endLine":I
    .end local v5    # "endLineBottom":I
    .end local v6    # "endLineTop":I
    .end local v7    # "endX":I
    .end local v8    # "fullScreenHeight":I
    .end local v9    # "handlerHeight":I
    .end local v10    # "isStatusBarVisible":Z
    .end local v11    # "maxWidth":I
    .end local v16    # "parentViewPositionX":I
    .end local v17    # "parentViewPositionY":I
    .end local v18    # "screen":[I
    .end local v19    # "screenBottom":I
    .end local v20    # "screenHeight":I
    .end local v21    # "screenTop":I
    .end local v22    # "screenWidth":I
    .end local v23    # "selEnd":I
    .end local v24    # "selStart":I
    .end local v26    # "startLine":I
    .end local v27    # "startLineBottom":I
    .end local v28    # "startLineTop":I
    .end local v29    # "startX":I
    .end local v30    # "text":Ljava/lang/CharSequence;
    .end local v31    # "viewportToContentHorizontalOffset":I
    .end local v32    # "viewportToContentVerticalOffset":I
    .end local v33    # "window":[I
    :cond_e
    const/4 v13, 0x6

    goto/16 :goto_0

    .restart local v2    # "actionBarHeight":I
    .restart local v4    # "endLine":I
    .restart local v5    # "endLineBottom":I
    .restart local v6    # "endLineTop":I
    .restart local v7    # "endX":I
    .restart local v8    # "fullScreenHeight":I
    .restart local v9    # "handlerHeight":I
    .restart local v10    # "isStatusBarVisible":Z
    .restart local v11    # "maxWidth":I
    .restart local v16    # "parentViewPositionX":I
    .restart local v17    # "parentViewPositionY":I
    .restart local v18    # "screen":[I
    .restart local v19    # "screenBottom":I
    .restart local v20    # "screenHeight":I
    .restart local v21    # "screenTop":I
    .restart local v22    # "screenWidth":I
    .restart local v23    # "selEnd":I
    .restart local v24    # "selStart":I
    .restart local v26    # "startLine":I
    .restart local v27    # "startLineBottom":I
    .restart local v28    # "startLineTop":I
    .restart local v29    # "startX":I
    .restart local v30    # "text":Ljava/lang/CharSequence;
    .restart local v31    # "viewportToContentHorizontalOffset":I
    .restart local v32    # "viewportToContentVerticalOffset":I
    .restart local v33    # "window":[I
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    const-string v34, "MultiSelectPopupWindow"

    const-string v35, "Remote exception while to check isStatusBarVisible"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_f
    const/16 v34, 0x0

    const/16 v35, 0x0

    aget v35, v33, v35

    div-int/lit8 v36, v11, 0x2

    add-int v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v35, v35, v36

    aput v35, p1, v34

    goto/16 :goto_2

    :cond_10
    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    const/16 v34, 0x0

    aget v35, p1, v34

    const/16 v36, 0x0

    aget v36, p1, v36

    add-int v36, v36, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    move/from16 v37, v0

    add-int v36, v36, v37

    sub-int v36, v36, v22

    sub-int v35, v35, v36

    aput v35, p1, v34

    goto/16 :goto_3

    :cond_11
    const/16 v34, 0x0

    aget v34, p1, v34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    add-int v34, v34, v16

    move/from16 v0, v34

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    const/16 v34, 0x0

    aget v35, p1, v34

    const/16 v36, 0x0

    aget v36, p1, v36

    add-int v36, v36, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    move/from16 v37, v0

    add-int v36, v36, v37

    sub-int v36, v36, v22

    sub-int v35, v35, v36

    aput v35, p1, v34

    goto/16 :goto_4

    :cond_12
    move v14, v5

    goto/16 :goto_5

    .restart local v14    # "middlePosition":I
    :cond_13
    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    sub-int v35, v19, v35

    aput v35, p1, v34

    goto/16 :goto_6
.end method

.method private getPopupWidthLimit()I
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getMenuLimit()I

    move-result v0

    .local v0, "items":I
    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    mul-int/2addr v1, v0

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupMaxWidth:I

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupMaxWidth:I

    return v1
.end method

.method private getTextOffset()I
    .locals 3

    .prologue
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const-string v1, "MultiSelectPopupWindow"

    const-string v2, "getTextFormultiSelection() text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private initContentView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x2

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->MAX_ITEMS_PORTRAIT_PHONE:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->MAX_ITEMS_LANDSCAPE_PHONE:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00de

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->MAX_ITEMS_PORTRAIT_TABLET:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->MAX_ITEMS_LANDSCAPE_TABLET:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050254

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105025e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mExtraItemWidth:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/LinearLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput-object v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/HorizontalScrollView;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v7}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080a41

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080a38

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080a42

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080a3a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080a43

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_0

    const v4, 0x1090160

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "t":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8, v4, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "t":Landroid/widget/TextView;
    :cond_0
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-void
.end method

.method private setHeight()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Landroid/R$styleable;->ActionBar:[I

    const v5, 0x10102ce

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mActionBarHeight:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHandlerHeight:I

    const/high16 v2, 0x41c80000    # 25.0f

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mStatusbarHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private updateMultiSelectQuickPopupPosition()V
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    new-array v4, v5, [I

    .local v4, "window":[I
    new-array v3, v5, [I

    .local v3, "screen":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->getLocationInWindow([I)V

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    aget v5, v3, v9

    aget v6, v4, v9

    sub-int v1, v5, v6

    .local v1, "gapX":I
    aget v5, v3, v7

    aget v6, v4, v7

    sub-int v2, v5, v6

    .local v2, "gapY":I
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_1

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eq v5, v6, :cond_1

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    :cond_0
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    :cond_1
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v6, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    return-void

    :cond_2
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_4

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    :cond_3
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    :try_start_0
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v9, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    const-string v5, "MultiSelectPopupWindow"

    const-string v6, "showAtLocation occur BadTokenException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->access$600(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->removeSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->measure(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .local v0, "id":I
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_1

    const v0, 0x102005d

    :cond_0
    :goto_0
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->onMultiSelectMenuItem(I)Z

    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    const v0, 0x102005e

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_3

    const v0, 0x1020061

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_4

    const v0, 0x102005f

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const v0, 0x1020060

    goto :goto_0
.end method

.method public refreshResource()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x104000d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1040001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1040465

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x10409ce

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x10409d0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->setHeight()V

    return-void
.end method

.method public relocateMultiSelectQuickPopupWindow(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    if-ltz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->computeLocalPosition()V

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->calculatePopupWindowWidth()V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->updateMultiSelectQuickPopupPosition()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->refreshResource()V

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuEnables:[Z

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isSelectAllEnable()Z
    invoke-static {v2}, Landroid/widget/MultiSelectPopupWindow;->access$200(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v2

    aput-boolean v2, v1, v4

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuEnables:[Z

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isShareViaEnable()Z
    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->access$300(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v3

    aput-boolean v3, v1, v2

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuEnables:[Z

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isDictionaryEnable()Z
    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->access$400(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v3

    aput-boolean v3, v1, v2

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuEnables:[Z

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isTranslatorEnable()Z
    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->access$500(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v3

    aput-boolean v3, v1, v2

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuEnables:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->calculatePopupWindowWidth()V

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->computeLocalPosition()V

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v1}, Landroid/widget/MultiSelectPopupWindow;->access$600(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->addSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;Z)V

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->updateMultiSelectQuickPopupPosition()V

    return-void
.end method

.method public updatePosition(IIZZ)V
    .locals 2
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getTextOffset()I

    move-result v1

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/MultiSelectPopupWindow;->access$700(Landroid/widget/MultiSelectPopupWindow;I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->computeLocalPosition()V

    :cond_0
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->updateMultiSelectQuickPopupPosition()V

    :cond_1
    return-void
.end method
