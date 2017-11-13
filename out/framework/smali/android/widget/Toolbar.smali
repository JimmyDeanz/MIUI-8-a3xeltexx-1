.class public Landroid/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroid/widget/Toolbar$SavedState;,
        Landroid/widget/Toolbar$LayoutParams;,
        Landroid/widget/Toolbar$OnToolbarSweepListener;,
        Landroid/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final SWEEP_DISTANCE_MIN_VALUE:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private V_SWEEP_VI_DEMO:Z

.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mAnimationContainer:Landroid/view/ViewGroup;

.field private mButtonGravity:I

.field private mChangedTheme:Z

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseHandler:Landroid/os/Handler;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private final mContentInsets:Landroid/widget/RtlSpacingHelper;

.field private mDownPositionX:F

.field private mEatingTouch:Z

.field private mExpandResId:[I

.field private mExpandShrinkButton:Landroid/widget/ImageButton;

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsThemeDeviceDefaultFamily:Z

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMaxFontScale:F

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMenuView:Landroid/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private mNavButtonStyle:I

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private mOnToolbarSweepListener:Landroid/widget/Toolbar$OnToolbarSweepListener;

.field private mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field private mPerformToCollapse:Ljava/lang/Runnable;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private final mShowToLeftListener:Landroid/animation/Animator$AnimatorListener;

.field private final mShowToRightListener:Landroid/animation/Animator$AnimatorListener;

.field private mShrinkResId:[I

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTriangleToLeft:Landroid/view/View;

.field private mTriangleToRight:Landroid/view/View;

.field private mVIHandler:Landroid/os/Handler;

.field private mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 220
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102eb

    aput v2, v0, v1

    sput-object v0, Landroid/widget/Toolbar;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 250
    const v0, 0x10104aa

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 258
    invoke-direct/range {p0 .. p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 169
    new-instance v23, Landroid/widget/RtlSpacingHelper;

    invoke-direct/range {v23 .. v23}, Landroid/widget/RtlSpacingHelper;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    .line 171
    const v23, 0x800013

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mGravity:I

    .line 182
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 185
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 187
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mTempMargins:[I

    .line 191
    new-instance v23, Landroid/widget/Toolbar$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$1;-><init>(Landroid/widget/Toolbar;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 212
    new-instance v23, Landroid/widget/Toolbar$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$2;-><init>(Landroid/widget/Toolbar;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 229
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Toolbar;->V_SWEEP_VI_DEMO:Z

    .line 233
    new-instance v23, Landroid/os/Handler;

    invoke-direct/range {v23 .. v23}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mVIHandler:Landroid/os/Handler;

    .line 234
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    .line 235
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mExpandResId:[I

    .line 236
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mShrinkResId:[I

    .line 240
    const v23, 0x3f99999a    # 1.2f

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mMaxFontScale:F

    .line 1353
    new-instance v23, Landroid/os/Handler;

    invoke-direct/range {v23 .. v23}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mCollapseHandler:Landroid/os/Handler;

    .line 1354
    new-instance v23, Landroid/widget/Toolbar$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$5;-><init>(Landroid/widget/Toolbar;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mPerformToCollapse:Ljava/lang/Runnable;

    .line 1590
    new-instance v23, Landroid/widget/Toolbar$7;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$7;-><init>(Landroid/widget/Toolbar;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mShowToLeftListener:Landroid/animation/Animator$AnimatorListener;

    .line 1606
    new-instance v23, Landroid/widget/Toolbar$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$8;-><init>(Landroid/widget/Toolbar;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mShowToRightListener:Landroid/animation/Animator$AnimatorListener;

    .line 261
    new-instance v19, Landroid/util/TypedValue;

    invoke-direct/range {v19 .. v19}, Landroid/util/TypedValue;-><init>()V

    .line 262
    .local v19, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v23

    const v24, 0x11600bd

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v19

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 263
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v23, v0

    if-eqz v23, :cond_10

    const/16 v23, 0x1

    :goto_0
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Toolbar;->mIsThemeDeviceDefaultFamily:Z

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "current_sec_active_themepackage"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 266
    .local v21, "themeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Toolbar;->mIsThemeDeviceDefaultFamily:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    if-eqz v21, :cond_11

    const/16 v23, 0x1

    :goto_1
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Toolbar;->mChangedTheme:Z

    .line 270
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Toolbar;->V_SWEEP_VI_DEMO:Z

    .line 271
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Toolbar;->V_SWEEP_VI_DEMO:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 272
    const-string v23, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 273
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v23, 0x109011e

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mTriangleToLeft:Landroid/view/View;

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mTriangleToRight:Landroid/view/View;

    .line 281
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    sget-object v23, Lcom/android/internal/R$styleable;->Toolbar:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 284
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v23, 0x4

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    .line 285
    const/16 v23, 0x5

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 286
    const/16 v23, 0x17

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mNavButtonStyle:I

    .line 287
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mGravity:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mGravity:I

    .line 288
    const/16 v23, 0x18

    const/16 v24, 0x30

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mButtonGravity:I

    .line 289
    const/16 v23, 0x11

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mTitleMarginStart:I

    .line 292
    const/16 v23, 0x12

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v15

    .line 293
    .local v15, "marginStart":I
    if-ltz v15, :cond_1

    .line 294
    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    .line 297
    :cond_1
    const/16 v23, 0x13

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    .line 298
    .local v14, "marginEnd":I
    if-ltz v14, :cond_2

    .line 299
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    .line 302
    :cond_2
    const/16 v23, 0x14

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v16

    .line 303
    .local v16, "marginTop":I
    if-ltz v16, :cond_3

    .line 304
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mTitleMarginTop:I

    .line 307
    :cond_3
    const/16 v23, 0x15

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v13

    .line 309
    .local v13, "marginBottom":I
    if-ltz v13, :cond_4

    .line 310
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    .line 313
    :cond_4
    const/16 v23, 0x16

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    .line 315
    const/16 v23, 0x6

    const/high16 v24, -0x80000000

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    .line 318
    .local v9, "contentInsetStart":I
    const/16 v23, 0x7

    const/high16 v24, -0x80000000

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 321
    .local v6, "contentInsetEnd":I
    const/16 v23, 0x8

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 323
    .local v7, "contentInsetLeft":I
    const/16 v23, 0x9

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 326
    .local v8, "contentInsetRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v8}, Landroid/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 328
    const/high16 v23, -0x80000000

    move/from16 v0, v23

    if-ne v9, v0, :cond_5

    const/high16 v23, -0x80000000

    move/from16 v0, v23

    if-eq v6, v0, :cond_6

    .line 330
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9, v6}, Landroid/widget/RtlSpacingHelper;->setRelative(II)V

    .line 333
    :cond_6
    const/16 v23, 0x19

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 335
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Toolbar;->mChangedTheme:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    check-cast v23, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/BitmapDrawable;->setAutoMirrored(Z)V

    .line 339
    :cond_7
    const/16 v23, 0xd

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 341
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    .line 342
    .local v22, "title":Ljava/lang/CharSequence;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 343
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 346
    :cond_8
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 347
    .local v20, "subtitle":Ljava/lang/CharSequence;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_9

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 352
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 353
    const/16 v23, 0xa

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setPopupTheme(I)V

    .line 355
    const/16 v23, 0xb

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 356
    .local v18, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v18, :cond_a

    .line 357
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 360
    :cond_a
    const/16 v23, 0xc

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 362
    .local v17, "navDesc":Ljava/lang/CharSequence;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 363
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 366
    :cond_b
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 367
    .local v11, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_c

    .line 368
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 371
    :cond_c
    const/16 v23, 0x10

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 372
    .local v12, "logoDesc":Ljava/lang/CharSequence;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_d

    .line 373
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 376
    :cond_d
    const/16 v23, 0xe

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 377
    const/16 v23, 0xe

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    .line 380
    :cond_e
    const/16 v23, 0xf

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 381
    const/16 v23, 0xf

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 383
    :cond_f
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 384
    return-void

    .line 263
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "contentInsetEnd":I
    .end local v7    # "contentInsetLeft":I
    .end local v8    # "contentInsetRight":I
    .end local v9    # "contentInsetStart":I
    .end local v11    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v12    # "logoDesc":Ljava/lang/CharSequence;
    .end local v13    # "marginBottom":I
    .end local v14    # "marginEnd":I
    .end local v15    # "marginStart":I
    .end local v16    # "marginTop":I
    .end local v17    # "navDesc":Ljava/lang/CharSequence;
    .end local v18    # "navIcon":Landroid/graphics/drawable/Drawable;
    .end local v20    # "subtitle":Ljava/lang/CharSequence;
    .end local v21    # "themeName":Ljava/lang/String;
    .end local v22    # "title":Ljava/lang/CharSequence;
    :cond_10
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 266
    .restart local v21    # "themeName":Ljava/lang/String;
    :cond_11
    const/16 v23, 0x0

    goto/16 :goto_1
.end method

.method static synthetic access$000(Landroid/widget/Toolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 136
    iget-object v0, p0, Landroid/widget/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 136
    iget-object v0, p0, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/Toolbar;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 136
    iget v0, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/Toolbar;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 136
    iget-boolean v0, p0, Landroid/widget/Toolbar;->mIsThemeDeviceDefaultFamily:Z

    return v0
.end method

.method static synthetic access$400(Landroid/widget/Toolbar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 136
    iget-object v0, p0, Landroid/widget/Toolbar;->mPerformToCollapse:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/Toolbar;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 136
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/Toolbar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 136
    iget-object v0, p0, Landroid/widget/Toolbar;->mTriangleToLeft:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/Toolbar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 136
    iget-object v0, p0, Landroid/widget/Toolbar;->mTriangleToRight:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/Toolbar;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 136
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 7
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v4, 0x1

    .line 2324
    iget-boolean v6, p0, Landroid/widget/Toolbar;->V_SWEEP_VI_DEMO:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    if-ne p1, v6, :cond_1

    .line 2354
    :cond_0
    return-void

    .line 2329
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 2330
    .local v4, "isRtl":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v2

    .line 2331
    .local v2, "childCount":I
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v6

    invoke-static {p2, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 2333
    .local v0, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2335
    if-eqz v4, :cond_4

    .line 2336
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_0

    .line 2337
    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2338
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar$LayoutParams;

    .line 2339
    .local v5, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_2

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v6}, Landroid/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_2

    .line 2341
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2336
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2329
    .end local v0    # "absGrav":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "isRtl":Z
    .end local v5    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 2345
    .restart local v0    # "absGrav":I
    .restart local v2    # "childCount":I
    .restart local v4    # "isRtl":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_0

    .line 2346
    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2347
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar$LayoutParams;

    .line 2348
    .restart local v5    # "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_5

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v6}, Landroid/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_5

    .line 2350
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2345
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "allowHide"    # Z

    .prologue
    .line 1393
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1395
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 1396
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1402
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    :goto_0
    const/4 v2, 0x1

    iput v2, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1404
    if-eqz p2, :cond_2

    iget-object v2, p0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1405
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1406
    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1410
    :goto_1
    return-void

    .line 1397
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1398
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .restart local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_1
    move-object v0, v1

    .line 1400
    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    goto :goto_0

    .line 1408
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private checkSweepAction(FF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x1

    .line 1529
    invoke-virtual {p0}, Landroid/widget/Toolbar;->hasExpandedActionView()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1530
    const-string v7, "Toolbar"

    const-string v8, "checkSweepAction - This toolbar has a ExpandedActionView."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_0
    :goto_0
    return-void

    .line 1534
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1535
    .local v4, "pm":Landroid/os/PowerManager;
    if-eqz v4, :cond_4

    .line 1536
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMultipleScreenState()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMultipleScreenState()I

    move-result v7

    if-ne v7, v5, :cond_3

    .line 1537
    .local v5, "subScreenOn":Z
    :cond_2
    :goto_1
    if-nez v5, :cond_4

    .line 1538
    const-string v7, "Toolbar"

    const-string v8, "checkSweepAction - Sub-screen is turned off. Sweep operation in the sub-screen will be ignored."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1536
    .end local v5    # "subScreenOn":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1543
    :cond_4
    iget v7, p0, Landroid/widget/Toolbar;->mDownPositionX:F

    sub-float v2, v7, p1

    .line 1544
    .local v2, "distance":F
    const/high16 v7, 0x43fa0000    # 500.0f

    cmpl-float v7, v2, v7

    if-lez v7, :cond_6

    .line 1545
    const-string v7, "Toolbar"

    const-string v8, "checkSweepAction - Sweep to left"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1547
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1548
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 1549
    .local v1, "displayId":I
    new-instance v3, Lcom/samsung/android/dualscreen/DualScreenManager;

    invoke-direct {v3, v0}, Lcom/samsung/android/dualscreen/DualScreenManager;-><init>(Landroid/content/Context;)V

    .line 1550
    .local v3, "dualScreenManager":Lcom/samsung/android/dualscreen/DualScreenManager;
    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v7}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v7

    if-ne v1, v7, :cond_0

    .line 1551
    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v7}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v6

    .line 1552
    .local v6, "taskInfo":Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/TaskInfo;->isCoupled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1553
    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v7}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v6

    .line 1554
    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskId()I

    move-result v7

    sget-object v8, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v7, v8}, Lcom/samsung/android/dualscreen/DualScreenManager;->sendShrinkRequest(ILcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_0

    .line 1556
    :cond_5
    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v3, v7}, Lcom/samsung/android/dualscreen/DualScreenManager;->moveToScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_0

    .line 1565
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "displayId":I
    .end local v3    # "dualScreenManager":Lcom/samsung/android/dualscreen/DualScreenManager;
    .end local v6    # "taskInfo":Lcom/samsung/android/dualscreen/TaskInfo;
    :cond_6
    const/high16 v7, -0x3c060000    # -500.0f

    cmpg-float v7, v2, v7

    if-gez v7, :cond_0

    .line 1566
    const-string v7, "Toolbar"

    const-string v8, "checkSweepAction - Sweep to right"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1568
    .restart local v0    # "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1569
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 1570
    .restart local v1    # "displayId":I
    new-instance v3, Lcom/samsung/android/dualscreen/DualScreenManager;

    invoke-direct {v3, v0}, Lcom/samsung/android/dualscreen/DualScreenManager;-><init>(Landroid/content/Context;)V

    .line 1571
    .restart local v3    # "dualScreenManager":Lcom/samsung/android/dualscreen/DualScreenManager;
    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v7}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v7

    if-ne v1, v7, :cond_0

    .line 1572
    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v7}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v6

    .line 1573
    .restart local v6    # "taskInfo":Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/TaskInfo;->isCoupled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1574
    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v7}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v6

    .line 1575
    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskId()I

    move-result v7

    sget-object v8, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v7, v8}, Lcom/samsung/android/dualscreen/DualScreenManager;->sendShrinkRequest(ILcom/samsung/android/dualscreen/DualScreen;)V

    goto/16 :goto_0

    .line 1577
    :cond_7
    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v3, v7}, Lcom/samsung/android/dualscreen/DualScreenManager;->moveToScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    goto/16 :goto_0
.end method

.method private ensureCollapseButtonView()V
    .locals 6

    .prologue
    .line 1362
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    .line 1363
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Landroid/widget/Toolbar;->mNavButtonStyle:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1364
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1365
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1366
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1367
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 1368
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1369
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1370
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v2, Landroid/widget/Toolbar$6;

    invoke-direct {v2, p0}, Landroid/widget/Toolbar$6;-><init>(Landroid/widget/Toolbar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1387
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040499

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1390
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 797
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 799
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    .prologue
    .line 1149
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenuView()V

    .line 1150
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1152
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 1153
    .local v0, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    .line 1154
    new-instance v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar$1;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 1156
    :cond_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1157
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 1159
    .end local v0    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 5

    .prologue
    .line 1162
    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-nez v2, :cond_1

    .line 1163
    new-instance v2, Landroid/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    .line 1164
    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget v3, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuView;->setPopupTheme(I)V

    .line 1165
    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v3, p0, Landroid/widget/Toolbar;->mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 1166
    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v3, p0, Landroid/widget/Toolbar;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    iget-object v4, p0, Landroid/widget/Toolbar;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ActionMenuView;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1167
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1168
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    const v2, 0x800005

    iget v3, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    iput v2, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 1169
    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2, v0}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1171
    iget-object v2, p0, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1172
    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1173
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v2, 0xa8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1174
    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1177
    .end local v1    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 1179
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_1
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 6

    .prologue
    .line 1341
    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    .line 1342
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Landroid/widget/Toolbar;->mNavButtonStyle:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1343
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1344
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 1345
    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1346
    iget-boolean v1, p0, Landroid/widget/Toolbar;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v1, :cond_0

    .line 1347
    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 1350
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 4
    .param p1, "gravity"    # I

    .prologue
    .line 2357
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v2

    .line 2358
    .local v2, "ld":I
    invoke-static {p1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 2359
    .local v0, "absGrav":I
    and-int/lit8 v1, v0, 0x7

    .line 2360
    .local v1, "hGrav":I
    packed-switch v1, :pswitch_data_0

    .line 2366
    :pswitch_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v3, 0x5

    :goto_0
    move v1, v3

    .end local v1    # "hGrav":I
    :pswitch_1
    return v1

    .restart local v1    # "hGrav":I
    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    .line 2360
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    .prologue
    const/4 v9, 0x0

    .line 2272
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar$LayoutParams;

    .line 2273
    .local v3, "lp":Landroid/widget/Toolbar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2274
    .local v1, "childHeight":I
    if-lez p2, :cond_1

    sub-int v10, v1, p2

    div-int/lit8 v0, v10, 0x2

    .line 2275
    .local v0, "alignmentOffset":I
    :goto_0
    iget v10, v3, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v10}, Landroid/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 2285
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v5

    .line 2286
    .local v5, "paddingTop":I
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    .line 2287
    .local v4, "paddingBottom":I
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v2

    .line 2288
    .local v2, "height":I
    sub-int v10, v2, v5

    sub-int v6, v10, v4

    .line 2289
    .local v6, "space":I
    sub-int v10, v6, v1

    div-int/lit8 v7, v10, 0x2

    .line 2290
    .local v7, "spaceAbove":I
    iget v10, v3, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v7, v10, :cond_2

    .line 2291
    iget v7, v3, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    .line 2299
    :cond_0
    :goto_1
    add-int v9, v5, v7

    .end local v2    # "height":I
    .end local v4    # "paddingBottom":I
    .end local v5    # "paddingTop":I
    .end local v6    # "space":I
    .end local v7    # "spaceAbove":I
    :goto_2
    return v9

    .end local v0    # "alignmentOffset":I
    :cond_1
    move v0, v9

    .line 2274
    goto :goto_0

    .line 2277
    .restart local v0    # "alignmentOffset":I
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v9

    sub-int/2addr v9, v0

    goto :goto_2

    .line 2280
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    iget v10, v3, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v0

    goto :goto_2

    .line 2293
    .restart local v2    # "height":I
    .restart local v4    # "paddingBottom":I
    .restart local v5    # "paddingTop":I
    .restart local v6    # "space":I
    .restart local v7    # "spaceAbove":I
    :cond_2
    sub-int v10, v2, v4

    sub-int/2addr v10, v1

    sub-int/2addr v10, v7

    sub-int v8, v10, v5

    .line 2295
    .local v8, "spaceBelow":I
    iget v10, v3, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v8, v10, :cond_0

    .line 2296
    iget v10, v3, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v8

    sub-int v10, v7, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1

    .line 2275
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private getChildVerticalGravity(I)I
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 2304
    and-int/lit8 v0, p1, 0x70

    .line 2305
    .local v0, "vgrav":I
    sparse-switch v0, :sswitch_data_0

    .line 2311
    iget v1, p0, Landroid/widget/Toolbar;->mGravity:I

    and-int/lit8 v0, v1, 0x70

    .end local v0    # "vgrav":I
    :sswitch_0
    return v0

    .line 2305
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2375
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2376
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 1182
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2380
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2381
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 13
    .param p2, "collapsingMargins"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v12, 0x0

    .line 2227
    aget v0, p2, v12

    .line 2228
    .local v0, "collapseLeft":I
    const/4 v11, 0x1

    aget v1, p2, v11

    .line 2229
    .local v1, "collapseRight":I
    const/4 v10, 0x0

    .line 2230
    .local v10, "width":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2231
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2232
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 2233
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Toolbar$LayoutParams;

    .line 2234
    .local v6, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v11, v6, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int v4, v11, v0

    .line 2235
    .local v4, "l":I
    iget v11, v6, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int v7, v11, v1

    .line 2236
    .local v7, "r":I
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2237
    .local v5, "leftMargin":I
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2238
    .local v8, "rightMargin":I
    neg-int v11, v4

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2239
    neg-int v11, v7

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2240
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v5

    add-int/2addr v11, v8

    add-int/2addr v10, v11

    .line 2231
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2242
    .end local v4    # "l":I
    .end local v5    # "leftMargin":I
    .end local v6    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v7    # "r":I
    .end local v8    # "rightMargin":I
    .end local v9    # "v":Landroid/view/View;
    :cond_0
    return v10
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2447
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCustomView(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 2413
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutAnimationContainer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1984
    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1985
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1986
    return-void
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .prologue
    const/4 v6, 0x0

    .line 2247
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar$LayoutParams;

    .line 2248
    .local v2, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v4, v2, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    aget v5, p3, v6

    sub-int v1, v4, v5

    .line 2249
    .local v1, "l":I
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr p2, v4

    .line 2250
    neg-int v4, v1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v6

    .line 2251
    invoke-direct {p0, p1, p4}, Landroid/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 2252
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2253
    .local v0, "childWidth":I
    add-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 2254
    iget v4, v2, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v0

    add-int/2addr p2, v4

    .line 2255
    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2260
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 2261
    .local v1, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v4, v1, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    aget v5, p3, v7

    sub-int v2, v4, v5

    .line 2262
    .local v2, "r":I
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 2263
    neg-int v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v7

    .line 2264
    invoke-direct {p0, p1, p4}, Landroid/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 2265
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2266
    .local v0, "childWidth":I
    sub-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v4, v3, p2, v5}, Landroid/view/View;->layout(IIII)V

    .line 2267
    iget v4, v1, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v0

    sub-int/2addr p2, v4

    .line 2268
    return p2
.end method

.method private measureAnimationContainer(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1801
    const/4 v7, 0x0

    .line 1802
    .local v7, "maxHeight":I
    const/4 v8, 0x0

    .line 1803
    .local v8, "maxWidth":I
    const/4 v6, 0x0

    .line 1805
    .local v6, "childState":I
    iget-object v0, p0, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1824
    :goto_0
    return-void

    .line 1809
    :cond_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    .line 1811
    .local v1, "child":Landroid/view/View;
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 1812
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Toolbar;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1813
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1815
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1816
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v6, v0}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v6

    .line 1818
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1819
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1821
    invoke-static {v8, p1, v6}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    move-result v0

    shl-int/lit8 v2, v6, 0x10

    invoke-static {v7, p2, v2}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/Toolbar;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .prologue
    .line 1762
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1764
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v9, 0x0

    aget v9, p6, v9

    sub-int v3, v8, v9

    .line 1765
    .local v3, "leftDiff":I
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v9, 0x1

    aget v9, p6, v9

    sub-int v6, v8, v9

    .line 1766
    .local v6, "rightDiff":I
    const/4 v8, 0x0

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1767
    .local v4, "leftMargin":I
    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1768
    .local v7, "rightMargin":I
    add-int v2, v4, v7

    .line 1769
    .local v2, "hMargins":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    neg-int v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 1770
    const/4 v8, 0x1

    const/4 v9, 0x0

    neg-int v10, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 1772
    iget v8, p0, Landroid/widget/Toolbar;->mPaddingLeft:I

    iget v9, p0, Landroid/widget/Toolbar;->mPaddingRight:I

    add-int/2addr v8, v9

    add-int/2addr v8, v2

    add-int/2addr v8, p3

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v8, v9}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1774
    .local v1, "childWidthMeasureSpec":I
    iget v8, p0, Landroid/widget/Toolbar;->mPaddingTop:I

    iget v9, p0, Landroid/widget/Toolbar;->mPaddingBottom:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int v8, v8, p5

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v8, v9}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1778
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1779
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v2

    return v8
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "heightConstraint"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 1737
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1739
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Landroid/widget/Toolbar;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/Toolbar;->mPaddingRight:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v5, v6}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1742
    .local v2, "childWidthSpec":I
    iget v5, p0, Landroid/widget/Toolbar;->mPaddingTop:I

    iget v6, p0, Landroid/widget/Toolbar;->mPaddingBottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v5, v6}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1746
    .local v1, "childHeightSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1747
    .local v0, "childHeightMode":I
    if-eq v0, v7, :cond_0

    if-ltz p6, :cond_0

    .line 1748
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1751
    .local v4, "size":I
    :goto_0
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1753
    .end local v4    # "size":I
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 1754
    return-void

    :cond_1
    move v4, p6

    .line 1748
    goto :goto_0
