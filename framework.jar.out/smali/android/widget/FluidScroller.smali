.class Landroid/widget/FluidScroller;
.super Ljava/lang/Object;
.source "FluidScroller.java"


# static fields
.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:I = 0x14d

.field private static final DURATION_FADE_OUT:I

.field private static final DURATION_RESIZE:I = 0x64

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x1

.field private static final OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FluidScroller"

.field private static final TAP_TIMEOUT:J

.field private static final THUMB_POSITION_INSIDE:I = 0x1

.field private static final THUMB_POSITION_MIDPOINT:I

.field private static TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final EFFECT_STATE_CLOSE:I

.field private final EFFECT_STATE_OPEN:I

.field private mAlwaysShow:Z

.field private mColorPrimary:I

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEffectState:I

.field private mEnabled:Z

.field private mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

.field private mFastScrollEffectText:Ljava/lang/String;

.field private mFirstVisibleItem:I

.field private mHeaderCount:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private final mList:Landroid/widget/AbsListView;

.field private mListAdapter:Landroid/widget/Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private mOldThumbPosition:F

.field private mOrientation:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/view/View;

.field private mPreviewMarginEnd:I

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollY:F

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private mTextAppearance:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private mThumbMarginEnd:I

.field private mThumbMinHeight:I

.field private mThumbMinWidth:I

.field private mThumbOffset:F

.field private mThumbPosition:I

