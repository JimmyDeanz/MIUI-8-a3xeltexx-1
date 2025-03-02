.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$ButtonBarLayout;,
        Lcom/android/internal/app/AlertController$CheckedItemAdapter;,
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mThemeIsDeviceDefault:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 106
    iput v5, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 118
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 127
    iput v5, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 131
    iput-boolean v5, p0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    .line 133
    new-instance v2, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 190
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 191
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 192
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 193
    new-instance v2, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v2, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 195
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 196
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11600bd

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 197
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 198
    iput-boolean v4, p0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    .line 203
    :goto_0
    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v4, 0x101005d

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 206
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0xa

    const v3, 0x1090026

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 208
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    .line 210
    const/16 v2, 0xc

    const v3, 0x10900f8

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 213
    const/16 v2, 0xd

    const v3, 0x1090013

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 216
    const/16 v2, 0xe

    const v3, 0x1090012

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 219
    const/16 v2, 0xf

    const v3, 0x1090011

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 223
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    return-void

    .line 200
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/internal/app/AlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/AlertController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return v0
.end method

.method private adjustTwButtonsPadding()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 629
    const/4 v2, 0x0

    .line 630
    .local v2, "btnCount":I
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_0

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_0

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_0

    .line 631
    const/4 v2, 0x3

    .line 634
    :cond_0
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050152

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 635
    .local v7, "btnTextSizeForThreeBtn":I
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050151

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 636
    .local v6, "btnTextSize":I
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050153

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 637
    .local v3, "btnPaddingHorizontal":I
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050154

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 638
    .local v4, "btnPaddingHorizontalForThreeBtn":I
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050155

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 639
    .local v5, "btnPaddingVertical":I
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105014d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 640
    .local v1, "btnBarPaddingHorizontal":I
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105014e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 642
    .local v0, "btnBarPaddingBottom":I
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x1020362

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 644
    .local v8, "buttonPanel":Landroid/view/View;
    const/4 v9, 0x3

    if-ne v2, v9, :cond_1

    .line 645
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v9, v4, v5, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 646
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    int-to-float v10, v7

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 647
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9, v4, v5, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 648
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    int-to-float v10, v7

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 649
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v9, v4, v5, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 650
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    int-to-float v10, v7

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 651
    sub-int v9, v3, v4

    add-int/2addr v9, v1

    sub-int v10, v3, v4

    add-int/2addr v10, v1

    invoke-virtual {v8, v9, v11, v10, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 652
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v9, v7}, Lcom/android/internal/app/AlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 653
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v9, v7}, Lcom/android/internal/app/AlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 654
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v9, v7}, Lcom/android/internal/app/AlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 673
    :goto_0
    return-void

    .line 656
    :cond_1
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_2

    .line 657
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v9, v3, v5, v3, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 658
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    int-to-float v10, v6

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 659
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v9, v6}, Lcom/android/internal/app/AlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 661
    :cond_2
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_3

    .line 662
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9, v3, v5, v3, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 663
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    int-to-float v10, v6

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 664
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v9, v6}, Lcom/android/internal/app/AlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 666
    :cond_3
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_4

    .line 667
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v9, v3, v5, v3, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 668
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    int-to-float v10, v6

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 669
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v9, v6}, Lcom/android/internal/app/AlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 671
    :cond_4
    invoke-virtual {v8, v1, v11, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    :goto_0
    return v2

    .line 231
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 232
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 235
    check-cast v1, Landroid/view/ViewGroup;

    .line 236
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 237
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 238
    add-int/lit8 v0, v0, -0x1

    .line 239
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 240
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 245
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v5, 0x0

    .line 853
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 854
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 855
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 856
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020363

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 858
    .local v0, "leftSpacer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 861
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020364

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 862
    .local v2, "rightSpacer":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 863
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 865
    :cond_1
    return-void
.end method

.method private checkMaxFontScale(Landroid/widget/TextView;I)V
    .locals 5
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "baseSize"    # I

    .prologue
    .line 990
    const v1, 0x3f99999a    # 1.2f

    .line 991
    .local v1, "maxScale":F
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 993
    .local v0, "currentFontScale":F
    iget-boolean v3, p0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v3, :cond_0

    cmpl-float v3, v0, v1

    if-lez v3, :cond_0

    .line 994
    int-to-float v3, p2

    div-float v2, v3, v0

    .line 995
    .local v2, "scaleBase":F
    const/4 v3, 0x0

    mul-float v4, v2, v1

    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 997
    .end local v2    # "scaleBase":F
    :cond_0
    return-void
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 751
    if-eqz p1, :cond_0

    .line 752
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 754
    :cond_0
    if-eqz p2, :cond_1

    .line 755
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 757
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 752
    goto :goto_0

    :cond_3
    move v1, v2

    .line 755
    goto :goto_1
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "customPanel"    # Landroid/view/View;
    .param p2, "defaultPanel"    # Landroid/view/View;

    .prologue
    .line 488
    if-nez p1, :cond_1

    .line 490
    instance-of v1, p2, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 491
    check-cast p2, Landroid/view/ViewStub;

    .end local p2    # "defaultPanel":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .line 494
    check-cast v1, Landroid/view/ViewGroup;

    .line 510
    :goto_0
    return-object v1

    .line 498
    :cond_1
    if-eqz p2, :cond_2

    .line 499
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 500
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 501
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 506
    :cond_2
    instance-of v1, p1, Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    .line 507
    check-cast p1, Landroid/view/ViewStub;

    .end local p1    # "customPanel":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .restart local p1    # "customPanel":Landroid/view/View;
    :cond_3
    move-object v1, p1

    .line 510
    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private selectContentView()I
    .locals 2

    .prologue
    .line 258
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 259
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 265
    :goto_0
    return v0

    .line 261
    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 262
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    goto :goto_0

    .line 265
    :cond_1
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    goto :goto_0
.end method

.method private setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 24
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    .prologue
    .line 869
    const/4 v10, 0x0

    .line 870
    .local v10, "fullDark":I
    const/16 v19, 0x0

    .line 871
    .local v19, "topDark":I
    const/4 v7, 0x0

    .line 872
    .local v7, "centerDark":I
    const/4 v4, 0x0

    .line 873
    .local v4, "bottomDark":I
    const/4 v9, 0x0

    .line 874
    .local v9, "fullBright":I
    const/16 v18, 0x0

    .line 875
    .local v18, "topBright":I
    const/4 v6, 0x0

    .line 876
    .local v6, "centerBright":I
    const/4 v3, 0x0

    .line 877
    .local v3, "bottomBright":I
    const/4 v5, 0x0

    .line 881
    .local v5, "bottomMedium":I
    const/16 v22, 0x12

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 883
    .local v15, "needsDefaultBackgrounds":Z
    if-eqz v15, :cond_0

    .line 884
    const v10, 0x108065e

    .line 885
    const v19, 0x108066c

    .line 886
    const v7, 0x108065b

    .line 887
    const v4, 0x1080658

    .line 888
    const v9, 0x108065d

    .line 889
    const v18, 0x108066b

    .line 890
    const v6, 0x108065a

    .line 891
    const v3, 0x1080657

    .line 892
    const v5, 0x1080659

    .line 895
    :cond_0
    const/16 v22, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 896
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    .line 897
    const/16 v22, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 898
    const/16 v22, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 908
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v21, v0

    .line 909
    .local v21, "views":[Landroid/view/View;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v13, v0, [Z

    .line 910
    .local v13, "light":[Z
    const/4 v12, 0x0

    .line 911
    .local v12, "lastView":Landroid/view/View;
    const/4 v11, 0x0

    .line 913
    .local v11, "lastLight":Z
    const/16 v16, 0x0

    .line 914
    .local v16, "pos":I
    if-eqz p6, :cond_1

    .line 915
    aput-object p2, v21, v16

    .line 916
    const/16 v22, 0x0

    aput-boolean v22, v13, v16

    .line 917
    add-int/lit8 v16, v16, 0x1

    .line 925
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/16 p3, 0x0

    .end local p3    # "contentPanel":Landroid/view/View;
    :cond_2
    aput-object p3, v21, v16

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    const/16 v22, 0x1

    :goto_0
    aput-boolean v22, v13, v16

    .line 927
    add-int/lit8 v16, v16, 0x1

    .line 929
    if-eqz p7, :cond_3

    .line 930
    aput-object p4, v21, v16

    .line 931
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    move/from16 v22, v0

    aput-boolean v22, v13, v16

    .line 932
    add-int/lit8 v16, v16, 0x1

    .line 935
    :cond_3
    if-eqz p8, :cond_4

    .line 936
    aput-object p5, v21, v16

    .line 937
    const/16 v22, 0x1

    aput-boolean v22, v13, v16

    .line 940
    :cond_4
    const/16 v17, 0x0

    .line 941
    .local v17, "setView":Z
    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 942
    aget-object v20, v21, v16

    .line 943
    .local v20, "v":Landroid/view/View;
    if-nez v20, :cond_6

    .line 941
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 926
    .end local v17    # "setView":Z
    .end local v20    # "v":Landroid/view/View;
    :cond_5
    const/16 v22, 0x0

    goto :goto_0

    .line 947
    .restart local v17    # "setView":Z
    .restart local v20    # "v":Landroid/view/View;
    :cond_6
    if-eqz v12, :cond_7

    .line 948
    if-nez v17, :cond_9

    .line 949
    if-eqz v11, :cond_8

    move/from16 v22, v18

    :goto_3
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 953
    :goto_4
    const/16 v17, 0x1

    .line 956
    :cond_7
    move-object/from16 v12, v20

    .line 957
    aget-boolean v11, v13, v16

    goto :goto_2

    :cond_8
    move/from16 v22, v19

    .line 949
    goto :goto_3

    .line 951
    :cond_9
    if-eqz v11, :cond_a

    move/from16 v22, v6

    :goto_5
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_a
    move/from16 v22, v7

    goto :goto_5

    .line 960
    .end local v20    # "v":Landroid/view/View;
    :cond_b
    if-eqz v12, :cond_c

    .line 961
    if-eqz v17, :cond_10

    .line 962
    const/16 v22, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 963
    const/16 v22, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 964
    const/16 v22, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 968
    if-eqz v11, :cond_f

    if-eqz p8, :cond_e

    move/from16 v22, v5

    :goto_6
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 978
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 979
    .local v14, "listView":Landroid/widget/ListView;
    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 981
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 982
    .local v8, "checkedItem":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v8, v0, :cond_d

    .line 983
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v8, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 984
    invoke-virtual {v14, v8}, Landroid/widget/ListView;->setSelection(I)V

    .line 987
    .end local v8    # "checkedItem":I
    :cond_d
    return-void

    .end local v14    # "listView":Landroid/widget/ListView;
    :cond_e
    move/from16 v22, v3

    .line 968
    goto :goto_6

    :cond_f
    move/from16 v22, v4

    goto :goto_6

    .line 971
    :cond_10
    const/16 v22, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 972
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 974
    if-eqz v11, :cond_11

    move/from16 v22, v9

    :goto_8
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    :cond_11
    move/from16 v22, v10

    goto :goto_8
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 12
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const v11, 0x108093a

    const/16 v10, 0x8

    const/4 v8, 0x0

    .line 760
    const/4 v2, 0x1

    .line 761
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 762
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 763
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v6, 0x0

    .line 766
    .local v6, "whichButtons":I
    const/4 v5, 0x0

    .line 768
    .local v5, "isEnabledShowBtnBg":Z
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 769
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v3, :cond_0

    .line 770
    const-string/jumbo v7, "show_button_background"

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_0

    .line 771
    const/4 v5, 0x1

    .line 776
    :cond_0
    const v7, 0x1020019

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 779
    iget-boolean v7, p0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v7, :cond_1

    if-eqz v5, :cond_1

    .line 780
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 784
    :cond_1
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 786
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 787
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 794
    :goto_0
    const v7, 0x102001a

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 797
    iget-boolean v7, p0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    .line 798
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 802
    :cond_2
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 805
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 813
    :goto_1
    const v7, 0x102001b

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 816
    iget-boolean v7, p0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v7, :cond_3

    if-eqz v5, :cond_3

    .line 817
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 821
    :cond_3
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 824
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 832
    :goto_2
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 837
    if-ne v6, v2, :cond_9

    .line 838
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v7}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 846
    :cond_4
    :goto_3
    if-eqz v6, :cond_b

    .line 847
    .local v4, "hasButtons":Z
    :goto_4
    if-nez v4, :cond_5

    .line 848
    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 850
    :cond_5
    return-void

    .line 789
    .end local v4    # "hasButtons":Z
    :cond_6
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 791
    or-int/2addr v6, v2

    goto :goto_0

    .line 807
    :cond_7
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 808
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 810
    or-int/2addr v6, v0

    goto :goto_1

    .line 826
    :cond_8
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 829
    or-int/2addr v6, v1

    goto :goto_2

    .line 839
    :cond_9
    if-ne v6, v0, :cond_a

    .line 840
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v7}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 841
    :cond_a
    if-ne v6, v1, :cond_4

    .line 842
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v7}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_b
    move v4, v8

    .line 846
    goto :goto_4
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    .line 723
    const v2, 0x1020366

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 724
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 727
    const v2, 0x102000b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 728
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 748
    :goto_0
    return-void

    .line 732
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 733
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 735
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 736
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 738
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 739
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 740
    .local v1, "scrollParent":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 741
    .local v0, "childIndex":I
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 742
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 745
    .end local v0    # "childIndex":I
    .end local v1    # "scrollParent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v5, 0x20000

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 596
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 597
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 605
    .local v1, "customView":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 606
    .local v2, "hasCustomView":Z
    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 607
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 611
    :cond_2
    if-eqz v2, :cond_7

    .line 612
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x102002b

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 613
    .local v0, "custom":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    iget-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v4, :cond_3

    .line 616
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v6, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v7, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 620
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_4

    .line 621
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 626
    .end local v0    # "custom":Landroid/widget/FrameLayout;
    :cond_4
    :goto_1
    return-void

    .line 598
    .end local v1    # "customView":Landroid/view/View;
    .end local v2    # "hasCustomView":Z
    :cond_5
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    if-eqz v4, :cond_6

    .line 599
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 600
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 601
    .restart local v1    # "customView":Landroid/view/View;
    goto :goto_0

    .line 602
    .end local v1    # "customView":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "customView":Landroid/view/View;
    goto :goto_0

    .line 624
    .restart local v2    # "hasCustomView":Z
    :cond_7
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private setupDecor()V
    .locals 5

    .prologue
    .line 450
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 451
    .local v1, "decor":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 452
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 453
    instance-of v3, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_0

    .line 454
    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setEnableShadow(Z)V

    .line 455
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 458
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x102035d

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 459
    .local v2, "parent":Landroid/view/View;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 460
    new-instance v3, Lcom/android/internal/app/AlertController$2;

    invoke-direct {v3, p0, v2}, Lcom/android/internal/app/AlertController$2;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 472
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 473
    invoke-virtual {v1}, Landroid/view/View;->requestApplyInsets()V

    .line 475
    :cond_1
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x102035f

    const/4 v0, 0x0

    const/16 v8, 0x8

    .line 676
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 678
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 681
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 684
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 685
    .local v2, "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 720
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "titleTemplate":Landroid/view/View;
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 689
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 690
    .local v0, "hasTextTitle":Z
    :cond_1
    if-eqz v0, :cond_4

    .line 692
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020360

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 693
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105013d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/app/AlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 699
    iget v3, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-eqz v3, :cond_2

    .line 700
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 701
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 702
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 706
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 710
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 714
    :cond_4
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 715
    .restart local v2    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 716
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 717
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 28

    .prologue
    .line 514
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v24, 0x102035d

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 515
    .local v22, "parentPanel":Landroid/view/View;
    const v4, 0x102035e

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 516
    .local v19, "defaultTopPanel":Landroid/view/View;
    const v4, 0x1020365

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 517
    .local v18, "defaultContentPanel":Landroid/view/View;
    const v4, 0x1020362

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 521
    .local v17, "defaultButtonPanel":Landroid/view/View;
    const v4, 0x1020367

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 522
    .local v8, "customPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 524
    const v4, 0x102035e

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 525
    .local v16, "customTopPanel":Landroid/view/View;
    const v4, 0x1020365

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 526
    .local v15, "customContentPanel":Landroid/view/View;
    const v4, 0x1020362

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 529
    .local v14, "customButtonPanel":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 530
    .local v6, "topPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    .line 531
    .local v7, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v9

    .line 533
    .local v9, "buttonPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 534
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 535
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 537
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v4, v0, :cond_6

    const/4 v11, 0x1

    .line 539
    .local v11, "hasCustomPanel":Z
    :goto_0
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v4, v0, :cond_7

    const/4 v10, 0x1

    .line 541
    .local v10, "hasTopPanel":Z
    :goto_1
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v4, v0, :cond_8

    const/4 v12, 0x1

    .line 545
    .local v12, "hasButtonPanel":Z
    :goto_2
    if-nez v12, :cond_1

    .line 546
    if-eqz v7, :cond_0

    .line 547
    const v4, 0x102036b

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 548
    .local v23, "spacer":Landroid/view/View;
    if-eqz v23, :cond_0

    .line 549
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 552
    .end local v23    # "spacer":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 555
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/AlertController;->adjustTwButtonsPadding()V

    .line 557
    if-eqz v10, :cond_4

    .line 559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v4, :cond_2

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 565
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-nez v4, :cond_3

    if-eqz v11, :cond_9

    .line 566
    :cond_3
    const v4, 0x1020361

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 571
    .local v20, "divider":Landroid/view/View;
    :goto_3
    if-eqz v20, :cond_4

    .line 572
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 577
    .end local v20    # "divider":Landroid/view/View;
    :cond_4
    if-nez v11, :cond_5

    .line 578
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 579
    .local v13, "content":Landroid/view/View;
    :goto_4
    if-eqz v13, :cond_5

    .line 580
    if-eqz v10, :cond_b

    const/4 v4, 0x1

    move/from16 v24, v4

    :goto_5
    if-eqz v12, :cond_c

    const/4 v4, 0x2

    :goto_6
    or-int v21, v24, v4

    .line 582
    .local v21, "indicators":I
    const/4 v4, 0x3

    move/from16 v0, v21

    invoke-virtual {v13, v0, v4}, Landroid/view/View;->setScrollIndicators(II)V

    .line 587
    .end local v13    # "content":Landroid/view/View;
    .end local v21    # "indicators":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/16 v24, 0x0

    sget-object v25, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v26, 0x101005d

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v4, p0

    .line 589
    invoke-direct/range {v4 .. v12}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 591
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 592
    return-void

    .line 537
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "hasTopPanel":Z
    .end local v11    # "hasCustomPanel":Z
    .end local v12    # "hasButtonPanel":Z
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 539
    .restart local v11    # "hasCustomPanel":Z
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 541
    .restart local v10    # "hasTopPanel":Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 568
    .restart local v12    # "hasButtonPanel":Z
    :cond_9
    const v4, 0x1020369

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .restart local v20    # "divider":Landroid/view/View;
    goto :goto_3

    .line 578
    .end local v20    # "divider":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    goto :goto_4

    .line 580
    .restart local v13    # "content":Landroid/view/View;
    :cond_b
    const/4 v4, 0x0

    move/from16 v24, v4

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    goto :goto_6
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 184
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 185
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1160017

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 186
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 427
    packed-switch p1, :pswitch_data_0

    .line 435
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 429
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 431
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 433
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 413
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 414
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 415
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 251
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->selectContentView()I

    move-result v0

    .line 252
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 253
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 254
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupDecor()V

    .line 255
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 343
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 347
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 351
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 367
    :goto_0
    return-void

    .line 355
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 356
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 360
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 361
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0
    .param p1, "layoutHint"    # I

    .prologue
    .line 325
    iput p1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 326
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 280
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 377
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 379
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 380
    if-eqz p1, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 397
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 398
    if-eqz p1, :cond_1

    .line 399
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 420
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 284
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 270
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 294
    iput p1, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 296
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 302
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 303
    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 304
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 305
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 313
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 315
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 316
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 317
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 318
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 319
    return-void
.end method