.end method

.method private postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1445
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1446
    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1786
    iget-boolean v4, p0, Landroid/widget/Toolbar;->mCollapsible:Z

    if-nez v4, :cond_1

    .line 1796
    :cond_0
    :goto_0
    return v3

    .line 1788
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v1

    .line 1789
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1790
    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1791
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1789
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1796
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2371
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .locals 3

    .prologue
    .line 2438
    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2440
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2441
    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2440
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2443
    :cond_0
    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2444
    return-void
.end method

.method public animateTriangleToLeft()V
    .locals 6

    .prologue
    .line 1626
    const-string v4, "Toolbar"

    const-string v5, "Toolbar::animateTriangleToLeft()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object v4, p0, Landroid/widget/Toolbar;->mTriangleToLeft:Landroid/view/View;

    if-nez v4, :cond_0

    .line 1650
    :goto_0
    return-void

    .line 1632
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getWidth()I

    move-result v3

    .line 1633
    .local v3, "startOffset":I
    iget-object v4, p0, Landroid/widget/Toolbar;->mTriangleToLeft:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v1, v4

    .line 1634
    .local v1, "endOffset":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1635
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1637
    new-instance v2, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    .line 1638
    .local v2, "interpolator":Landroid/view/animation/interpolator/SineEaseInOut;
    const/high16 v4, 0x428c0000    # 70.0f

    invoke-virtual {v2, v4}, Landroid/view/animation/interpolator/SineEaseInOut;->getInterpolation(F)F

    .line 1639
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1641
    new-instance v4, Landroid/widget/Toolbar$9;

    invoke-direct {v4, p0}, Landroid/widget/Toolbar$9;-><init>(Landroid/widget/Toolbar;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1648
    iget-object v4, p0, Landroid/widget/Toolbar;->mShowToLeftListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1649
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public animateTriangleToRight()V
    .locals 6

    .prologue
    .line 1656
    const-string v4, "Toolbar"

    const-string v5, "Toolbar::animateTriangleToRight()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget-object v4, p0, Landroid/widget/Toolbar;->mTriangleToRight:Landroid/view/View;

    if-nez v4, :cond_0

    .line 1680
    :goto_0
    return-void

    .line 1662
    :cond_0
    iget-object v4, p0, Landroid/widget/Toolbar;->mTriangleToRight:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v3, v4

    .line 1663
    .local v3, "startOffset":I
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getWidth()I

    move-result v1

    .line 1664
    .local v1, "endOffset":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1665
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1667
    new-instance v2, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    .line 1668
    .local v2, "interpolator":Landroid/view/animation/interpolator/SineEaseInOut;
    const/high16 v4, 0x428c0000    # 70.0f

    invoke-virtual {v2, v4}, Landroid/view/animation/interpolator/SineEaseInOut;->getInterpolation(F)F

    .line 1669
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1671
    new-instance v4, Landroid/widget/Toolbar$10;

    invoke-direct {v4, p0}, Landroid/widget/Toolbar$10;-><init>(Landroid/widget/Toolbar;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1678
    iget-object v4, p0, Landroid/widget/Toolbar;->mShowToRightListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1679
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2409
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    .line 826
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 828
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 831
    :cond_0
    return-void

    .line 826
    .end local v0    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    .line 700
    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 2404
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/Toolbar$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2386
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2391
    instance-of v0, p1, Landroid/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 2392
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/widget/Toolbar$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/widget/Toolbar$LayoutParams;)V

    .line 2398
    :goto_0
    return-object v0

    .line 2393
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 2394
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/app/ActionBar$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0

    .line 2395
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 2396
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 2398
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getEnd()I

    move-result v0

    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getLeft()I

    move-result v0

    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getRight()I

    move-result v0

    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getStart()I

    move-result v0

    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 1123
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    .line 1124
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getOuterActionMenuPresenter()Landroid/widget/ActionMenuPresenter;
    .locals 1

    .prologue
    .line 2473
    iget-object v0, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1144
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    .line 1145
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getPopupContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2477
    iget-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWrapper()Lcom/android/internal/widget/DecorToolbar;
    .locals 2

    .prologue
    .line 2418
    iget-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_0

    .line 2419
    new-instance v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .line 2421
    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflateMenu(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 1194
    invoke-direct {p0}, Landroid/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1195
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowPending()Z

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
    .line 631
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 704
    iget-object v4, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 719
    :cond_0
    :goto_0
    return v3

    .line 708
    :cond_1
    iget-object v4, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 709
    .local v2, "titleLayout":Landroid/text/Layout;
    if-eqz v2, :cond_0

    .line 713
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 714
    .local v1, "lineCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 715
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 716
    const/4 v3, 0x1

    goto :goto_0

    .line 714
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    .line 554
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 559
    iget-boolean v3, p0, Landroid/widget/Toolbar;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_0

    .line 560
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Landroid/widget/Toolbar;->ATTRS:[I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 561
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 562
    .local v0, "height":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 564
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 565
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 566
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    iput v0, p0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    .line 569
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setMinimumHeight(I)V

    .line 571
    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1450
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1451
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1452
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1504
    iget-boolean v0, p0, Landroid/widget/Toolbar;->V_SWEEP_VI_DEMO:Z

    if-eqz v0, :cond_0

    .line 1505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1521
    const-string v0, "Toolbar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInterceptTouchEvent - ELSE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1507
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->checkSweepAction(FF)V

    .line 1508
    const-string v0, "Toolbar"

    const-string/jumbo v1, "onInterceptTouchEvent - ACTION_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1511
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/Toolbar;->mDownPositionX:F

    .line 1512
    const-string v0, "Toolbar"

    const-string/jumbo v1, "onInterceptTouchEvent - ACTION_DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1515
    :pswitch_2
    const-string v0, "Toolbar"

    const-string/jumbo v1, "onInterceptTouchEvent - ACTION_MOVE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1518
    :pswitch_3
    const-string v0, "Toolbar"

    const-string/jumbo v1, "onInterceptTouchEvent - ACTION_CANCEL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 50
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1991
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_f

    const/16 v16, 0x1

    .line 1992
    .local v16, "isRtl":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getWidth()I

    move-result v45

    .line 1993
    .local v45, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v14

    .line 1994
    .local v14, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    move-result v24

    .line 1995
    .local v24, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingRight()I

    move-result v25

    .line 1996
    .local v25, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v26

    .line 1997
    .local v26, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v23

    .line 1998
    .local v23, "paddingBottom":I
    move/from16 v20, v24

    .line 1999
    .local v20, "left":I
    sub-int v29, v45, v25

    .line 2001
    .local v29, "right":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Toolbar;->mTempMargins:[I

    .line 2002
    .local v12, "collapsingMargins":[I
    const/16 v46, 0x0

    const/16 v47, 0x1

    const/16 v48, 0x0

    aput v48, v12, v47

    aput v48, v12, v46

    .line 2005
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getMinimumHeight()I

    move-result v5

    .line 2008
    .local v5, "alignmentHeight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Toolbar;->V_SWEEP_VI_DEMO:Z

    move/from16 v46, v0

    if-eqz v46, :cond_0

    .line 2009
    invoke-direct/range {p0 .. p0}, Landroid/widget/Toolbar;->layoutAnimationContainer()V

    .line 2013
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_1

    .line 2014
    if-eqz v16, :cond_10

    .line 2015
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 2023
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_2

    .line 2024
    if-eqz v16, :cond_11

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 2033
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_3

    .line 2034
    if-eqz v16, :cond_12

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    .line 2043
    :cond_3
    :goto_3
    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContentInsetLeft()I

    move-result v48

    sub-int v48, v48, v20

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 2044
    const/16 v46, 0x1

    const/16 v47, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContentInsetRight()I

    move-result v48

    sub-int v49, v45, v25

    sub-int v49, v49, v29

    sub-int v48, v48, v49

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 2045
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContentInsetLeft()I

    move-result v46

    move/from16 v0, v20

    move/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 2046
    sub-int v46, v45, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContentInsetRight()I

    move-result v47

    sub-int v46, v46, v47

    move/from16 v0, v29

    move/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 2048
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_4

    .line 2049
    if-eqz v16, :cond_13

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 2058
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_5

    .line 2059
    if-eqz v16, :cond_14

    .line 2060
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 2068
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v18

    .line 2069
    .local v18, "layoutTitle":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v17

    .line 2070
    .local v17, "layoutSubtitle":Z
    const/16 v39, 0x0

    .line 2071
    .local v39, "titleHeight":I
    if-eqz v18, :cond_6

    .line 2072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    .line 2073
    .local v22, "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v47

    add-int v46, v46, v47

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    add-int v46, v46, v47

    add-int v39, v39, v46

    .line 2075
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_6
    if-eqz v17, :cond_7

    .line 2076
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    .line 2077
    .restart local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v47

    add-int v46, v46, v47

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    add-int v46, v46, v47

    add-int v39, v39, v46

    .line 2080
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_7
    if-nez v18, :cond_8

    if-eqz v17, :cond_e

    .line 2082
    :cond_8
    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v43, v0

    .line 2083
    .local v43, "topChild":Landroid/view/View;
    :goto_6
    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 2084
    .local v6, "bottomChild":Landroid/view/View;
    :goto_7
    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v44

    check-cast v44, Landroid/widget/Toolbar$LayoutParams;

    .line 2085
    .local v44, "toplp":Landroid/widget/Toolbar$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar$LayoutParams;

    .line 2086
    .local v7, "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    if-gtz v46, :cond_a

    :cond_9
    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    if-lez v46, :cond_17

    :cond_a
    const/16 v38, 0x1

    .line 2089
    .local v38, "titleHasWidth":Z
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mGravity:I

    move/from16 v46, v0

    and-int/lit8 v46, v46, 0x70

    sparse-switch v46, :sswitch_data_0

    .line 2095
    sub-int v46, v14, v26

    sub-int v31, v46, v23

    .line 2096
    .local v31, "space":I
    sub-int v46, v31, v39

    div-int/lit8 v32, v46, 0x2

    .line 2097
    .local v32, "spaceAbove":I
    move-object/from16 v0, v44

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v47, v0

    add-int v46, v46, v47

    move/from16 v0, v32

    move/from16 v1, v46

    if-ge v0, v1, :cond_18

    .line 2098
    move-object/from16 v0, v44

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v47, v0

    add-int v32, v46, v47

    .line 2107
    :cond_b
    :goto_9
    add-int v42, v26, v32

    .line 2114
    .end local v31    # "space":I
    .end local v32    # "spaceAbove":I
    .local v42, "titleTop":I
    :goto_a
    if-eqz v16, :cond_1a

    .line 2115
    if-eqz v38, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v46, v0

    :goto_b
    const/16 v47, 0x1

    aget v47, v12, v47

    sub-int v28, v46, v47

    .line 2116
    .local v28, "rd":I
    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v46

    sub-int v29, v29, v46

    .line 2117
    const/16 v46, 0x1

    const/16 v47, 0x0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v48, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 2118
    move/from16 v41, v29

    .line 2119
    .local v41, "titleRight":I
    move/from16 v36, v29

    .line 2121
    .local v36, "subtitleRight":I
    if-eqz v18, :cond_c

    .line 2122
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    .line 2123
    .restart local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    sub-int v40, v41, v46

    .line 2124
    .local v40, "titleLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v37, v42, v46

    .line 2125
    .local v37, "titleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v40

    move/from16 v2, v42

    move/from16 v3, v41

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 2126
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v46, v0

    sub-int v41, v40, v46

    .line 2127
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v37, v46

    .line 2129
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v37    # "titleBottom":I
    .end local v40    # "titleLeft":I
    :cond_c
    if-eqz v17, :cond_d

    .line 2130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    .line 2131
    .restart local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    add-int v42, v42, v46

    .line 2132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    sub-int v35, v36, v46

    .line 2133
    .local v35, "subtitleLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v34, v42, v46

    .line 2134
    .local v34, "subtitleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v35

    move/from16 v2, v42

    move/from16 v3, v36

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 2135
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v46, v0

    sub-int v36, v36, v46

    .line 2136
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v34, v46

    .line 2138
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v34    # "subtitleBottom":I
    .end local v35    # "subtitleLeft":I
    :cond_d
    if-eqz v38, :cond_e

    .line 2139
    move/from16 v0, v41

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 2174
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .end local v28    # "rd":I
    .end local v36    # "subtitleRight":I
    .end local v38    # "titleHasWidth":Z
    .end local v41    # "titleRight":I
    .end local v42    # "titleTop":I
    .end local v43    # "topChild":Landroid/view/View;
    .end local v44    # "toplp":Landroid/widget/Toolbar$LayoutParams;
    :cond_e
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    const/16 v47, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 2176
    .local v21, "leftViewsCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_d
    move/from16 v0, v21

    if-ge v15, v0, :cond_1f

    .line 2178
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Toolbar;->V_SWEEP_VI_DEMO:Z

    move/from16 v46, v0

    if-eqz v46, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v46, v0

    if-eqz v46, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v47, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_1e

    .line 2176
    :goto_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 1991
    .end local v5    # "alignmentHeight":I
    .end local v12    # "collapsingMargins":[I
    .end local v14    # "height":I
    .end local v15    # "i":I
    .end local v16    # "isRtl":Z
    .end local v17    # "layoutSubtitle":Z
    .end local v18    # "layoutTitle":Z
    .end local v20    # "left":I
    .end local v21    # "leftViewsCount":I
    .end local v23    # "paddingBottom":I
    .end local v24    # "paddingLeft":I
    .end local v25    # "paddingRight":I
    .end local v26    # "paddingTop":I
    .end local v29    # "right":I
    .end local v39    # "titleHeight":I
    .end local v45    # "width":I
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2018
    .restart local v5    # "alignmentHeight":I
    .restart local v12    # "collapsingMargins":[I
    .restart local v14    # "height":I
    .restart local v16    # "isRtl":Z
    .restart local v20    # "left":I
    .restart local v23    # "paddingBottom":I
    .restart local v24    # "paddingLeft":I
    .restart local v25    # "paddingRight":I
    .restart local v26    # "paddingTop":I
    .restart local v29    # "right":I
    .restart local v45    # "width":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_1

    .line 2028
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_2

    .line 2038
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    goto/16 :goto_3

    .line 2053
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_4

    .line 2063
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_5

    .line 2082
    .restart local v17    # "layoutSubtitle":Z
    .restart local v18    # "layoutTitle":Z
    .restart local v39    # "titleHeight":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v43, v0

    goto/16 :goto_6

    .line 2083
    .restart local v43    # "topChild":Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    goto/16 :goto_7

    .line 2086
    .restart local v6    # "bottomChild":Landroid/view/View;
    .restart local v7    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v44    # "toplp":Landroid/widget/Toolbar$LayoutParams;
    :cond_17
    const/16 v38, 0x0

    goto/16 :goto_8

    .line 2091
    .restart local v38    # "titleHasWidth":Z
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v46

    move-object/from16 v0, v44

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v47, v0

    add-int v46, v46, v47

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v47, v0

    add-int v42, v46, v47

    .line 2092
    .restart local v42    # "titleTop":I
    goto/16 :goto_a

    .line 2100
    .end local v42    # "titleTop":I
    .restart local v31    # "space":I
    .restart local v32    # "spaceAbove":I
    :cond_18
    sub-int v46, v14, v23

    sub-int v46, v46, v39

    sub-int v46, v46, v32

    sub-int v33, v46, v26

    .line 2102
    .local v33, "spaceBelow":I
    move-object/from16 v0, v44

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v47, v0

    add-int v46, v46, v47

    move/from16 v0, v33

    move/from16 v1, v46

    if-ge v0, v1, :cond_b

    .line 2103
    const/16 v46, 0x0

    iget v0, v7, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v48, v0

    add-int v47, v47, v48

    sub-int v47, v47, v33

    sub-int v47, v32, v47

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v32

    goto/16 :goto_9

    .line 2110
    .end local v31    # "space":I
    .end local v32    # "spaceAbove":I
    .end local v33    # "spaceBelow":I
    :sswitch_1
    sub-int v46, v14, v23

    iget v0, v7, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    sub-int v46, v46, v47

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v47, v0

    sub-int v46, v46, v47

    sub-int v42, v46, v39

    .restart local v42    # "titleTop":I
    goto/16 :goto_a

    .line 2115
    :cond_19
    const/16 v46, 0x0

    goto/16 :goto_b

    .line 2142
    :cond_1a
    if-eqz v38, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v46, v0

    :goto_f
    const/16 v47, 0x0

    aget v47, v12, v47

    sub-int v19, v46, v47

    .line 2143
    .local v19, "ld":I
    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v46

    add-int v20, v20, v46

    .line 2144
    const/16 v46, 0x0

    const/16 v47, 0x0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v48, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 2145
    move/from16 v40, v20

    .line 2146
    .restart local v40    # "titleLeft":I
    move/from16 v35, v20

    .line 2148
    .restart local v35    # "subtitleLeft":I
    if-eqz v18, :cond_1b

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    .line 2150
    .restart local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    add-int v41, v40, v46

    .line 2151
    .restart local v41    # "titleRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v37, v42, v46

    .line 2152
    .restart local v37    # "titleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v40

    move/from16 v2, v42

    move/from16 v3, v41

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 2153
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v46, v0

    add-int v40, v41, v46

    .line 2154
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v37, v46

    .line 2156
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v37    # "titleBottom":I
    .end local v41    # "titleRight":I
    :cond_1b
    if-eqz v17, :cond_1c

    .line 2157
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    .line 2158
    .restart local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    add-int v42, v42, v46

    .line 2159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    add-int v36, v35, v46

    .line 2160
    .restart local v36    # "subtitleRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v34, v42, v46

    .line 2161
    .restart local v34    # "subtitleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v35

    move/from16 v2, v42

    move/from16 v3, v36

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 2162
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v46, v0

    add-int v35, v36, v46

    .line 2163
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v34, v46

    .line 2165
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v34    # "subtitleBottom":I
    .end local v36    # "subtitleRight":I
    :cond_1c
    if-eqz v38, :cond_e

    .line 2166
    move/from16 v0, v40

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto/16 :goto_c

    .line 2142
    .end local v19    # "ld":I
    .end local v35    # "subtitleLeft":I
    .end local v40    # "titleLeft":I
    :cond_1d
    const/16 v46, 0x0

    goto/16 :goto_f

    .line 2182
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .end local v38    # "titleHasWidth":Z
    .end local v42    # "titleTop":I
    .end local v43    # "topChild":Landroid/view/View;
    .end local v44    # "toplp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v15    # "i":I
    .restart local v21    # "leftViewsCount":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_e

    .line 2186
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2187
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 2188
    .local v30, "rightViewsCount":I
    const/4 v15, 0x0

    :goto_10
    move/from16 v0, v30

    if-ge v15, v0, :cond_21

    .line 2190
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Toolbar;->V_SWEEP_VI_DEMO:Z

    move/from16 v46, v0

    if-eqz v46, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v46, v0

    if-eqz v46, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v47, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_20

    .line 2188
    :goto_11
    add-int/lit8 v15, v15, 0x1

    goto :goto_10

    .line 2194
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    goto :goto_11

    .line 2200
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2201
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v12}, Landroid/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v11

    .line 2202
    .local v11, "centerViewsWidth":I
    sub-int v46, v45, v24

    sub-int v46, v46, v25

    div-int/lit8 v46, v46, 0x2

    add-int v27, v24, v46

    .line 2203
    .local v27, "parentCenter":I
    div-int/lit8 v13, v11, 0x2

    .line 2204
    .local v13, "halfCenterViewsWidth":I
    sub-int v8, v27, v13

    .line 2205
    .local v8, "centerLeft":I
    add-int v9, v8, v11

    .line 2206
    .local v9, "centerRight":I
    move/from16 v0, v20

    if-ge v8, v0, :cond_23

    .line 2207
    move/from16 v8, v20

    .line 2212
    :cond_22
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2213
    .local v10, "centerViewsCount":I
    const/4 v15, 0x0

    :goto_13
    if-ge v15, v10, :cond_25

    .line 2215
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Toolbar;->V_SWEEP_VI_DEMO:Z

    move/from16 v46, v0

    if-eqz v46, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v46, v0

    if-eqz v46, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v47, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_24

    .line 2213
    :goto_14
    add-int/lit8 v15, v15, 0x1

    goto :goto_13

    .line 2208
    .end local v10    # "centerViewsCount":I
    :cond_23
    move/from16 v0, v29

    if-le v9, v0, :cond_22

    .line 2209
    sub-int v46, v9, v29

    sub-int v8, v8, v46

    goto :goto_12

    .line 2219
    .restart local v10    # "centerViewsCount":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v8, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v8

    goto :goto_14

    .line 2223
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->clear()V

    .line 2224
    return-void

    .line 2089
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 41
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1829
    const/4 v6, 0x0

    .line 1830
    .local v6, "width":I
    const/16 v27, 0x0

    .line 1831
    .local v27, "height":I
    const/16 v23, 0x0

    .line 1833
    .local v23, "childState":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toolbar;->mTempMargins:[I

    .line 1836
    .local v13, "collapsingMargins":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1837
    const/16 v31, 0x1

    .line 1838
    .local v31, "marginStartIndex":I
    const/16 v30, 0x0

    .line 1845
    .local v30, "marginEndIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/Toolbar;->V_SWEEP_VI_DEMO:Z

    if-eqz v3, :cond_0

    .line 1846
    invoke-direct/range {p0 .. p2}, Landroid/widget/Toolbar;->measureAnimationContainer(II)V

    .line 1852
    :cond_0
    const/16 v35, 0x0

    .line 1853
    .local v35, "navWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1854
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1856
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v35, v3, v5

    .line 1857
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1859
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v23

    .line 1862
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1863
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v35, v3, v5

    .line 1867
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1869
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v23

    .line 1872
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v25

    .line 1873
    .local v25, "contentInsetStart":I
    move/from16 v0, v25

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v6, v3

    .line 1874
    const/4 v3, 0x0

    sub-int v5, v25, v35

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v13, v31

    .line 1876
    const/16 v34, 0x0

    .line 1877
    .local v34, "menuWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1878
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1880
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v34, v3, v5

    .line 1881
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1883
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v23

    .line 1886
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v24

    .line 1887
    .local v24, "contentInsetEnd":I
    move/from16 v0, v24

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v6, v3

    .line 1888
    const/4 v3, 0x0

    sub-int v5, v24, v34

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v13, v30

    .line 1890
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1891
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1893
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1895
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v23

    .line 1898
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1899
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1901
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1903
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v23

    .line 1906
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v22

    .line 1907
    .local v22, "childCount":I
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_1
    move/from16 v0, v28

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 1908
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1909
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/Toolbar$LayoutParams;

    .line 1910
    .local v29, "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/Toolbar;->V_SWEEP_VI_DEMO:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    if-ne v4, v3, :cond_8

    .line 1907
    :cond_6
    :goto_2
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 1840
    .end local v4    # "child":Landroid/view/View;
    .end local v22    # "childCount":I
    .end local v24    # "contentInsetEnd":I
    .end local v25    # "contentInsetStart":I
    .end local v28    # "i":I
    .end local v29    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v30    # "marginEndIndex":I
    .end local v31    # "marginStartIndex":I
    .end local v34    # "menuWidth":I
    .end local v35    # "navWidth":I
    :cond_7
    const/16 v31, 0x0

    .line 1841
    .restart local v31    # "marginStartIndex":I
    const/16 v30, 0x1

    .restart local v30    # "marginEndIndex":I
    goto/16 :goto_0

    .line 1916
    .restart local v4    # "child":Landroid/view/View;
    .restart local v22    # "childCount":I
    .restart local v24    # "contentInsetEnd":I
    .restart local v25    # "contentInsetStart":I
    .restart local v28    # "i":I
    .restart local v29    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v34    # "menuWidth":I
    .restart local v35    # "navWidth":I
    :cond_8
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1918
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1919
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v23

    goto :goto_2

    .line 1922
    .end local v4    # "child":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_9
    const/16 v39, 0x0

    .line 1923
    .local v39, "titleWidth":I
    const/16 v37, 0x0

    .line 1924
    .local v37, "titleHeight":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    add-int v12, v3, v5

    .line 1925
    .local v12, "titleVertMargins":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    add-int v38, v3, v5

    .line 1926
    .local v38, "titleHorizMargins":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1928
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/Toolbar;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_b

    .line 1929
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    sget-object v7, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v21

    .line 1931
    .local v21, "appearance":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v40

    .line 1932
    .local v40, "value":Landroid/util/TypedValue;
    move-object/from16 v0, v40

    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v36

    .line 1933
    .local v36, "textSize":F
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 1935
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1936
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v26, v0

    .line 1938
    .local v26, "fontScale":F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Toolbar;->mMaxFontScale:F

    cmpl-float v3, v26, v3

    if-lez v3, :cond_a

    .line 1939
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mMaxFontScale:F

    move/from16 v26, v0

    .line 1941
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    mul-float v7, v36, v26

    invoke-virtual {v3, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1947
    .end local v21    # "appearance":Landroid/content/res/TypedArray;
    .end local v26    # "fontScale":F
    .end local v36    # "textSize":F
    .end local v40    # "value":Landroid/util/TypedValue;
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v10, v6, v38

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-direct/range {v7 .. v13}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v39

    .line 1950
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v39, v3, v5

    .line 1951
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int v37, v3, v5

    .line 1952
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v23

    .line 1954
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1955
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v17, v6, v38

    add-int v19, v37, v12

    move-object/from16 v14, p0

    move/from16 v16, p1

    move/from16 v18, p2

    move-object/from16 v20, v13

    invoke-direct/range {v14 .. v20}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    move/from16 v0, v39

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 1959
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int v37, v37, v3

    .line 1961
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v23

    .line 1964
    :cond_d
    add-int v6, v6, v39

    .line 1965
    move/from16 v0, v27

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1969
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v6, v3

    .line 1970
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int v27, v27, v3

    .line 1972
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v5, -0x1000000

    and-int v5, v5, v23

    move/from16 v0, p1

    invoke-static {v3, v0, v5}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    move-result v33

    .line 1975
    .local v33, "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v5, v23, 0x10

    move/from16 v0, p2

    invoke-static {v3, v0, v5}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    move-result v32

    .line 1979
    .local v32, "measuredHeight":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Toolbar;->shouldCollapse()Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v32, 0x0

    .end local v32    # "measuredHeight":I
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1980
    return-void

    .line 1943
    .end local v33    # "measuredWidth":I
    .restart local v21    # "appearance":Landroid/content/res/TypedArray;
    .restart local v36    # "textSize":F
    .restart local v40    # "value":Landroid/util/TypedValue;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    move/from16 v0, v36

    invoke-virtual {v3, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1427
    move-object v2, p1

    check-cast v2, Landroid/widget/Toolbar$SavedState;

    .line 1428
    .local v2, "ss":Landroid/widget/Toolbar$SavedState;
    invoke-virtual {v2}, Landroid/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1430
    iget-object v3, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    .line 1431
    .local v1, "menu":Landroid/view/Menu;
    :goto_0
    iget v3, v2, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 1432
    iget v3, v2, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1433
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1434
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1438
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v3, v2, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v3, :cond_1

    .line 1439
    invoke-direct {p0}, Landroid/widget/Toolbar;->postShowOverflowMenu()V

    .line 1441
    :cond_1
    return-void

    .line 1430
    .end local v1    # "menu":Landroid/view/Menu;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v0, 0x1

    .line 602
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 603
    iget-object v1, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RtlSpacingHelper;->setDirection(Z)V

    .line 604
    return-void

    .line 603
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1414
    new-instance v0, Landroid/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1416
    .local v0, "state":Landroid/widget/Toolbar$SavedState;
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 1417
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1420
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1422
    return-object v0
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1730
    invoke-virtual {p0, p2}, Landroid/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1731
    invoke-virtual {p0, p2}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1733
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1461
    iget-boolean v2, p0, Landroid/widget/Toolbar;->V_SWEEP_VI_DEMO:Z

    if-eqz v2, :cond_0

    .line 1462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1477
    const-string v2, "Toolbar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTouchEvent - ELSE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1483
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 1484
    iput-boolean v6, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    .line 1487
    :cond_1
    iget-boolean v2, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    if-nez v2, :cond_2

    .line 1488
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1489
    .local v1, "handled":Z
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 1490
    iput-boolean v5, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    .line 1494
    .end local v1    # "handled":Z
    :cond_2
    if-eq v0, v5, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 1495
    :cond_3
    iput-boolean v6, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    .line 1498
    :cond_4
    return v5

    .line 1464
    .end local v0    # "action":I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/Toolbar;->checkSweepAction(FF)V

    .line 1465
    const-string v2, "Toolbar"

    const-string/jumbo v3, "onTouchEvent - ACTION_UP"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1468
    :pswitch_1
    const-string v2, "Toolbar"

    const-string/jumbo v3, "onTouchEvent - ACTION_DOWN"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1471
    :pswitch_2
    const-string v2, "Toolbar"

    const-string/jumbo v3, "onTouchEvent - ACTION_MOVE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1474
    :pswitch_3
    const-string v2, "Toolbar"

    const-string/jumbo v3, "onTouchEvent - ACTION_CANCEL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method removeChildrenForExpandedActionView()V
    .locals 6

    .prologue
    .line 2425
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v1

    .line 2427
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2428
    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2429
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar$LayoutParams;

    .line 2430
    .local v3, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v4, v3, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eq v0, v4, :cond_0

    .line 2431
    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->removeViewAt(I)V

    .line 2432
    iget-object v4, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2427
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2435
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_1
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    .prologue
    .line 2456
    iput-boolean p1, p0, Landroid/widget/Toolbar;->mCollapsible:Z

    .line 2457
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 2458
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1
    .param p1, "contentInsetLeft"    # I
    .param p2, "contentInsetRight"    # I

    .prologue
    .line 1299
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 1300
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    .prologue
    .line 1241
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RtlSpacingHelper;->setRelative(II)V

    .line 1242
    return-void
.end method

.method public setExpandShrinkButton(IIZII)V
    .locals 10
    .param p1, "displayId"    # I
    .param p2, "tintColor"    # I
    .param p3, "isExapndable"    # Z
    .param p4, "rotation"    # I
    .param p5, "visibility"    # I

    .prologue
    .line 387
    iget-object v5, p0, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandResId:[I

    if-nez v5, :cond_2

    .line 392
    const/4 v5, 0x4

    new-array v5, v5, [I

    iput-object v5, p0, Landroid/widget/Toolbar;->mExpandResId:[I

    .line 393
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandResId:[I

    const/4 v6, 0x0

    const v7, 0x1080944

    aput v7, v5, v6

    .line 394
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandResId:[I

    const/4 v6, 0x1

    const v7, 0x1080945

    aput v7, v5, v6

    .line 395
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandResId:[I

    const/4 v6, 0x2

    const v7, 0x1080946

    aput v7, v5, v6

    .line 396
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandResId:[I

    const/4 v6, 0x3

    const v7, 0x1080943

    aput v7, v5, v6

    .line 399
    :cond_2
    iget-object v5, p0, Landroid/widget/Toolbar;->mShrinkResId:[I

    if-nez v5, :cond_3

    .line 400
    const/4 v5, 0x4

    new-array v5, v5, [I

    iput-object v5, p0, Landroid/widget/Toolbar;->mShrinkResId:[I

    .line 401
    iget-object v5, p0, Landroid/widget/Toolbar;->mShrinkResId:[I

    const/4 v6, 0x0

    const v7, 0x1080a0c

    aput v7, v5, v6

    .line 402
    iget-object v5, p0, Landroid/widget/Toolbar;->mShrinkResId:[I

    const/4 v6, 0x1

    const v7, 0x1080a0d

    aput v7, v5, v6

    .line 403
    iget-object v5, p0, Landroid/widget/Toolbar;->mShrinkResId:[I

    const/4 v6, 0x2

    const v7, 0x1080a0e

    aput v7, v5, v6

    .line 404
    iget-object v5, p0, Landroid/widget/Toolbar;->mShrinkResId:[I

    const/4 v6, 0x3

    const v7, 0x1080a0b

    aput v7, v5, v6

    .line 408
    :cond_3
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    if-nez v5, :cond_7

    .line 409
    new-instance v5, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    .line 410
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x60

    const/16 v6, 0x60

    invoke-direct {v0, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 411
    .local v0, "framelayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const v5, 0x800015

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 412
    const/16 v5, 0x24

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 413
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    iget-object v5, p0, Landroid/widget/Toolbar;->mAnimationContainer:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 415
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10808ab

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 416
    .local v3, "ripple":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 418
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    new-instance v6, Landroid/widget/Toolbar$3;

    invoke-direct {v6, p0}, Landroid/widget/Toolbar$3;-><init>(Landroid/widget/Toolbar;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    if-eqz p3, :cond_6

    .line 440
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    const-string v6, "Expand"

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 445
    :goto_1
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    new-instance v6, Landroid/widget/Toolbar$4;

    invoke-direct {v6, p0}, Landroid/widget/Toolbar$4;-><init>(Landroid/widget/Toolbar;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 488
    .end local v0    # "framelayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "ripple":Landroid/graphics/drawable/Drawable;
    :goto_2
    const/4 v2, 0x0

    .line 489
    .local v2, "resId":I
    if-eqz p3, :cond_d

    .line 490
    if-eqz p4, :cond_4

    const/4 v5, 0x2

    if-ne p4, v5, :cond_9

    .line 491
    :cond_4
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandResId:[I

    aget v2, v5, p1

    .line 526
    :cond_5
    :goto_3
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 528
    new-instance v4, Landroid/content/res/ColorStateList;

    const/4 v5, 0x2

    new-array v5, v5, [[I

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, 0x101009e

    aput v9, v7, v8

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput p2, v6, v7

    const/4 v7, 0x1

    aput p2, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 534
    .local v4, "tint":Landroid/content/res/ColorStateList;
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 535
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 537
    iget-object v5, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v5, :cond_0

    .line 538
    if-eqz p5, :cond_13

    .line 539
    iget-object v5, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v5}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 540
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 541
    iget-object v5, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v5, v1}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 442
    .end local v1    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "resId":I
    .end local v4    # "tint":Landroid/content/res/ColorStateList;
    .restart local v0    # "framelayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "ripple":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    const-string v6, "Shrink"

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 481
    .end local v0    # "framelayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "ripple":Landroid/graphics/drawable/Drawable;
    :cond_7
    if-eqz p3, :cond_8

    .line 482
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    const-string v6, "Expand"

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 484
    :cond_8
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandShrinkButton:Landroid/widget/ImageButton;

    const-string v6, "Shrink"

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 493
    .restart local v2    # "resId":I
    :cond_9
    const/4 v5, 0x1

    if-ne p4, v5, :cond_b

    .line 494
    sget-object v5, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-ne p1, v5, :cond_a

    .line 495
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandResId:[I

    const/4 v6, 0x3

    aget v2, v5, v6

    goto :goto_3

    .line 496
    :cond_a
    sget-object v5, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-ne p1, v5, :cond_5

    .line 497
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandResId:[I

    const/4 v6, 0x2

    aget v2, v5, v6

    goto/16 :goto_3

    .line 499
    :cond_b
    const/4 v5, 0x3

    if-ne p4, v5, :cond_5

    .line 500
    sget-object v5, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-ne p1, v5, :cond_c

    .line 501
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandResId:[I

    const/4 v6, 0x2

    aget v2, v5, v6

    goto/16 :goto_3

    .line 502
    :cond_c
    sget-object v5, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-ne p1, v5, :cond_5

    .line 503
    iget-object v5, p0, Landroid/widget/Toolbar;->mExpandResId:[I

    const/4 v6, 0x3

    aget v2, v5, v6

    goto/16 :goto_3

    .line 508
    :cond_d
    if-eqz p4, :cond_e

    const/4 v5, 0x2

    if-ne p4, v5, :cond_f

    .line 509
    :cond_e
    iget-object v5, p0, Landroid/widget/Toolbar;->mShrinkResId:[I

    aget v2, v5, p1

    goto/16 :goto_3

    .line 511
    :cond_f
    const/4 v5, 0x1

    if-ne p4, v5, :cond_11

    .line 512
    sget-object v5, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-ne p1, v5, :cond_10

    .line 513
    iget-object v5, p0, Landroid/widget/Toolbar;->mShrinkResId:[I

    const/4 v6, 0x3

    aget v2, v5, v6

    goto/16 :goto_3

    .line 514
    :cond_10
    sget-object v5, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-ne p1, v5, :cond_5

    .line 515
    iget-object v5, p0, Landroid/widget/Toolbar;->mShrinkResId:[I

    const/4 v6, 0x2

    aget v2, v5, v6

    goto/16 :goto_3

    .line 517
    :cond_11
    const/4 v5, 0x3

    if-ne p4, v5, :cond_5

    .line 518
    sget-object v5, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-ne p1, v5, :cond_12

    .line 519
    iget-object v5, p0, Landroid/widget/Toolbar;->mShrinkResId:[I

    const/4 v6, 0x2

    aget v2, v5, v6

    goto/16 :goto_3

    .line 520
    :cond_12
    sget-object v5, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-ne p1, v5, :cond_5

    .line 521
    iget-object v5, p0, Landroid/widget/Toolbar;->mShrinkResId:[I

    const/4 v6, 0x3

    aget v2, v5, v6

    goto/16 :goto_3

    .line 542
    .restart local v4    # "tint":Landroid/content/res/ColorStateList;
    :cond_13
    if-nez p5, :cond_0

    .line 543
    iget-object v5, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v5}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 544
    .restart local v1    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v5

    if-gtz v5, :cond_0

    .line 545
    const/16 v5, 0xa8

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 546
    iget-object v5, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v5, v1}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 616
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 617
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 732
    if-eqz p1, :cond_2

    .line 733
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureLogoView()V

    .line 734
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 741
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 744
    :cond_1
    return-void

    .line 737
    :cond_2
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 739
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setLogoDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 766
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 767
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 778
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureLogoView()V

    .line 781
    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 782
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 784
    :cond_1
    return-void
.end method

.method public setMenu(Lcom/android/internal/view/menu/MenuBuilder;Landroid/widget/ActionMenuPresenter;)V
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "outerPresenter"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 659
    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-nez v1, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenuView()V

    .line 664
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 665
    .local v0, "oldMenu":Lcom/android/internal/view/menu/MenuBuilder;
    if-eq v0, p1, :cond_0

    .line 669
    if-eqz v0, :cond_2

    .line 670
    iget-object v1, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 671
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 674
    :cond_2
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_3

    .line 675
    new-instance v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0, v4}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar$1;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 678
    :cond_3
    invoke-virtual {p2, v3}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 679
    if-eqz p1, :cond_4

    .line 680
    iget-object v1, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 681
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 688
    :goto_1
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget v2, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setPopupTheme(I)V

    .line 689
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, p2}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    .line 690
    iput-object p2, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    goto :goto_0

    .line 683
    :cond_4
    iget-object v1, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p2, v1, v4}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 684
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 685
    invoke-virtual {p2, v3}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 686
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v1, v3}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_1
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 2465
    iput-object p1, p0, Landroid/widget/Toolbar;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 2466
    iput-object p2, p0, Landroid/widget/Toolbar;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 2467
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1014
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 1015
    return-void

    .line 1014
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 1028
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    .line 1031
    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1032
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1034
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1051
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1052
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    .line 1069
    if-eqz p1, :cond_3

    .line 1071
    iget-boolean v0, p0, Landroid/widget/Toolbar;->mChangedTheme:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1072
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAutoMirrored(Z)V

    .line 1075
    :cond_0
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    .line 1076
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1077
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 1083
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 1084
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1086
    :cond_2
    return-void

    .line 1079
    :cond_3
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1080
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 1081
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1110
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    .line 1111
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1112
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/Toolbar$OnMenuItemClickListener;

    .prologue
    .line 1206
    iput-object p1, p0, Landroid/widget/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    .line 1207
    return-void
.end method

.method public setOnToolbarSweepListener(Landroid/widget/Toolbar$OnToolbarSweepListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/Toolbar$OnToolbarSweepListener;

    .prologue
    .line 1222
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1133
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    .line 1134
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1135
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 581
    iget v0, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 582
    iput p1, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    .line 583
    if-nez p1, :cond_1

    .line 584
    iget-object v0, p0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 906
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 907
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 917
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 918
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 919
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 920
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 921
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 922
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 923
    iget v1, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 924
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 926
    :cond_0
    iget v1, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v1, :cond_1

    .line 927
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 930
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 931
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 937
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 938
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    :cond_3
    iput-object p1, p0, Landroid/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 941
    return-void

    .line 933
    :cond_4
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 934
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 935
    iget-object v1, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 959
    iput p2, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 960
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 963
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 983
    iput p1, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    .line 984
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 987
    :cond_0
    return-void
.end method

.method public setSweepImageColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/16 v3, 0xd9

    .line 1695
    iget-object v2, p0, Landroid/widget/Toolbar;->mTriangleToLeft:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1696
    iget-object v2, p0, Landroid/widget/Toolbar;->mTriangleToLeft:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1697
    .local v1, "temp":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 1698
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "temp":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1699
    .local v0, "bmpDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 1700
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1701
    iget-object v2, p0, Landroid/widget/Toolbar;->mTriangleToLeft:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1705
    .end local v0    # "bmpDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    iget-object v2, p0, Landroid/widget/Toolbar;->mTriangleToRight:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1706
    iget-object v2, p0, Landroid/widget/Toolbar;->mTriangleToRight:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1707
    .restart local v1    # "temp":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 1708
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "temp":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1709
    .restart local v0    # "bmpDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 1710
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1711
    iget-object v2, p0, Landroid/widget/Toolbar;->mTriangleToRight:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1714
    .end local v0    # "bmpDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 851
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 852
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 863
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 864
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 865
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 866
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 867
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 868
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 869
    iget v1, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 870
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 872
    :cond_0
    iget v1, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    if-eqz v1, :cond_1

    .line 873
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 876
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 877
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 883
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 884
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    :cond_3
    iput-object p1, p0, Landroid/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 887
    return-void

    .line 879
    :cond_4
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 880
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 881
    iget-object v1, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 948
    iput p2, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    .line 949
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 952
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 971
    iput p1, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    .line 972
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 975
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