.field private mThumbRange:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mUpdatingLayout:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    sget-boolean v0, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa7

    :goto_0
    sput v0, Landroid/widget/FluidScroller;->DURATION_FADE_OUT:I

    .line 103
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/widget/FluidScroller;->TAP_TIMEOUT:J

    .line 1806
    new-instance v0, Landroid/widget/FluidScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/FluidScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FluidScroller;->LEFT:Landroid/util/Property;

    .line 1822
    new-instance v0, Landroid/widget/FluidScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/FluidScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FluidScroller;->TOP:Landroid/util/Property;

    .line 1838
    new-instance v0, Landroid/widget/FluidScroller$5;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/FluidScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FluidScroller;->RIGHT:Landroid/util/Property;

    .line 1854
    new-instance v0, Landroid/widget/FluidScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/FluidScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FluidScroller;->BOTTOM:Landroid/util/Property;

    return-void

    .line 63
    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public constructor <init>(Landroid/widget/AbsListView;I)V
    .locals 8
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "styleResId"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/FluidScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 106
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/FluidScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 107
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/FluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 122
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/widget/FluidScroller;->mPreviewResId:[I

    .line 175
    iput v7, p0, Landroid/widget/FluidScroller;->mCurrentSection:I

    .line 178
    iput v7, p0, Landroid/widget/FluidScroller;->mScrollbarPosition:I

    .line 230
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/widget/FluidScroller;->mPendingDrag:J

    .line 238
    iput v7, p0, Landroid/widget/FluidScroller;->mColorPrimary:I

    .line 239
    iput v6, p0, Landroid/widget/FluidScroller;->mScrollY:F

    .line 241
    iput v2, p0, Landroid/widget/FluidScroller;->EFFECT_STATE_CLOSE:I

    .line 242
    iput v1, p0, Landroid/widget/FluidScroller;->EFFECT_STATE_OPEN:I

    .line 243
    iput v2, p0, Landroid/widget/FluidScroller;->mEffectState:I

    .line 247
    iput v6, p0, Landroid/widget/FluidScroller;->mOldThumbPosition:F

    .line 252
    new-instance v3, Landroid/widget/FluidScroller$1;

    invoke-direct {v3, p0}, Landroid/widget/FluidScroller$1;-><init>(Landroid/widget/FluidScroller;)V

    iput-object v3, p0, Landroid/widget/FluidScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 262
    new-instance v3, Landroid/widget/FluidScroller$2;

    invoke-direct {v3, p0}, Landroid/widget/FluidScroller$2;-><init>(Landroid/widget/FluidScroller;)V

    iput-object v3, p0, Landroid/widget/FluidScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 270
    iput-object p1, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    .line 271
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    iput v3, p0, Landroid/widget/FluidScroller;->mOldItemCount:I

    .line 272
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iput v3, p0, Landroid/widget/FluidScroller;->mOldChildCount:I

    .line 274
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    .line 275
    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/FluidScroller;->mScaledTouchSlop:I

    .line 276
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getScrollBarStyle()I

    move-result v3

    iput v3, p0, Landroid/widget/FluidScroller;->mScrollBarStyle:I

    .line 278
    iput-boolean v1, p0, Landroid/widget/FluidScroller;->mScrollCompleted:Z

    .line 279
    iput v1, p0, Landroid/widget/FluidScroller;->mState:I

    .line 280
    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    :goto_0
    iput-boolean v1, p0, Landroid/widget/FluidScroller;->mMatchDragPosition:Z

    .line 283
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 284
    iget-object v1, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 285
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 286
    iget-object v1, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 287
    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    .line 288
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 289
    new-instance v1, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    .line 290
    iget-object v1, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroid/widget/FluidScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 291
    iget-object v1, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroid/widget/FluidScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 292
    invoke-virtual {p0, p2}, Landroid/widget/FluidScroller;->setStyle(I)V

    .line 294
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    .line 295
    .local v0, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v0, p0, Landroid/widget/FluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 296
    iget-object v1, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 297
    iget-object v1, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 298
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 300
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 301
    iget-object v1, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 303
    iget-object v1, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050243

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/FluidScroller;->mPreviewMarginEnd:I

    .line 304
    iget-object v1, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050244

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/FluidScroller;->mThumbMarginEnd:I

    .line 306
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/FluidScroller;->mPreviewPadding:I

    iget v4, p0, Landroid/widget/FluidScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 307
    iget-object v1, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/FluidScroller;->mPreviewPadding:I

    iget v4, p0, Landroid/widget/FluidScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 311
    :goto_1
    invoke-direct {p0}, Landroid/widget/FluidScroller;->getSectionsFromIndexer()V

    .line 312
    iget v1, p0, Landroid/widget/FluidScroller;->mOldChildCount:I

    iget v2, p0, Landroid/widget/FluidScroller;->mOldItemCount:I

    invoke-direct {p0, v1, v2}, Landroid/widget/FluidScroller;->updateLongList(II)V

    .line 313
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FluidScroller;->setScrollbarPosition(I)V

    .line 314
    invoke-direct {p0}, Landroid/widget/FluidScroller;->postAutoHide()V

    .line 315
    return-void

    .end local v0    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_0
    move v1, v2

    .line 280
    goto/16 :goto_0

    .line 309
    .restart local v0    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_1
    iget-object v1, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/widget/FluidScroller;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/FluidScroller;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FluidScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/FluidScroller;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/FluidScroller;

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/FluidScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/FluidScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Landroid/widget/FluidScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 1799
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 9
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1870
    sget-object v4, Landroid/widget/FluidScroller;->LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1871
    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FluidScroller;->TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1872
    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FluidScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1873
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FluidScroller;->BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1874
    .local v0, "bottom":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v7

    aput-object v3, v4, v8

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .prologue
    .line 1792
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 670
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 671
    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 672
    return-void

    .line 671
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private beginDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1498
    const-string v0, "FluidScroller"

    const-string v1, "beginDrag() !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FluidScroller;->mPendingDrag:J

    .line 1501
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/FluidScroller;->setState(I)V

    .line 1503
    iget-object v0, p0, Landroid/widget/FluidScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    .line 1504
    invoke-direct {p0}, Landroid/widget/FluidScroller;->getSectionsFromIndexer()V

    .line 1508
    :cond_0
    iget-object v0, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1509
    iget-object v0, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1512
    invoke-direct {p0}, Landroid/widget/FluidScroller;->cancelFling()V

    .line 1513
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1474
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1476
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1477
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1478
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .prologue
    .line 1486
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FluidScroller;->mPendingDrag:J

    .line 1487
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 606
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 608
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 609
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 611
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 612
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 613
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 616
    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 618
    return-object v1
.end method

.method private getColorWithAlpha(IF)I
    .locals 6
    .param p1, "color"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 1878
    const/4 v3, 0x0

    .line 1879
    .local v3, "newColor":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1880
    .local v0, "alpha":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 1881
    .local v4, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 1882
    .local v2, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 1883
    .local v1, "b":I
    invoke-static {v0, v4, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 1885
    return v3
.end method

.method private getPosFromItemCount(III)F
    .locals 20
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1381
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1382
    .local v15, "sectionIndexer":Landroid/widget/SectionIndexer;
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mListAdapter:Landroid/widget/Adapter;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 1383
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/FluidScroller;->getSectionsFromIndexer()V

    .line 1386
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_4

    .line 1388
    :cond_2
    const/4 v12, 0x0

    .line 1466
    :cond_3
    :goto_0
    return v12

    .line 1391
    :cond_4
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_6

    const/4 v5, 0x1

    .line 1393
    .local v5, "hasSections":Z
    :goto_1
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FluidScroller;->mMatchDragPosition:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 1394
    :cond_5
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_7

    .line 1396
    const/4 v12, 0x0

    goto :goto_0

    .line 1391
    .end local v5    # "hasSections":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 1398
    .restart local v5    # "hasSections":Z
    :cond_7
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    sub-int v18, p3, p2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v12, v17, v18

    goto :goto_0

    .line 1403
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mHeaderCount:I

    move/from16 v17, v0

    sub-int p1, p1, v17

    .line 1404
    if-gez p1, :cond_9

    .line 1405
    const/4 v12, 0x0

    goto :goto_0

    .line 1407
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mHeaderCount:I

    move/from16 v17, v0

    sub-int p3, p3, v17

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1412
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v17

    if-nez v17, :cond_b

    .line 1413
    :cond_a
    const/4 v6, 0x0

    .line 1419
    .local v6, "incrementalPos":F
    :goto_2
    move/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v13

    .line 1420
    .local v13, "section":I
    invoke-interface {v15, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v16

    .line 1421
    .local v16, "sectionPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v14, v0

    .line 1423
    .local v14, "sectionCount":I
    add-int/lit8 v17, v14, -0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_d

    .line 1425
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    if-ge v0, v14, :cond_c

    .line 1426
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1430
    .local v9, "nextSectionPos":I
    :goto_3
    sub-int v11, v9, v16

    .line 1437
    .end local v9    # "nextSectionPos":I
    .local v11, "positionsInSection":I
    :goto_4
    if-nez v11, :cond_e

    .line 1438
    const/4 v10, 0x0

    .line 1444
    .local v10, "posWithinSection":F
    :goto_5
    int-to-float v0, v13

    move/from16 v17, v0

    add-float v17, v17, v10

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 1449
    .local v12, "result":F
    if-lez p1, :cond_3

    add-int v17, p1, p2

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_3

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    add-int/lit8 v18, p2, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1451
    .local v7, "lastChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v2

    .line 1454
    .local v2, "bottomPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1455
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1456
    .local v8, "maxSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getHeight()I

    move-result v17

    sub-int v17, v17, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v4, v17, v18

    .line 1461
    .local v4, "currentVisibleSize":I
    :goto_6
    if-lez v4, :cond_3

    if-lez v8, :cond_3

    .line 1462
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v12

    int-to-float v0, v4

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v17, v17, v18

    add-float v12, v12, v17

    goto/16 :goto_0

    .line 1415
    .end local v2    # "bottomPadding":I
    .end local v4    # "currentVisibleSize":I
    .end local v6    # "incrementalPos":F
    .end local v7    # "lastChild":Landroid/view/View;
    .end local v8    # "maxSize":I
    .end local v10    # "posWithinSection":F
    .end local v11    # "positionsInSection":I
    .end local v12    # "result":F
    .end local v13    # "section":I
    .end local v14    # "sectionCount":I
    .end local v16    # "sectionPos":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v17

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v6, v17, v18

    .restart local v6    # "incrementalPos":F
    goto/16 :goto_2

    .line 1428
    .restart local v13    # "section":I
    .restart local v14    # "sectionCount":I
    .restart local v16    # "sectionPos":I
    :cond_c
    add-int/lit8 v9, p3, -0x1

    .restart local v9    # "nextSectionPos":I
    goto/16 :goto_3

    .line 1432
    .end local v9    # "nextSectionPos":I
    :cond_d
    sub-int v11, p3, v16

    .restart local v11    # "positionsInSection":I
    goto/16 :goto_4

    .line 1440
    :cond_e
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v6

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    int-to-float v0, v11

    move/from16 v18, v0

    div-float v10, v17, v18

    .restart local v10    # "posWithinSection":F
    goto/16 :goto_5

    .line 1458
    .restart local v2    # "bottomPadding":I
    .restart local v7    # "lastChild":Landroid/view/View;
    .restart local v12    # "result":F
    :cond_f
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v8, v17, v2

    .line 1459
    .restart local v8    # "maxSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getHeight()I

    move-result v17

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v4, v17, v18

    .restart local v4    # "currentVisibleSize":I
    goto :goto_6
.end method

.method private getPosFromMotionEvent(F)F
    .locals 3
    .param p1, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 1364
    iget v1, p0, Landroid/widget/FluidScroller;->mThumbRange:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    .line 1368
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Landroid/widget/FluidScroller;->mThumbOffset:F

    sub-float v1, p1, v1

    iget v2, p0, Landroid/widget/FluidScroller;->mThumbRange:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1059
    iput-object v3, p0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1061
    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1062
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 1063
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/FluidScroller;->mHeaderCount:I

    .line 1064
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1067
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    instance-of v2, v0, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 1068
    check-cast v2, Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 1070
    .local v1, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    .line 1071
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1072
    iput-object v0, p0, Landroid/widget/FluidScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1073
    iget-object v2, p0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FluidScroller;->mSections:[Ljava/lang/Object;

    .line 1083
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1
    :goto_0
    return-void

    .line 1075
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_2
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    .line 1076
    iput-object v0, p0, Landroid/widget/FluidScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1077
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1078
    iget-object v2, p0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FluidScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 1080
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_3
    iput-object v0, p0, Landroid/widget/FluidScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1081
    iput-object v3, p0, Landroid/widget/FluidScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 1773
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1774
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 1776
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1777
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1778
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 1779
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1776
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1781
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1785
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1742
    invoke-direct {p0, p1}, Landroid/widget/FluidScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Landroid/widget/FluidScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FluidScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPointInsideX(F)Z
    .locals 3
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1746
    iget-boolean v2, p0, Landroid/widget/FluidScroller;->mLayoutFromRight:Z

    if-eqz v2, :cond_2

    .line 1747
    iget-object v2, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 1749
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1747
    goto :goto_0

    .line 1749
    :cond_2
    iget-object v2, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isPointInsideY(F)Z
    .locals 4
    .param p1, "y"    # F

    .prologue
    .line 1754
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    .line 1755
    .local v1, "offset":F
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float v2, v3, v1

    .line 1756
    .local v2, "top":F
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    int-to-float v3, v3

    add-float v0, v3, v1

    .line 1758
    .local v0, "bottom":F
    cmpl-float v3, p1, v2

    if-ltz v3, :cond_0

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private layoutThumb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 851
    iget-object v0, p0, Landroid/widget/FluidScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 852
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/FluidScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 853
    iget-object v1, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FluidScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 854
    return-void
.end method

.method private layoutTrack()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 861
    iget-object v10, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 862
    .local v10, "track":Landroid/view/View;
    iget-object v7, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 863
    .local v7, "thumb":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/FluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 864
    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 865
    .local v5, "maxWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 866
    .local v4, "maxHeight":I
    const/high16 v13, -0x80000000

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 867
    .local v12, "widthMeasureSpec":I
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v2

    .line 869
    .local v2, "heightMeasureSpec":I
    invoke-virtual {v10, v12, v2}, Landroid/view/View;->measure(II)V

    .line 873
    iget v13, p0, Landroid/widget/FluidScroller;->mThumbPosition:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 874
    iget v9, v1, Landroid/graphics/Rect;->top:I

    .line 875
    .local v9, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 882
    .local v0, "bottom":I
    :goto_0
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 883
    .local v11, "trackWidth":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v14, v11

    div-int/lit8 v14, v14, 0x2

    add-int v3, v13, v14

    .line 884
    .local v3, "left":I
    add-int v6, v3, v11

    .line 885
    .local v6, "right":I
    invoke-virtual {v10, v3, v9, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 886
    return-void

    .line 877
    .end local v0    # "bottom":I
    .end local v3    # "left":I
    .end local v6    # "right":I
    .end local v9    # "top":I
    .end local v11    # "trackWidth":I
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    div-int/lit8 v8, v13, 0x2

    .line 878
    .local v8, "thumbHalfHeight":I
    iget v13, v1, Landroid/graphics/Rect;->top:I

    add-int v9, v13, v8

    .line 879
    .restart local v9    # "top":I
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v13, v8

    .restart local v0    # "bottom":I
    goto :goto_0
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 785
    if-nez p2, :cond_0

    .line 786
    const/4 v9, 0x0

    .line 787
    .local v9, "marginLeft":I
    const/4 v11, 0x0

    .line 788
    .local v11, "marginTop":I
    const/4 v10, 0x0

    .line 795
    .local v10, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 796
    .local v4, "container":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 797
    .local v6, "containerWidth":I
    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 798
    .local v1, "adjMaxHeight":I
    const/16 v16, 0x0

    sub-int v17, v6, v9

    sub-int v17, v17, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 799
    .local v2, "adjMaxWidth":I
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 800
    .local v15, "widthMeasureSpec":I
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v7

    .line 802
    .local v7, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v7}, Landroid/view/View;->measure(II)V

    .line 805
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 806
    .local v5, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 807
    .local v14, "width":I
    div-int/lit8 v16, v5, 0xa

    add-int v16, v16, v11

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    add-int v13, v16, v17

    .line 808
    .local v13, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v3, v13, v16

    .line 809
    .local v3, "bottom":I
    sub-int v16, v6, v14

    div-int/lit8 v16, v16, 0x2

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int v8, v16, v17

    .line 810
    .local v8, "left":I
    add-int v12, v8, v14

    .line 811
    .local v12, "right":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v13, v12, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 812
    return-void

    .line 790
    .end local v1    # "adjMaxHeight":I
    .end local v2    # "adjMaxWidth":I
    .end local v3    # "bottom":I
    .end local v4    # "container":Landroid/graphics/Rect;
    .end local v5    # "containerHeight":I
    .end local v6    # "containerWidth":I
    .end local v7    # "heightMeasureSpec":I
    .end local v8    # "left":I
    .end local v9    # "marginLeft":I
    .end local v10    # "marginRight":I
    .end local v11    # "marginTop":I
    .end local v12    # "right":I
    .end local v13    # "top":I
    .end local v14    # "width":I
    .end local v15    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 791
    .restart local v9    # "marginLeft":I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 792
    .restart local v11    # "marginTop":I
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->right:I

    .restart local v10    # "marginRight":I
    goto :goto_0
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 684
    iget-object v0, p0, Landroid/widget/FluidScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 685
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 686
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 687
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 688
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 690
    iget v1, p0, Landroid/widget/FluidScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    .line 691
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/FluidScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v1, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/FluidScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 713
    sget-boolean v16, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v16, :cond_3

    .line 714
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FluidScroller;->mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 715
    if-nez p2, :cond_0

    .line 716
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/FluidScroller;->mThumbMarginEnd:I

    .line 717
    .local v9, "marginRight":I
    const/4 v8, 0x0

    .line 732
    .local v8, "marginLeft":I
    :goto_0
    const/4 v10, 0x0

    .line 745
    .local v10, "marginTop":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 746
    .local v4, "container":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 748
    .local v5, "containerWidth":I
    if-nez p2, :cond_5

    .line 749
    move v11, v5

    .line 756
    .local v11, "maxWidth":I
    :goto_2
    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 757
    .local v1, "adjMaxHeight":I
    const/16 v16, 0x0

    sub-int v17, v11, v8

    sub-int v17, v17, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 758
    .local v2, "adjMaxWidth":I
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 759
    .local v15, "widthMeasureSpec":I
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v6

    .line 761
    .local v6, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v6}, Landroid/view/View;->measure(II)V

    .line 764
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 767
    .local v14, "width":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FluidScroller;->mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 768
    if-nez p2, :cond_7

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    :goto_3
    sub-int v12, v16, v9

    .line 769
    .local v12, "right":I
    sub-int v7, v12, v14

    .line 776
    .local v7, "left":I
    :goto_4
    move v13, v10

    .line 777
    .local v13, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v3, v13, v16

    .line 778
    .local v3, "bottom":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v7, v13, v12, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 779
    return-void

    .line 719
    .end local v1    # "adjMaxHeight":I
    .end local v2    # "adjMaxWidth":I
    .end local v3    # "bottom":I
    .end local v4    # "container":Landroid/graphics/Rect;
    .end local v5    # "containerWidth":I
    .end local v6    # "heightMeasureSpec":I
    .end local v7    # "left":I
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    .end local v10    # "marginTop":I
    .end local v11    # "maxWidth":I
    .end local v12    # "right":I
    .end local v13    # "top":I
    .end local v14    # "width":I
    .end local v15    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/FluidScroller;->mPreviewMarginEnd:I

    .line 720
    .restart local v9    # "marginRight":I
    const/4 v8, 0x0

    .restart local v8    # "marginLeft":I
    goto :goto_0

    .line 723
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    :cond_1
    if-nez p2, :cond_2

    .line 724
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/FluidScroller;->mThumbMarginEnd:I

    .line 725
    .restart local v8    # "marginLeft":I
    const/4 v9, 0x0

    .restart local v9    # "marginRight":I
    goto :goto_0

    .line 727
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    :cond_2
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/FluidScroller;->mPreviewMarginEnd:I

    .line 728
    .restart local v8    # "marginLeft":I
    const/4 v9, 0x0

    .restart local v9    # "marginRight":I
    goto :goto_0

    .line 734
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    :cond_3
    if-nez p3, :cond_4

    .line 735
    const/4 v8, 0x0

    .line 736
    .restart local v8    # "marginLeft":I
    const/4 v10, 0x0

    .line 737
    .restart local v10    # "marginTop":I
    const/4 v9, 0x0

    .restart local v9    # "marginRight":I
    goto :goto_1

    .line 739
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    .end local v10    # "marginTop":I
    :cond_4
    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 740
    .restart local v8    # "marginLeft":I
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 741
    .restart local v10    # "marginTop":I
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .restart local v9    # "marginRight":I
    goto/16 :goto_1

    .line 750
    .restart local v4    # "container":Landroid/graphics/Rect;
    .restart local v5    # "containerWidth":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FluidScroller;->mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v11

    .restart local v11    # "maxWidth":I
    goto/16 :goto_2

    .line 753
    .end local v11    # "maxWidth":I
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v16

    sub-int v11, v5, v16

    .restart local v11    # "maxWidth":I
    goto/16 :goto_2

    .line 768
    .restart local v1    # "adjMaxHeight":I
    .restart local v2    # "adjMaxWidth":I
    .restart local v6    # "heightMeasureSpec":I
    .restart local v14    # "width":I
    .restart local v15    # "widthMeasureSpec":I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v16

    goto :goto_3

    .line 771
    :cond_8
    if-nez p2, :cond_9

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    :goto_5
    add-int v7, v16, v8

    .line 772
    .restart local v7    # "left":I
    add-int v12, v7, v14

    .restart local v12    # "right":I
    goto :goto_4

    .line 771
    .end local v7    # "left":I
    .end local v12    # "right":I
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v16

    goto :goto_5
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2
    .param p1, "peekIfEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 492
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 493
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    invoke-direct {p0, v1}, Landroid/widget/FluidScroller;->setState(I)V

    .line 505
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 506
    return-void

    .line 495
    :cond_1
    iget v0, p0, Landroid/widget/FluidScroller;->mState:I

    if-ne v0, v1, :cond_2

    .line 496
    invoke-direct {p0}, Landroid/widget/FluidScroller;->postAutoHide()V

    goto :goto_0

    .line 497
    :cond_2
    if-eqz p1, :cond_0

    .line 498
    invoke-direct {p0, v1}, Landroid/widget/FluidScroller;->setState(I)V

    .line 499
    invoke-direct {p0}, Landroid/widget/FluidScroller;->postAutoHide()V

    goto :goto_0

    .line 502
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->stop()V

    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    .line 1025
    iget-object v0, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1026
    iget-object v0, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1027
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 3

    .prologue
    .line 939
    iget v1, p0, Landroid/widget/FluidScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 940
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 941
    iget-object v1, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 942
    return-void

    .line 939
    .end local v0    # "isPressed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollTo(F)V
    .locals 25
    .param p1, "position"    # F

    .prologue
    .line 1094
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FluidScroller;->mScrollCompleted:Z

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    .line 1097
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 1098
    .local v18, "sections":[Ljava/lang/Object;
    if-nez v18, :cond_3

    const/16 v16, 0x0

    .line 1100
    .local v16, "sectionCount":I
    :goto_0
    if-eqz v18, :cond_b

    if-lez v16, :cond_b

    .line 1101
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, p1

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    add-int/lit8 v24, v16, -0x1

    invoke-static/range {v22 .. v24}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 1103
    .local v5, "exactSection":I
    move/from16 v21, v5

    .line 1104
    .local v21, "targetSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    .line 1105
    .local v20, "targetIndex":I
    move/from16 v17, v21

    .line 1113
    .local v17, "sectionIndex":I
    move v9, v4

    .line 1114
    .local v9, "nextIndex":I
    move/from16 v13, v20

    .line 1115
    .local v13, "prevIndex":I
    move/from16 v15, v21

    .line 1116
    .local v15, "prevSection":I
    add-int/lit8 v12, v21, 0x1

    .line 1119
    .local v12, "nextSection":I
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    add-int/lit8 v23, v21, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1124
    :cond_0
    move/from16 v0, v20

    if-ne v9, v0, :cond_2

    .line 1126
    :cond_1
    if-lez v21, :cond_2

    .line 1127
    add-int/lit8 v21, v21, -0x1

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    .line 1129
    move/from16 v0, v20

    if-eq v13, v0, :cond_4

    .line 1130
    move/from16 v15, v21

    .line 1131
    move/from16 v17, v21

    .line 1147
    :cond_2
    :goto_1
    add-int/lit8 v10, v12, 0x1

    .line 1148
    .local v10, "nextNextSection":I
    :goto_2
    move/from16 v0, v16

    if-ge v10, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v9, :cond_5

    .line 1150
    add-int/lit8 v10, v10, 0x1

    .line 1151
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1098
    .end local v5    # "exactSection":I
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v15    # "prevSection":I
    .end local v16    # "sectionCount":I
    .end local v17    # "sectionIndex":I
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :cond_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v16, v0

    goto/16 :goto_0

    .line 1133
    .restart local v5    # "exactSection":I
    .restart local v9    # "nextIndex":I
    .restart local v12    # "nextSection":I
    .restart local v13    # "prevIndex":I
    .restart local v15    # "prevSection":I
    .restart local v16    # "sectionCount":I
    .restart local v17    # "sectionIndex":I
    .restart local v20    # "targetIndex":I
    .restart local v21    # "targetSection":I
    :cond_4
    if-nez v21, :cond_1

    .line 1136
    const/16 v17, 0x0

    .line 1137
    goto :goto_1

    .line 1158
    .restart local v10    # "nextNextSection":I
    :cond_5
    int-to-float v0, v15

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v14, v22, v23

    .line 1159
    .local v14, "prevPosition":F
    int-to-float v0, v12

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v11, v22, v23

    .line 1160
    .local v11, "nextPosition":F
    if-nez v4, :cond_7

    const v19, 0x7f7fffff    # Float.MAX_VALUE

    .line 1161
    .local v19, "snapThreshold":F
    :goto_3
    if-ne v15, v5, :cond_8

    sub-float v22, p1, v14

    cmpg-float v22, v22, v19

    if-gez v22, :cond_8

    .line 1162
    move/from16 v20, v13

    .line 1169
    :goto_4
    const/16 v22, 0x0

    add-int/lit8 v23, v4, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v20

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 1172
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ExpandableListView;

    .line 1173
    .local v6, "expList":Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v20

    invoke-static/range {v22 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1197
    .end local v5    # "exactSection":I
    .end local v6    # "expList":Landroid/widget/ExpandableListView;
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v11    # "nextPosition":F
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v14    # "prevPosition":F
    .end local v15    # "prevSection":I
    .end local v19    # "snapThreshold":F
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mCurrentSection:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    .line 1198
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FluidScroller;->mCurrentSection:I

    .line 1200
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/FluidScroller;->transitionPreviewLayout(I)Z

    move-result v7

    .line 1201
    .local v7, "hasPreview":Z
    const-string v22, "FluidScroller"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "scrollTo() called transitionPreviewLayout() sectionIndex ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", position = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    sget-boolean v22, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v22, :cond_6

    .line 1203
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FluidScroller;->mShowingPreview:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    if-eqz v7, :cond_e

    .line 1204
    invoke-direct/range {p0 .. p0}, Landroid/widget/FluidScroller;->transitionToDragging()V

    .line 1210
    .end local v7    # "hasPreview":Z
    :cond_6
    :goto_6
    return-void

    .line 1160
    .restart local v5    # "exactSection":I
    .restart local v9    # "nextIndex":I
    .restart local v10    # "nextNextSection":I
    .restart local v11    # "nextPosition":F
    .restart local v12    # "nextSection":I
    .restart local v13    # "prevIndex":I
    .restart local v14    # "prevPosition":F
    .restart local v15    # "prevSection":I
    .restart local v20    # "targetIndex":I
    .restart local v21    # "targetSection":I
    :cond_7
    const/high16 v22, 0x3e000000    # 0.125f

    int-to-float v0, v4

    move/from16 v23, v0

    div-float v19, v22, v23

    goto/16 :goto_3

    .line 1164
    .restart local v19    # "snapThreshold":F
    :cond_8
    sub-int v22, v9, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v23, p1, v14

    mul-float v22, v22, v23

    sub-float v23, v11, v14

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v20, v13, v22

    goto/16 :goto_4

    .line 1176
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    check-cast v22, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v20

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_5

    .line 1179
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v20

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView;->setSelection(I)V

    goto/16 :goto_5

    .line 1182
    .end local v5    # "exactSection":I
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v11    # "nextPosition":F
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v14    # "prevPosition":F
    .end local v15    # "prevSection":I
    .end local v17    # "sectionIndex":I
    .end local v19    # "snapThreshold":F
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :cond_b
    int-to-float v0, v4

    move/from16 v22, v0

    mul-float v22, v22, p1

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    add-int/lit8 v24, v4, -0x1

    invoke-static/range {v22 .. v24}, Landroid/util/MathUtils;->constrain(III)I

    move-result v8

    .line 1184
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 1185
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ExpandableListView;

    .line 1186
    .restart local v6    # "expList":Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v8

    invoke-static/range {v22 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1194
    .end local v6    # "expList":Landroid/widget/ExpandableListView;
    :goto_7
    const/16 v17, -0x1

    .restart local v17    # "sectionIndex":I
    goto/16 :goto_5

    .line 1188
    .end local v17    # "sectionIndex":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    check-cast v22, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v8

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_7

    .line 1191
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_7

    .line 1205
    .end local v8    # "index":I
    .restart local v7    # "hasPreview":Z
    .restart local v17    # "sectionIndex":I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FluidScroller;->mShowingPreview:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    if-nez v7, :cond_6

    .line 1206
    invoke-direct/range {p0 .. p0}, Landroid/widget/FluidScroller;->transitionToVisible()V

    goto/16 :goto_6
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 911
    iget-object v0, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 913
    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 914
    const/4 p1, 0x1

    .line 917
    :cond_0
    iget v0, p0, Landroid/widget/FluidScroller;->mState:I

    if-ne p1, v0, :cond_1

    .line 936
    :goto_0
    return-void

    .line 921
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 933
    :goto_1
    iput p1, p0, Landroid/widget/FluidScroller;->mState:I

    .line 935
    invoke-direct {p0}, Landroid/widget/FluidScroller;->refreshDrawablePressedState()V

    goto :goto_0

    .line 923
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/FluidScroller;->transitionToHidden()V

    goto :goto_1

    .line 926
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/FluidScroller;->transitionToVisible()V

    goto :goto_1

    .line 929
    :pswitch_2
    iget v0, p0, Landroid/widget/FluidScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/widget/FluidScroller;->transitionPreviewLayout(I)Z

    goto :goto_1

    .line 921
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 21
    .param p1, "position"    # F

    .prologue
    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/FluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1309
    .local v2, "container":Landroid/graphics/Rect;
    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 1310
    .local v16, "top":I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1312
    .local v1, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    .line 1313
    .local v17, "trackImage":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 1314
    .local v14, "thumbImage":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v18

    int-to-float v5, v0

    .line 1315
    .local v5, "min":F
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v18

    move/from16 v0, v18

    int-to-float v3, v0

    .line 1316
    .local v3, "max":F
    move v7, v5

    .line 1317
    .local v7, "offset":F
    sub-float v13, v3, v5

    .line 1318
    .local v13, "range":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mThumbRange:F

    move/from16 v18, v0

    mul-float v18, v18, p1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mThumbOffset:F

    move/from16 v19, v0

    add-float v15, v18, v19

    .line 1319
    .local v15, "thumbMiddle":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    sub-float v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1322
    sget-boolean v18, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v18, :cond_1

    .line 1323
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    .line 1328
    .local v9, "previewImage":Landroid/view/View;
    :goto_0
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v8, v18, v19

    .line 1331
    .local v8, "previewHalfHeight":F
    sget-boolean v18, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v18, :cond_2

    .line 1332
    move v11, v15

    .line 1349
    .local v11, "previewPos":F
    :goto_1
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v6, v18, v8

    .line 1350
    .local v6, "minP":F
    int-to-float v0, v1

    move/from16 v18, v0

    sub-float v4, v18, v8

    .line 1351
    .local v4, "maxP":F
    invoke-static {v11, v6, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v10

    .line 1352
    .local v10, "previewMiddle":F
    sub-float v12, v10, v8

    .line 1353
    .local v12, "previewTop":F
    invoke-virtual {v9, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 1355
    sget-boolean v18, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v18, :cond_0

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1359
    :cond_0
    return-void

    .line 1325
    .end local v4    # "maxP":F
    .end local v6    # "minP":F
    .end local v8    # "previewHalfHeight":F
    .end local v9    # "previewImage":Landroid/view/View;
    .end local v10    # "previewMiddle":F
    .end local v11    # "previewPos":F
    .end local v12    # "previewTop":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    .restart local v9    # "previewImage":Landroid/view/View;
    goto :goto_0

    .line 1334
    .restart local v8    # "previewHalfHeight":F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mOverlayPosition:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 1343
    const/4 v11, 0x0

    .restart local v11    # "previewPos":F
    goto :goto_1

    .line 1336
    .end local v11    # "previewPos":F
    :pswitch_0
    move v11, v15

    .line 1337
    .restart local v11    # "previewPos":F
    goto :goto_1

    .line 1339
    .end local v11    # "previewPos":F
    :pswitch_1
    sub-float v11, v15, v8

    .line 1340
    .restart local v11    # "previewPos":F
    goto :goto_1

    .line 1334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startPendingDrag()V
    .locals 4

    .prologue
    .line 1494
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/widget/FluidScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/FluidScroller;->mPendingDrag:J

    .line 1495
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 24
    .param p1, "sectionIndex"    # I

    .prologue
    .line 1221
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FluidScroller;->mSections:[Ljava/lang/Object;

    .line 1222
    .local v13, "sections":[Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1223
    .local v19, "text":Ljava/lang/String;
    if-eqz v13, :cond_0

    if-ltz p1, :cond_0

    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 1224
    aget-object v12, v13, p1

    .line 1225
    .local v12, "section":Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 1226
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1229
    .end local v12    # "section":Ljava/lang/Object;
    :cond_0
    sget-boolean v20, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v20, :cond_5

    .line 1230
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FluidScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1231
    .local v4, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    .line 1234
    .local v7, "preview":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FluidScroller;->mShowingPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1235
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1236
    .local v15, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 1243
    .local v17, "target":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1245
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Landroid/widget/FluidScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1246
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Landroid/widget/FluidScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1253
    :cond_1
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/widget/FluidScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v14

    .line 1254
    .local v14, "showTarget":Landroid/animation/Animator;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v0}, Landroid/widget/FluidScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 1255
    .local v6, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1258
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 1259
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1260
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 1261
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1262
    invoke-static {v7, v4}, Landroid/widget/FluidScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v9

    .line 1263
    .local v9, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v20, 0x64

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1265
    new-instance v20, Landroid/animation/AnimatorSet;

    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/FluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 1267
    .local v5, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1271
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v20

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    sub-int v8, v20, v21

    .line 1276
    .local v8, "previewWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getWidth()I

    move-result v18

    .line 1277
    .local v18, "targetWidth":I
    move/from16 v0, v18

    if-le v0, v8, :cond_4

    .line 1278
    int-to-float v0, v8

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1279
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/widget/FluidScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1280
    .local v11, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1286
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v16

    .line 1287
    .local v16, "showingWidth":I
    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 1288
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    .line 1289
    .local v10, "scale":F
    invoke-static {v15, v10}, Landroid/widget/FluidScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1290
    .restart local v11    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1292
    .end local v10    # "scale":F
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    new-instance v21, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct/range {v21 .. v21}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual/range {v20 .. v21}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    .line 1298
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v6    # "hideShowing":Landroid/animation/Animator;
    .end local v7    # "preview":Landroid/view/View;
    .end local v8    # "previewWidth":I
    .end local v9    # "resizePreview":Landroid/animation/Animator;
    .end local v14    # "showTarget":Landroid/animation/Animator;
    .end local v15    # "showing":Landroid/widget/TextView;
    .end local v16    # "showingWidth":I
    .end local v17    # "target":Landroid/widget/TextView;
    .end local v18    # "targetWidth":I
    :goto_2
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    const/16 v20, 0x1

    :goto_3
    return v20

    .line 1238
    .restart local v4    # "bounds":Landroid/graphics/Rect;
    .restart local v7    # "preview":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1239
    .restart local v15    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .restart local v17    # "target":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 1282
    .restart local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .restart local v6    # "hideShowing":Landroid/animation/Animator;
    .restart local v8    # "previewWidth":I
    .restart local v9    # "resizePreview":Landroid/animation/Animator;
    .restart local v14    # "showTarget":Landroid/animation/Animator;
    .restart local v18    # "targetWidth":I
    :cond_4
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    goto :goto_1

    .line 1295
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v6    # "hideShowing":Landroid/animation/Animator;
    .end local v7    # "preview":Landroid/view/View;
    .end local v8    # "previewWidth":I
    .end local v9    # "resizePreview":Landroid/animation/Animator;
    .end local v14    # "showTarget":Landroid/animation/Animator;
    .end local v15    # "showing":Landroid/widget/TextView;
    .end local v17    # "target":Landroid/widget/TextView;
    .end local v18    # "targetWidth":I
    :cond_5
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/FluidScroller;->mFastScrollEffectText:Ljava/lang/String;

    .line 1296
    const-string v20, "FluidScroller"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "transitionPreviewLayout() sectionIndex = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mFastScrollEffectText = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mFastScrollEffectText:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1298
    :cond_6
    const/16 v20, 0x0

    goto :goto_3
.end method

.method private transitionToDragging()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1005
    const-string v1, "FluidScroller"

    const-string/jumbo v2, "transitionToDragging()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v1, :cond_1

    .line 1007
    iget-object v1, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 1008
    iget-object v1, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1011
    :cond_0
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    iget-object v4, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/widget/FluidScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 1015
    .local v0, "fadeIn":Landroid/animation/Animator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 1016
    iget-object v1, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v0, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1017
    iget-object v1, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1018
    iget-object v1, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1019
    iput-boolean v6, p0, Landroid/widget/FluidScroller;->mShowingPreview:Z

    .line 1022
    .end local v0    # "fadeIn":Landroid/animation/Animator;
    :cond_1
    return-void
.end method

.method private transitionToHidden()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 948
    const-string v2, "FluidScroller"

    const-string/jumbo v3, "transitionToHidden()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v9, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    invoke-static {v2, v8, v3}, Landroid/widget/FluidScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    sget v3, Landroid/widget/FluidScroller;->DURATION_FADE_OUT:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 951
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_2

    .line 952
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 958
    :goto_0
    sget-boolean v2, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v2, :cond_0

    .line 959
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    iget-object v4, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    aput-object v4, v3, v9

    const/4 v4, 0x3

    iget-object v5, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-static {v2, v8, v3}, Landroid/widget/FluidScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    sget v3, Landroid/widget/FluidScroller;->DURATION_FADE_OUT:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 961
    iput-boolean v6, p0, Landroid/widget/FluidScroller;->mShowingPreview:Z

    .line 965
    :cond_0
    iget-boolean v2, p0, Landroid/widget/FluidScroller;->mLayoutFromRight:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 967
    .local v1, "offset":F
    :goto_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 968
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 969
    sget-boolean v2, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v2, :cond_1

    .line 970
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 972
    :cond_1
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 973
    return-void

    .line 955
    .end local v1    # "offset":F
    :cond_2
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v9, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    invoke-static {v2, v8, v3}, Landroid/widget/FluidScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 965
    :cond_3
    iget-object v2, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v1, v2

    goto :goto_1
.end method

.method private transitionToVisible()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 979
    const-string v2, "FluidScroller"

    const-string/jumbo v3, "transitionToVisible()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 981
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 984
    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/widget/FluidScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v4, 0x14d

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 986
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/widget/FluidScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    sget v3, Landroid/widget/FluidScroller;->DURATION_FADE_OUT:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 990
    .local v1, "fadeOut":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 991
    sget-boolean v2, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v2, :cond_1

    .line 992
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 993
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 994
    iput-boolean v6, p0, Landroid/widget/FluidScroller;->mShowingPreview:Z

    .line 998
    :goto_0
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 999
    return-void

    .line 996
    :cond_1
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method private updateAppearance()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 318
    const/4 v2, 0x0

    .line 321
    .local v2, "width":I
    iget-object v3, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    iget-object v3, p0, Landroid/widget/FluidScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 323
    iget-object v3, p0, Landroid/widget/FluidScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 327
    :cond_0
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Landroid/widget/FluidScroller;->mThumbMinWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 329
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Landroid/widget/FluidScroller;->mThumbMinHeight:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 330
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 331
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 335
    :cond_1
    iget v3, p0, Landroid/widget/FluidScroller;->mThumbMinWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/FluidScroller;->mWidth:I

    .line 337
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 338
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010433

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 339
    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/widget/FluidScroller;->mColorPrimary:I

    .line 340
    sget-boolean v3, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v3, :cond_5

    .line 341
    iget-object v3, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Landroid/widget/FluidScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 342
    iget-object v3, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Landroid/widget/FluidScroller;->mPreviewMinHeight:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 344
    iget v3, p0, Landroid/widget/FluidScroller;->mTextAppearance:I

    if-eqz v3, :cond_2

    .line 345
    iget-object v3, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/widget/FluidScroller;->mTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 346
    iget-object v3, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/widget/FluidScroller;->mTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 349
    :cond_2
    iget-object v3, p0, Landroid/widget/FluidScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_3

    .line 350
    iget-object v3, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 351
    iget-object v3, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 354
    :cond_3
    iget v3, p0, Landroid/widget/FluidScroller;->mTextSize:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 355
    iget-object v3, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Landroid/widget/FluidScroller;->mTextSize:F

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 356
    iget-object v3, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Landroid/widget/FluidScroller;->mTextSize:F

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 359
    :cond_4
    iget v3, p0, Landroid/widget/FluidScroller;->mPreviewMinHeight:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 360
    .local v1, "textMinSize":I
    iget-object v3, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Landroid/widget/FluidScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 361
    iget-object v3, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 362
    iget-object v3, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 363
    iget-object v3, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Landroid/widget/FluidScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 364
    iget-object v3, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 365
    iget-object v3, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 371
    .end local v1    # "textMinSize":I
    :goto_0
    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Landroid/widget/FluidScroller;->mOrientation:I

    .line 373
    invoke-direct {p0}, Landroid/widget/FluidScroller;->refreshDrawablePressedState()V

    .line 374
    return-void

    .line 367
    :cond_5
    iget-object v3, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget v4, p0, Landroid/widget/FluidScroller;->mColorPrimary:I

    const v5, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v4, v5}, Landroid/widget/FluidScroller;->getColorWithAlpha(IF)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->setColor(I)V

    .line 368
    iget-object v3, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106017c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->setListTextColor(I)V

    .line 369
    iget-object v3, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502be

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->setListTextSize(F)V

    goto :goto_0
.end method

.method private updateContainerRect()V
    .locals 7

    .prologue
    const/high16 v6, 0x1000000

    const/4 v4, 0x0

    .line 818
    iget-object v1, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    .line 819
    .local v1, "list":Landroid/widget/AbsListView;
    invoke-virtual {v1}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 821
    iget-object v0, p0, Landroid/widget/FluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 822
    .local v0, "container":Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 823
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 824
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 825
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 827
    iget v2, p0, Landroid/widget/FluidScroller;->mScrollBarStyle:I

    .line 828
    .local v2, "scrollbarStyle":I
    if-eq v2, v6, :cond_0

    if-nez v2, :cond_1

    .line 830
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 831
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 832
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 833
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 836
    if-ne v2, v6, :cond_1

    .line 837
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->getWidth()I

    move-result v3

    .line 838
    .local v3, "width":I
    iget v4, p0, Landroid/widget/FluidScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 839
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 845
    .end local v3    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 841
    .restart local v3    # "width":I
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private updateLongList(II)V
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 590
    if-lez p1, :cond_3

    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 591
    .local v0, "longList":Z
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/widget/FluidScroller;->mLongList:Z

    if-eq v2, v0, :cond_2

    .line 592
    iput-boolean v0, p0, Landroid/widget/FluidScroller;->mLongList:Z

    .line 594
    sget-boolean v2, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/FluidScroller;->mLongList:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/FluidScroller;->mAlwaysShow:Z

    if-nez v2, :cond_1

    .line 595
    iget-object v2, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->clearEffect()V

    .line 596
    const-string v2, "FluidScroller"

    const-string/jumbo v3, "updateLongList() clearEffect !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_1
    invoke-direct {p0, v1}, Landroid/widget/FluidScroller;->onStateDependencyChanged(Z)V

    .line 600
    :cond_2
    return-void

    .end local v0    # "longList":Z
    :cond_3
    move v0, v1

    .line 590
    goto :goto_0
.end method

.method private updateOffsetAndRange()V
    .locals 7

    .prologue
    .line 893
    iget-object v4, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 894
    .local v4, "trackImage":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 897
    .local v3, "thumbImage":Landroid/view/View;
    iget v5, p0, Landroid/widget/FluidScroller;->mThumbPosition:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 898
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v0, v5, v6

    .line 899
    .local v0, "halfThumbHeight":F
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v5, v0

    .line 900
    .local v2, "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float v1, v5, v0

    .line 906
    .end local v0    # "halfThumbHeight":F
    .local v1, "max":F
    :goto_0
    iput v2, p0, Landroid/widget/FluidScroller;->mThumbOffset:F

    .line 907
    sub-float v5, v1, v2

    iput v5, p0, Landroid/widget/FluidScroller;->mThumbRange:F

    .line 908
    return-void

    .line 902
    .end local v1    # "max":F
    .end local v2    # "min":F
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v2, v5

    .line 903
    .restart local v2    # "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v1, v5

    .restart local v1    # "max":F
    goto :goto_0
.end method


# virtual methods
.method getEffectState()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Landroid/widget/FluidScroller;->mEffectState:I

    return v0
.end method

.method getScrollY()F
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Landroid/widget/FluidScroller;->mScrollY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Landroid/widget/FluidScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1573
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1585
    :cond_0
    :goto_0
    return v3

    .line 1577
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1578
    .local v0, "actionMasked":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    :cond_2
    iget v1, p0, Landroid/widget/FluidScroller;->mState:I

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/FluidScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1581
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/FluidScroller;->setState(I)V

    .line 1582
    invoke-direct {p0}, Landroid/widget/FluidScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1516
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1569
    :cond_0
    :goto_0
    return v1

    .line 1520
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1522
    :pswitch_0
    const-string v2, "FluidScroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onInterceptTouchEvent() ACTION_DOWN ev.getY() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/FluidScroller;->isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1529
    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1532
    const/4 v1, 0x1

    goto :goto_0

    .line 1535
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/widget/FluidScroller;->mInitialTouchY:F

    .line 1536
    invoke-direct {p0}, Landroid/widget/FluidScroller;->startPendingDrag()V

    goto :goto_0

    .line 1540
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/FluidScroller;->isPointInside(FF)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1541
    invoke-direct {p0}, Landroid/widget/FluidScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1542
    :cond_3
    iget-wide v2, p0, Landroid/widget/FluidScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Landroid/widget/FluidScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1543
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v1, :cond_4

    .line 1544
    invoke-direct {p0}, Landroid/widget/FluidScroller;->transitionToHidden()V

    .line 1546
    :cond_4
    invoke-direct {p0}, Landroid/widget/FluidScroller;->beginDrag()V

    .line 1548
    iget v1, p0, Landroid/widget/FluidScroller;->mInitialTouchY:F

    invoke-direct {p0, v1}, Landroid/widget/FluidScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1549
    .local v0, "pos":F
    iput v0, p0, Landroid/widget/FluidScroller;->mOldThumbPosition:F

    .line 1550
    invoke-direct {p0, v0}, Landroid/widget/FluidScroller;->scrollTo(F)V

    .line 1552
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v1, :cond_5

    .line 1553
    iget-object v1, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget v2, p0, Landroid/widget/FluidScroller;->mInitialTouchY:F

    iget-object v3, p0, Landroid/widget/FluidScroller;->mFastScrollEffectText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->open(FLjava/lang/String;)V

    .line 1555
    :cond_5
    const-string v1, "FluidScroller"

    const-string/jumbo v2, "onInterceptTouchEvent() ACTION_MOVE pendingdrag open()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-virtual {p0, p1}, Landroid/widget/FluidScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 1565
    .end local v0    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/FluidScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    .line 1520
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemCountChanged(II)V
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 574
    iget v2, p0, Landroid/widget/FluidScroller;->mOldItemCount:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Landroid/widget/FluidScroller;->mOldChildCount:I

    if-eq v2, p1, :cond_2

    .line 575
    :cond_0
    iput p2, p0, Landroid/widget/FluidScroller;->mOldItemCount:I

    .line 576
    iput p1, p0, Landroid/widget/FluidScroller;->mOldChildCount:I

    .line 578
    sub-int v2, p2, p1

    if-lez v2, :cond_3

    const/4 v1, 0x1

    .line 579
    .local v1, "hasMoreItems":Z
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Landroid/widget/FluidScroller;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 580
    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 581
    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, p1, p2}, Landroid/widget/FluidScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/FluidScroller;->setThumbPos(F)V

    .line 584
    .end local v0    # "firstVisibleItem":I
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/widget/FluidScroller;->updateLongList(II)V

    .line 586
    .end local v1    # "hasMoreItems":Z
    :cond_2
    return-void

    .line 578
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScroll(III)V
    .locals 6
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1030
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1031
    invoke-direct {p0, v0}, Landroid/widget/FluidScroller;->setState(I)V

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1035
    :cond_1
    sub-int v2, p3, p2

    if-lez v2, :cond_2

    move v0, v1

    .line 1036
    .local v0, "hasMoreItems":Z
    :cond_2
    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Landroid/widget/FluidScroller;->mState:I

    if-eq v2, v5, :cond_4

    .line 1037
    sget-boolean v2, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/widget/FluidScroller;->mOldThumbPosition:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_5

    .line 1038
    iget v2, p0, Landroid/widget/FluidScroller;->mOldThumbPosition:F

    invoke-direct {p0, v2}, Landroid/widget/FluidScroller;->setThumbPos(F)V

    .line 1039
    iput v4, p0, Landroid/widget/FluidScroller;->mOldThumbPosition:F

    .line 1045
    :cond_4
    :goto_1
    iput-boolean v1, p0, Landroid/widget/FluidScroller;->mScrollCompleted:Z

    .line 1047
    iget v2, p0, Landroid/widget/FluidScroller;->mFirstVisibleItem:I

    if-eq v2, p1, :cond_0

    .line 1048
    iput p1, p0, Landroid/widget/FluidScroller;->mFirstVisibleItem:I

    .line 1051
    iget v2, p0, Landroid/widget/FluidScroller;->mState:I

    if-eq v2, v5, :cond_0

    .line 1052
    invoke-direct {p0, v1}, Landroid/widget/FluidScroller;->setState(I)V

    .line 1053
    invoke-direct {p0}, Landroid/widget/FluidScroller;->postAutoHide()V

    goto :goto_0

    .line 1041
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FluidScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/FluidScroller;->setThumbPos(F)V

    goto :goto_1
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 1086
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/FluidScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1087
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 555
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->updateLayout()V

    .line 557
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-object v1, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 564
    .local v0, "orientation":I
    iget v1, p0, Landroid/widget/FluidScroller;->mOrientation:I

    if-eq v1, v0, :cond_0

    .line 565
    iput v0, p0, Landroid/widget/FluidScroller;->mOrientation:I

    .line 566
    iget v1, p0, Landroid/widget/FluidScroller;->mEffectState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 567
    iput v3, p0, Landroid/widget/FluidScroller;->mEffectState:I

    .line 568
    iput v3, p0, Landroid/widget/FluidScroller;->mState:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1589
    iget-object v1, p0, Landroid/widget/FluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1590
    .local v1, "container":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 1591
    .local v5, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1593
    .local v0, "bottom":I
    iget-object v6, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 1594
    .local v6, "trackImage":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v3, v7

    .line 1595
    .local v3, "min":F
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v2, v7

    .line 1597
    .local v2, "max":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    .line 1599
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1600
    const/4 v7, 0x0

    .line 1728
    :goto_0
    return v7

    .line 1603
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1728
    :cond_1
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1605
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/widget/FluidScroller;->isPointInside(FF)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1606
    iget-object v7, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1607
    sget-boolean v7, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v7, :cond_2

    .line 1608
    invoke-direct {p0}, Landroid/widget/FluidScroller;->transitionToHidden()V

    .line 1610
    :cond_2
    invoke-direct {p0}, Landroid/widget/FluidScroller;->beginDrag()V

    .line 1611
    sget-boolean v7, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v7, :cond_3

    .line 1612
    iget-object v7, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget v8, p0, Landroid/widget/FluidScroller;->mScrollY:F

    iget-object v9, p0, Landroid/widget/FluidScroller;->mFastScrollEffectText:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->open(FLjava/lang/String;)V

    .line 1613
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/FluidScroller;->mEffectState:I

    .line 1615
    :cond_3
    const-string v7, "FluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_DOWN.. open() called with posY "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    const/4 v7, 0x1

    goto :goto_0

    .line 1623
    :pswitch_1
    iget-wide v8, p0, Landroid/widget/FluidScroller;->mPendingDrag:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_5

    .line 1625
    invoke-direct {p0}, Landroid/widget/FluidScroller;->beginDrag()V

    .line 1627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/FluidScroller;->getPosFromMotionEvent(F)F

    move-result v4

    .line 1628
    .local v4, "pos":F
    iput v4, p0, Landroid/widget/FluidScroller;->mOldThumbPosition:F

    .line 1629
    invoke-direct {p0, v4}, Landroid/widget/FluidScroller;->setThumbPos(F)V

    .line 1630
    invoke-direct {p0, v4}, Landroid/widget/FluidScroller;->scrollTo(F)V

    .line 1631
    sget-boolean v7, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v7, :cond_4

    .line 1632
    iget-object v7, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget v8, p0, Landroid/widget/FluidScroller;->mScrollY:F

    iget-object v9, p0, Landroid/widget/FluidScroller;->mFastScrollEffectText:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->open(FLjava/lang/String;)V

    .line 1633
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/FluidScroller;->mEffectState:I

    .line 1635
    :cond_4
    const-string v7, "FluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_UP.. open() called with posY "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    .end local v4    # "pos":F
    :cond_5
    iget v7, p0, Landroid/widget/FluidScroller;->mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1644
    iget-object v7, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1645
    iget-object v7, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1648
    sget-boolean v7, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v7, :cond_6

    .line 1649
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Landroid/widget/FluidScroller;->setState(I)V

    .line 1656
    :goto_2
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    .line 1658
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1651
    :cond_6
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Landroid/widget/FluidScroller;->setState(I)V

    .line 1652
    invoke-direct {p0}, Landroid/widget/FluidScroller;->postAutoHide()V

    .line 1653
    iget-object v7, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v7}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->close()V

    .line 1654
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/FluidScroller;->mEffectState:I

    goto :goto_2

    .line 1664
    :pswitch_2
    const-string v7, "FluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_MOVE.. mState= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/FluidScroller;->mState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mInitialTouchY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/FluidScroller;->mInitialTouchY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    iget-wide v8, p0, Landroid/widget/FluidScroller;->mPendingDrag:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Landroid/widget/FluidScroller;->mInitialTouchY:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Landroid/widget/FluidScroller;->mScaledTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    .line 1666
    sget-boolean v7, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v7, :cond_7

    .line 1667
    invoke-direct {p0}, Landroid/widget/FluidScroller;->transitionToHidden()V

    .line 1669
    :cond_7
    invoke-direct {p0}, Landroid/widget/FluidScroller;->beginDrag()V

    .line 1670
    iget v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    int-to-float v8, v5

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    iget v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    int-to-float v8, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_9

    .line 1671
    const-string v7, "FluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_MOVE 1 mScrollY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/FluidScroller;->mScrollY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    int-to-float v8, v5

    add-float/2addr v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_d

    .line 1674
    int-to-float v7, v5

    add-float/2addr v7, v3

    iput v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    .line 1678
    :cond_8
    :goto_3
    sget-boolean v7, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v7, :cond_9

    .line 1679
    iget-object v7, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget v8, p0, Landroid/widget/FluidScroller;->mScrollY:F

    iget-object v9, p0, Landroid/widget/FluidScroller;->mFastScrollEffectText:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->open(FLjava/lang/String;)V

    .line 1680
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/FluidScroller;->mEffectState:I

    .line 1687
    :cond_9
    iget v7, p0, Landroid/widget/FluidScroller;->mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/FluidScroller;->getPosFromMotionEvent(F)F

    move-result v4

    .line 1690
    .restart local v4    # "pos":F
    iput v4, p0, Landroid/widget/FluidScroller;->mOldThumbPosition:F

    .line 1691
    invoke-direct {p0, v4}, Landroid/widget/FluidScroller;->setThumbPos(F)V

    .line 1694
    iget-boolean v7, p0, Landroid/widget/FluidScroller;->mScrollCompleted:Z

    if-eqz v7, :cond_a

    .line 1695
    invoke-direct {p0, v4}, Landroid/widget/FluidScroller;->scrollTo(F)V

    .line 1698
    :cond_a
    iget v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    int-to-float v8, v5

    cmpl-float v7, v7, v8

    if-lez v7, :cond_c

    iget v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    int-to-float v8, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_c

    .line 1699
    const-string v7, "FluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_MOVE 2 mScrollY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/FluidScroller;->mScrollY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    iget v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    int-to-float v8, v5

    add-float/2addr v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_e

    .line 1702
    int-to-float v7, v5

    add-float/2addr v7, v3

    iput v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    .line 1706
    :cond_b
    :goto_4
    sget-boolean v7, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v7, :cond_c

    .line 1707
    iget-object v7, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget v8, p0, Landroid/widget/FluidScroller;->mScrollY:F

    iget-object v9, p0, Landroid/widget/FluidScroller;->mFastScrollEffectText:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->open(FLjava/lang/String;)V

    .line 1708
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/FluidScroller;->mEffectState:I

    .line 1712
    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1675
    .end local v4    # "pos":F
    :cond_d
    iget v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    cmpl-float v7, v7, v2

    if-lez v7, :cond_8

    .line 1676
    iput v2, p0, Landroid/widget/FluidScroller;->mScrollY:F

    goto/16 :goto_3

    .line 1703
    .restart local v4    # "pos":F
    :cond_e
    iget v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    cmpl-float v7, v7, v2

    if-lez v7, :cond_b

    .line 1704
    iput v2, p0, Landroid/widget/FluidScroller;->mScrollY:F

    goto :goto_4

    .line 1718
    .end local v4    # "pos":F
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/FluidScroller;->cancelPendingDrag()V

    .line 1719
    sget-boolean v7, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v7, :cond_f

    .line 1720
    iget-object v7, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v7}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->close()V

    .line 1721
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/FluidScroller;->mEffectState:I

    .line 1723
    :cond_f
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    goto/16 :goto_1

    .line 1603
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Landroid/widget/FluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 438
    iget-object v0, p0, Landroid/widget/FluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 439
    sget-boolean v0, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Landroid/widget/FluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 441
    iget-object v0, p0, Landroid/widget/FluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 442
    iget-object v0, p0, Landroid/widget/FluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 446
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Landroid/widget/FluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 471
    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 472
    iput-boolean p1, p0, Landroid/widget/FluidScroller;->mAlwaysShow:Z

    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/FluidScroller;->onStateDependencyChanged(Z)V

    .line 476
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 452
    const-string v0, "FluidScroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnabled() enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 454
    iput-boolean p1, p0, Landroid/widget/FluidScroller;->mEnabled:Z

    .line 456
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/FluidScroller;->onStateDependencyChanged(Z)V

    .line 458
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 509
    iget v0, p0, Landroid/widget/FluidScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 510
    iput p1, p0, Landroid/widget/FluidScroller;->mScrollBarStyle:I

    .line 512
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->updateLayout()V

    .line 514
    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 524
    if-nez p1, :cond_0

    .line 525
    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    move p1, v1

    .line 529
    :cond_0
    :goto_0
    iget v2, p0, Landroid/widget/FluidScroller;->mScrollbarPosition:I

    if-eq v2, p1, :cond_2

    .line 530
    iput p1, p0, Landroid/widget/FluidScroller;->mScrollbarPosition:I

    .line 531
    if-eq p1, v1, :cond_4

    move v2, v1

    :goto_1
    iput-boolean v2, p0, Landroid/widget/FluidScroller;->mLayoutFromRight:Z

    .line 533
    sget-boolean v2, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v2, :cond_1

    .line 534
    iget-object v2, p0, Landroid/widget/FluidScroller;->mPreviewResId:[I

    iget-boolean v4, p0, Landroid/widget/FluidScroller;->mLayoutFromRight:Z

    if-eqz v4, :cond_5

    :goto_2
    aget v0, v2, v1

    .line 535
    .local v0, "previewResId":I
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 538
    .end local v0    # "previewResId":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->updateLayout()V

    .line 540
    :cond_2
    return-void

    .line 525
    :cond_3
    const/4 p1, 0x2

    goto :goto_0

    :cond_4
    move v2, v3

    .line 531
    goto :goto_1

    :cond_5
    move v1, v3

    .line 534
    goto :goto_2
.end method

.method public setStyle(I)V
    .locals 9
    .param p1, "resId"    # I

    .prologue
    const/4 v8, 0x0

    .line 377
    iget-object v4, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/internal/R$styleable;->FastScroll:[I

    const v7, 0x10103f7

    invoke-virtual {v4, v5, v6, v7, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 379
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 380
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 381
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 382
    .local v2, "index":I
    packed-switch v2, :pswitch_data_0

    .line 380
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :pswitch_0
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FluidScroller;->mOverlayPosition:I

    goto :goto_1

    .line 387
    :pswitch_1
    iget-object v4, p0, Landroid/widget/FluidScroller;->mPreviewResId:[I

    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v8

    goto :goto_1

    .line 390
    :pswitch_2
    iget-object v4, p0, Landroid/widget/FluidScroller;->mPreviewResId:[I

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v4, v5

    goto :goto_1

    .line 393
    :pswitch_3
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/FluidScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 396
    :pswitch_4
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/FluidScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 399
    :pswitch_5
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FluidScroller;->mTextAppearance:I

    goto :goto_1

    .line 402
    :pswitch_6
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/FluidScroller;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 405
    :pswitch_7
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Landroid/widget/FluidScroller;->mTextSize:F

    goto :goto_1

    .line 408
    :pswitch_8
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FluidScroller;->mPreviewMinWidth:I

    goto :goto_1

    .line 411
    :pswitch_9
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FluidScroller;->mPreviewMinHeight:I

    goto :goto_1

    .line 414
    :pswitch_a
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FluidScroller;->mThumbMinWidth:I

    goto :goto_1

    .line 417
    :pswitch_b
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FluidScroller;->mThumbMinHeight:I

    goto :goto_1

    .line 420
    :pswitch_c
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FluidScroller;->mPreviewPadding:I

    goto :goto_1

    .line 423
    :pswitch_d
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FluidScroller;->mThumbPosition:I

    goto :goto_1

    .line 428
    .end local v2    # "index":I
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 430
    invoke-direct {p0}, Landroid/widget/FluidScroller;->updateAppearance()V

    .line 431
    return-void

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/FluidScroller;->setState(I)V

    .line 521
    return-void
.end method

.method public updateLayout()V
    .locals 6

    .prologue
    .line 627
    iget-boolean v1, p0, Landroid/widget/FluidScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v1, :cond_2

    .line 631
    iget-object v1, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->clearEffect()V

    .line 632
    const-string v1, "FluidScroller"

    const-string/jumbo v2, "updateLayout() clearEffect !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v1, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->setLayout(IIII)V

    .line 634
    const-string v1, "FluidScroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLayout() l="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/FluidScroller;->mUpdatingLayout:Z

    .line 638
    invoke-direct {p0}, Landroid/widget/FluidScroller;->updateContainerRect()V

    .line 640
    invoke-direct {p0}, Landroid/widget/FluidScroller;->layoutThumb()V

    .line 641
    invoke-direct {p0}, Landroid/widget/FluidScroller;->layoutTrack()V

    .line 643
    invoke-direct {p0}, Landroid/widget/FluidScroller;->updateOffsetAndRange()V

    .line 645
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/FluidScroller;->mUpdatingLayout:Z

    .line 646
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v1, :cond_0

    .line 647
    iget-object v0, p0, Landroid/widget/FluidScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 648
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FluidScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 649
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FluidScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 650
    iget-object v1, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FluidScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 651
    iget-object v1, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FluidScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 654
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 655
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 656
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 657
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 658
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/widget/FluidScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method
