.class public Landroid/widget/Spinner;
.super Landroid/widget/AbsSpinner;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Spinner$DropdownPopup;,
        Landroid/widget/Spinner$DialogPopup;,
        Landroid/widget/Spinner$SpinnerPopup;,
        Landroid/widget/Spinner$DropDownAdapter;,
        Landroid/widget/Spinner$SavedState;
    }
.end annotation


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field public static final MODE_DIALOG:I = 0x0

.field public static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Spinner"


# instance fields
.field private mArchivedBackground:Landroid/graphics/drawable/Drawable;

.field private mDisableChildrenWhenDisabled:Z

.field mDropDownWidth:I

.field private mDropdownHorizontalOffset:I

.field private mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

.field private mGravity:I

.field private mIsThemeDeviceDefaultFamily:Z

.field private mPopup:Landroid/widget/Spinner$SpinnerPopup;

.field private mPopupContext:Landroid/content/Context;

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    const v1, 0x1010081

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 153
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 168
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .prologue
    .line 188
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "mode"    # I

    .prologue
    .line 213
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILandroid/content/res/Resources$Theme;)V

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILandroid/content/res/Resources$Theme;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "mode"    # I
    .param p6, "popupTheme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 246
    invoke-direct/range {p0 .. p4}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 111
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 114
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Spinner;->mIsThemeDeviceDefaultFamily:Z

    .line 116
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/Spinner;->mDropdownHorizontalOffset:I

    .line 248
    sget-object v2, Lcom/android/internal/R$styleable;->Spinner:[I

    move/from16 v0, p4

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 251
    .local v7, "a":Landroid/content/res/TypedArray;
    if-eqz p6, :cond_2

    .line 252
    new-instance v2, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p6

    invoke-direct {v2, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v2, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    .line 262
    :goto_0
    const/4 v2, -0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_0

    .line 263
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p5

    .line 267
    :cond_0
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 268
    .local v8, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11600bd

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v8, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 269
    iget v2, v8, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Landroid/widget/Spinner;->mIsThemeDeviceDefaultFamily:Z

    .line 270
    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Spinner;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    .line 273
    packed-switch p5, :pswitch_data_0

    .line 320
    :goto_2
    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Spinner;->mGravity:I

    .line 321
    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    .line 324
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 328
    iget-object v2, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_1

    .line 329
    iget-object v2, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 330
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 332
    :cond_1
    return-void

    .line 254
    .end local v8    # "outValue":Landroid/util/TypedValue;
    :cond_2
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 255
    .local v11, "popupThemeResId":I
    if-eqz v11, :cond_3

    .line 256
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 258
    :cond_3
    iput-object p1, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 269
    .end local v11    # "popupThemeResId":I
    .restart local v8    # "outValue":Landroid/util/TypedValue;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 275
    :pswitch_0
    new-instance v2, Landroid/widget/Spinner$DialogPopup;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/Spinner$DialogPopup;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner$1;)V

    iput-object v2, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    .line 276
    iget-object v2, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    const/4 v3, 0x3

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 281
    :pswitch_1
    new-instance v1, Landroid/widget/Spinner$DropdownPopup;

    iget-object v3, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/widget/Spinner$DropdownPopup;-><init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 283
    .local v1, "popup":Landroid/widget/Spinner$DropdownPopup;
    iget-object v2, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->Spinner:[I

    move/from16 v0, p4

    invoke-virtual {v2, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 285
    .local v9, "pa":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    const/4 v3, -0x2

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Spinner;->mDropDownWidth:I

    .line 287
    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    const/4 v2, 0x3

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 293
    sget-object v2, Lcom/android/internal/R$styleable;->ListPopupWindow:[I

    move/from16 v0, p4

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 295
    .local v10, "pb":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Spinner;->mDropdownHorizontalOffset:I

    .line 298
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 301
    iput-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    .line 302
    new-instance v2, Landroid/widget/Spinner$1;

    invoke-direct {v2, p0, p0, v1}, Landroid/widget/Spinner$1;-><init>(Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner$DropdownPopup;)V

    iput-object v2, p0, Landroid/widget/Spinner;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    goto/16 :goto_2

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$100(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Spinner;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Spinner;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/Spinner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Spinner;

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/widget/Spinner;->mIsThemeDeviceDefaultFamily:Z

    return v0
.end method

.method static synthetic access$600(Landroid/widget/Spinner;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Spinner;

    .prologue
    .line 75
    iget v0, p0, Landroid/widget/Spinner;->mDropdownHorizontalOffset:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/Spinner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Spinner;

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/widget/Spinner;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method private changeButtonBackground()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 655
    iget-boolean v2, p0, Landroid/widget/Spinner;->mIsThemeDeviceDefaultFamily:Z

    if-nez v2, :cond_0

    .line 664
    :goto_0
    return-void

    .line 657
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 659
    .local v0, "show":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 660
    const v1, 0x1080a16

    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    goto :goto_0

    .end local v0    # "show":Z
    :cond_1
    move v0, v1

    .line 657
    goto :goto_1

    .line 662
    .restart local v0    # "show":Z
    :cond_2
    iget-object v1, p0, Landroid/widget/Spinner;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private makeView(IZ)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "addChild"    # Z

    .prologue
    .line 755
    iget-boolean v2, p0, Landroid/widget/Spinner;->mDataChanged:Z

    if-nez v2, :cond_0

    .line 756
    iget-object v2, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 757
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 759
    invoke-direct {p0, v0, p2}, Landroid/widget/Spinner;->setUpChild(Landroid/view/View;Z)V

    move-object v1, v0

    .line 771
    .end local v0    # "child":Landroid/view/View;
    .local v1, "child":Landroid/view/View;
    :goto_0
    return-object v1

    .line 766
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 769
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Landroid/widget/Spinner;->setUpChild(Landroid/view/View;Z)V

    move-object v1, v0

    .line 771
    .end local v0    # "child":Landroid/view/View;
    .restart local v1    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private semGetCurrentContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 7
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 947
    if-nez p1, :cond_1

    move v3, v5

    .line 973
    :cond_0
    :goto_0
    return v3

    .line 951
    :cond_1
    const/4 v3, 0x0

    .line 952
    .local v3, "width":I
    const/4 v2, 0x0

    .line 953
    .local v2, "itemView":Landroid/view/View;
    const/4 v1, 0x0

    .line 954
    .local v1, "itemType":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 955
    .local v4, "widthMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 958
    .local v0, "heightMeasureSpec":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-interface {p1, v5, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 959
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-nez v5, :cond_2

    .line 960
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 964
    :cond_2
    invoke-virtual {v2, v4, v0}, Landroid/view/View;->measure(II)V

    .line 965
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 968
    if-eqz p2, :cond_0

    .line 969
    iget-object v5, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 970
    iget-object v5, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method private setUpChild(Landroid/view/View;Z)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "addChild"    # Z

    .prologue
    .line 785
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 786
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_0

    .line 787
    invoke-virtual {p0}, Landroid/widget/Spinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 790
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v6}, Landroid/widget/Spinner;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 792
    invoke-virtual {p0}, Landroid/widget/Spinner;->hasFocus()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 793
    iget-boolean v8, p0, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v8, :cond_1

    .line 794
    invoke-virtual {p0}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 798
    :cond_1
    iget v8, p0, Landroid/widget/Spinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 800
    .local v1, "childHeightSpec":I
    iget v8, p0, Landroid/widget/Spinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 804
    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 810
    iget-object v8, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 813
    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 815
    .local v0, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 816
    .local v7, "width":I
    const/4 v2, 0x0

    .line 817
    .local v2, "childLeft":I
    add-int v3, v2, v7

    .line 819
    .local v3, "childRight":I
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 821
    if-nez p2, :cond_2

    .line 822
    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->removeViewInLayout(Landroid/view/View;)V

    .line 824
    :cond_2
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 863
    const-class v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 574
    const/4 v0, 0x0

    .line 576
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/Spinner;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 577
    invoke-virtual {p0, v4}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 583
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 584
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 585
    .local v1, "childBaseline":I
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    .line 587
    .end local v1    # "childBaseline":I
    :cond_1
    return v2

    .line 578
    :cond_2
    iget-object v3, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 579
    invoke-direct {p0, v4, v4}, Landroid/widget/Spinner;->makeView(IZ)Landroid/view/View;

    move-result-object v0

    .line 580
    iget-object v3, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, v4, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Landroid/widget/Spinner;->mDropDownWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Landroid/widget/Spinner;->mGravity:I

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method layout(IZ)V
    .locals 10
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v9, 0x0

    .line 688
    iget-object v7, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 689
    .local v1, "childrenLeft":I
    iget v7, p0, Landroid/widget/Spinner;->mRight:I

    iget v8, p0, Landroid/widget/Spinner;->mLeft:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, v7, v8

    .line 691
    .local v2, "childrenWidth":I
    iget-boolean v7, p0, Landroid/widget/Spinner;->mDataChanged:Z

    if-eqz v7, :cond_0

    .line 692
    invoke-virtual {p0}, Landroid/widget/Spinner;->handleDataChanged()V

    .line 696
    :cond_0
    iget v7, p0, Landroid/widget/Spinner;->mItemCount:I

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v7, :cond_2

    .line 697
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Spinner;->resetList()V

    .line 740
    :goto_0
    return-void

    .line 701
    :cond_2
    iget v7, p0, Landroid/widget/Spinner;->mNextSelectedPosition:I

    if-ltz v7, :cond_3

    .line 702
    iget v7, p0, Landroid/widget/Spinner;->mNextSelectedPosition:I

    invoke-virtual {p0, v7}, Landroid/widget/Spinner;->setSelectedPositionInt(I)V

    .line 705
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Spinner;->recycleAllViews()V

    .line 708
    invoke-virtual {p0}, Landroid/widget/Spinner;->removeAllViewsInLayout()V

    .line 711
    iget v7, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    iput v7, p0, Landroid/widget/Spinner;->mFirstPosition:I

    .line 713
    iget-object v7, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v7, :cond_4

    .line 714
    iget v7, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Landroid/widget/Spinner;->makeView(IZ)Landroid/view/View;

    move-result-object v4

    .line 715
    .local v4, "sel":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 716
    .local v6, "width":I
    move v5, v1

    .line 717
    .local v5, "selectedOffset":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getLayoutDirection()I

    move-result v3

    .line 718
    .local v3, "layoutDirection":I
    iget v7, p0, Landroid/widget/Spinner;->mGravity:I

    invoke-static {v7, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 719
    .local v0, "absoluteGravity":I
    and-int/lit8 v7, v0, 0x7

    sparse-switch v7, :sswitch_data_0

    .line 727
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 731
    .end local v0    # "absoluteGravity":I
    .end local v3    # "layoutDirection":I
    .end local v4    # "sel":Landroid/view/View;
    .end local v5    # "selectedOffset":I
    .end local v6    # "width":I
    :cond_4
    iget-object v7, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v7}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 733
    invoke-virtual {p0}, Landroid/widget/Spinner;->invalidate()V

    .line 735
    invoke-virtual {p0}, Landroid/widget/Spinner;->checkSelectionChanged()V

    .line 737
    iput-boolean v9, p0, Landroid/widget/Spinner;->mDataChanged:Z

    .line 738
    iput-boolean v9, p0, Landroid/widget/Spinner;->mNeedSync:Z

    .line 739
    iget v7, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    invoke-virtual {p0, v7}, Landroid/widget/Spinner;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 721
    .restart local v0    # "absoluteGravity":I
    .restart local v3    # "layoutDirection":I
    .restart local v4    # "sel":Landroid/view/View;
    .restart local v5    # "selectedOffset":I
    .restart local v6    # "width":I
    :sswitch_0
    div-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v1

    div-int/lit8 v8, v6, 0x2

    sub-int v5, v7, v8

    .line 722
    goto :goto_1

    .line 724
    :sswitch_1
    add-int v7, v1, v2

    sub-int v5, v7, v6

    goto :goto_1

    .line 719
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 13
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 900
    if-nez p1, :cond_1

    .line 901
    const/4 v8, 0x0

    .line 940
    :cond_0
    :goto_0
    return v8

    .line 904
    :cond_1
    const/4 v8, 0x0

    .line 905
    .local v8, "width":I
    const/4 v5, 0x0

    .line 906
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 907
    .local v4, "itemType":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v9

    .line 909
    .local v9, "widthMeasureSpec":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v2

    .line 914
    .local v2, "heightMeasureSpec":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 915
    .local v7, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    add-int/lit8 v11, v7, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 916
    .local v1, "end":I
    sub-int v0, v1, v7

    .line 917
    .local v0, "count":I
    const/4 v10, 0x0

    rsub-int/lit8 v11, v0, 0xf

    sub-int v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 918
    move v3, v7

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 919
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v6

    .line 920
    .local v6, "positionType":I
    if-eq v6, v4, :cond_2

    .line 921
    move v4, v6

    .line 922
    const/4 v5, 0x0

    .line 924
    :cond_2
    invoke-interface {p1, v3, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 925
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_3

    .line 926
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 930
    :cond_3
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 931
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 918
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 935
    .end local v6    # "positionType":I
    :cond_4
    if-eqz p2, :cond_0

    .line 936
    iget-object v10, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 937
    iget-object v10, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 857
    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 858
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 859
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 593
    invoke-super {p0}, Landroid/widget/AbsSpinner;->onDetachedFromWindow()V

    .line 595
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 598
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 869
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 871
    iget-object v0, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 872
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 874
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 674
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Spinner;->mInLayout:Z

    .line 676
    invoke-virtual {p0, v1, v1}, Landroid/widget/Spinner;->layout(IZ)V

    .line 677
    iput-boolean v1, p0, Landroid/widget/Spinner;->mInLayout:Z

    .line 678
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 630
    invoke-direct {p0}, Landroid/widget/Spinner;->changeButtonBackground()V

    .line 632
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onMeasure(II)V

    .line 633
    iget-object v2, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    .line 634
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v1

    .line 639
    .local v1, "measuredWidth":I
    iget-boolean v2, p0, Landroid/widget/Spinner;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 640
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/widget/Spinner;->semGetCurrentContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 644
    .local v0, "contentWidth":I
    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/Spinner;->setMeasuredDimension(II)V

    .line 648
    .end local v0    # "contentWidth":I
    .end local v1    # "measuredWidth":I
    :cond_0
    return-void

    .line 642
    .restart local v1    # "measuredWidth":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .restart local v0    # "contentWidth":I
    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 985
    move-object v1, p1

    check-cast v1, Landroid/widget/Spinner$SavedState;

    .line 987
    .local v1, "ss":Landroid/widget/Spinner$SavedState;
    invoke-virtual {v1}, Landroid/widget/Spinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/widget/AbsSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 989
    iget-boolean v3, v1, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    if-eqz v3, :cond_0

    .line 990
    invoke-virtual {p0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 991
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_0

    .line 992
    new-instance v0, Landroid/widget/Spinner$2;

    invoke-direct {v0, p0}, Landroid/widget/Spinner$2;-><init>(Landroid/widget/Spinner;)V

    .line 1004
    .local v0, "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1007
    .end local v0    # "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 978
    new-instance v0, Landroid/widget/Spinner$SavedState;

    invoke-super {p0}, Landroid/widget/AbsSpinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Spinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 979
    .local v0, "ss":Landroid/widget/Spinner$SavedState;
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    .line 980
    return-object v0

    .line 979
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 621
    iget-object v0, p0, Landroid/widget/Spinner;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Spinner;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    invoke-virtual {v0, p0, p1}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    const/4 v0, 0x1

    .line 625
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 4

    .prologue
    .line 828
    invoke-super {p0}, Landroid/widget/AbsSpinner;->performClick()Z

    move-result v0

    .line 830
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 831
    const/4 v0, 0x1

    .line 833
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 834
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->playSoundEffect(I)V

    .line 835
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextDirection()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextAlignment()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/widget/Spinner$SpinnerPopup;->show(II)V

    .line 839
    :cond_0
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 74
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 5
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 553
    iget-object v2, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-nez v2, :cond_0

    .line 554
    iput-object p1, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 570
    :goto_0
    return-void

    .line 558
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 560
    iget-object v2, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 562
    iget-object v2, p0, Landroid/widget/Spinner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 563
    .local v1, "targetSdkVersion":I
    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getViewTypeCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 565
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Spinner adapter view type count must be 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 568
    :cond_1
    iget-object v2, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    if-nez v2, :cond_2

    iget-object v0, p0, Landroid/widget/Spinner;->mContext:Landroid/content/Context;

    .line 569
    .local v0, "popupContext":Landroid/content/Context;
    :goto_1
    iget-object v2, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    new-instance v3, Landroid/widget/Spinner$DropDownAdapter;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v2, v3}, Landroid/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 568
    .end local v0    # "popupContext":Landroid/content/Context;
    :cond_2
    iget-object v0, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_1
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 414
    iput p1, p0, Landroid/widget/Spinner;->mDropdownHorizontalOffset:I

    .line 415
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setHorizontalOffset(I)V

    .line 416
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 390
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setVerticalOffset(I)V

    .line 391
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 2
    .param p1, "pixels"    # I

    .prologue
    .line 462
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    instance-of v0, v0, Landroid/widget/Spinner$DropdownPopup;

    if-nez v0, :cond_0

    .line 463
    const-string v0, "Spinner"

    const-string v1, "Cannot set dropdown width for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_0
    return-void

    .line 466
    :cond_0
    iput p1, p0, Landroid/widget/Spinner;->mDropDownWidth:I

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 486
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setEnabled(Z)V

    .line 487
    iget-boolean v2, p0, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v2, :cond_0

    .line 488
    invoke-virtual {p0}, Landroid/widget/Spinner;->getChildCount()I

    move-result v0

    .line 489
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 490
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 504
    iget v0, p0, Landroid/widget/Spinner;->mGravity:I

    if-eq v0, p1, :cond_1

    .line 505
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 506
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 508
    :cond_0
    iput p1, p0, Landroid/widget/Spinner;->mGravity:I

    .line 509
    invoke-virtual {p0}, Landroid/widget/Spinner;->requestLayout()V

    .line 511
    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 609
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 616
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 617
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 350
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    instance-of v0, v0, Landroid/widget/Spinner$DropdownPopup;

    if-nez v0, :cond_0

    .line 351
    const-string v0, "Spinner"

    const-string/jumbo v1, "setPopupBackgroundDrawable: incompatible spinner mode; ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 366
    invoke-virtual {p0}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .prologue
    .line 881
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 882
    return-void
.end method

.method public setPromptId(I)V
    .locals 1
    .param p1, "promptId"    # I

    .prologue
    .line 889
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 890
    return-void
.end method

.method public twDismissSpinnerPopup()V
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 853
    :cond_0
    return-void
.end method

.method public twSetDropDownHeight(I)V
    .locals 2
    .param p1, "pixels"    # I

    .prologue
    .line 440
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    instance-of v0, v0, Landroid/widget/Spinner$DropdownPopup;

    if-nez v0, :cond_0

    .line 441
    const-string v0, "Spinner"

    const-string v1, "Cannot set dropdown height for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setHeight(I)V

    goto :goto_0
.end method
