.class Landroid/widget/HorizontalFastScroller;
.super Ljava/lang/Object;
.source "HorizontalFastScroller.java"


# static fields
.field private static final ATTRS:[I

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

.field private static final DURATION_FADE_IN:I = 0x96

.field private static final DURATION_FADE_OUT:I = 0x12c

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

.field private static final MIN_PAGES:I = 0x4

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final OVERLAY_POSITION:I = 0x5

.field private static final PREVIEW_BACKGROUND_LEFT:I = 0x3

.field private static final PREVIEW_BACKGROUND_RIGHT:I = 0x4

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

.field private static final TAP_TIMEOUT:J

.field private static final TEXT_COLOR:I = 0x0

.field private static final THUMB_DRAWABLE:I = 0x1

.field private static TOP:Landroid/util/Property; = null
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

.field private static final TRACK_DRAWABLE:I = 0x2


# instance fields
.field private mAlwaysShow:Z

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private final mDeferStartDrag:Ljava/lang/Runnable;

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHasPendingDrag:Z

.field private final mHasTrackImage:Z

.field private mHeaderCount:I

.field private final mHeight:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private final mList:Landroid/widget/AbsHorizontalListView;

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/widget/ImageView;

.field private final mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

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

.field private final mThumbImage:Landroid/widget/ImageView;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mUpdatingLayout:Z

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/HorizontalFastScroller;->ATTRS:[I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/widget/HorizontalFastScroller;->TAP_TIMEOUT:J

    new-instance v0, Landroid/widget/HorizontalFastScroller$4;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/HorizontalFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/HorizontalFastScroller;->LEFT:Landroid/util/Property;

    new-instance v0, Landroid/widget/HorizontalFastScroller$5;

    const-string v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/HorizontalFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/HorizontalFastScroller;->TOP:Landroid/util/Property;

    new-instance v0, Landroid/widget/HorizontalFastScroller$6;

    const-string v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/HorizontalFastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/HorizontalFastScroller;->RIGHT:Landroid/util/Property;

    new-instance v0, Landroid/widget/HorizontalFastScroller$7;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/HorizontalFastScroller$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/HorizontalFastScroller;->BOTTOM:Landroid/util/Property;

    return-void

    :array_0
    .array-data 4
        0x1010359
        0x1010336
        0x1010339
        0x1010337
        0x1010338
        0x101033a
    .end array-data
.end method

.method public constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 19
    .param p1, "listView"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mTempMargins:Landroid/graphics/Rect;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v15, 0x2

    new-array v15, v15, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPreviewResId:[I

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/HorizontalFastScroller;->mCurrentSection:I

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/HorizontalFastScroller;->mScrollbarPosition:I

    new-instance v15, Landroid/widget/HorizontalFastScroller$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/HorizontalFastScroller$1;-><init>(Landroid/widget/HorizontalFastScroller;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    new-instance v15, Landroid/widget/HorizontalFastScroller$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/HorizontalFastScroller$2;-><init>(Landroid/widget/HorizontalFastScroller;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    new-instance v15, Landroid/widget/HorizontalFastScroller$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/HorizontalFastScroller$3;-><init>(Landroid/widget/HorizontalFastScroller;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsHorizontalListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/HorizontalFastScroller;->mScaledTouchSlop:I

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v15

    sget-object v16, Landroid/widget/HorizontalFastScroller;->ATTRS:[I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    .local v8, "ta":Landroid/content/res/TypedArray;
    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v13, "trackImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v14, 0x0

    .local v14, "width":I
    const/4 v3, 0x0

    .local v3, "height":I
    const/4 v15, 0x2

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .local v12, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_3

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/HorizontalFastScroller;->mHasTrackImage:Z

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v15, v13}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_0
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v11, "thumbImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .local v10, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_0

    if-eqz v12, :cond_0

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v15, v11}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_0
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    if-lez v15, :cond_1

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    if-gtz v15, :cond_2

    :cond_1
    const v15, 0x1050241

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .local v5, "minWidth":I
    const v15, 0x1050242

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .local v4, "minHeight":I
    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    const v15, 0x1050242

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .end local v4    # "minHeight":I
    .end local v5    # "minWidth":I
    :cond_2
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/HorizontalFastScroller;->mWidth:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/HorizontalFastScroller;->mHeight:I

    const v15, 0x105023e

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .local v6, "previewSize":I
    new-instance v15, Landroid/widget/ImageView;

    invoke-direct {v15, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v15, v6}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v15, v6}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    const v15, 0x1050240

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/HorizontalFastScroller;->mPreviewPadding:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewPadding:I

    move/from16 v16, v0

    sub-int v16, v6, v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v9

    .local v9, "textMinSize":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Landroid/widget/HorizontalFastScroller;->createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setMinimumWidth(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setMinimumHeight(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Landroid/widget/HorizontalFastScroller;->createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setMinimumWidth(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setMinimumHeight(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPreviewResId:[I

    const/16 v16, 0x0

    const/16 v17, 0x3

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    aput v17, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPreviewResId:[I

    const/16 v16, 0x1

    const/16 v17, 0x4

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    aput v17, v15, v16

    const/4 v15, 0x5

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/HorizontalFastScroller;->mOverlayPosition:I

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsHorizontalListView;->getScrollBarStyle()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/HorizontalFastScroller;->mScrollBarStyle:I

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/HorizontalFastScroller;->mScrollCompleted:Z

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/HorizontalFastScroller;->mState:I

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v16, 0xb

    move/from16 v0, v16

    if-lt v15, v0, :cond_4

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/HorizontalFastScroller;->mMatchDragPosition:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalFastScroller;->getSectionsFromIndexer()V

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalFastScroller;->refreshDrawablePressedState()V

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsHorizontalListView;->getCount()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Landroid/widget/HorizontalFastScroller;->updateLongList(II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v15}, Landroid/widget/AbsHorizontalListView;->getVerticalScrollbarPosition()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/HorizontalFastScroller;->setScrollbarPosition(I)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalFastScroller;->postAutoHide()V

    return-void

    .end local v6    # "previewSize":I
    .end local v9    # "textMinSize":I
    .end local v10    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "thumbImage":Landroid/widget/ImageView;
    :cond_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/HorizontalFastScroller;->mHasTrackImage:Z

    goto/16 :goto_0

    .restart local v6    # "previewSize":I
    .restart local v9    # "textMinSize":I
    .restart local v10    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "thumbImage":Landroid/widget/ImageView;
    :cond_4
    const/4 v15, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/widget/HorizontalFastScroller;)Landroid/widget/AbsHorizontalListView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;

    .prologue
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/HorizontalFastScroller;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;

    .prologue
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->beginDrag()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/HorizontalFastScroller;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;

    .prologue
    iget v0, p0, Landroid/widget/HorizontalFastScroller;->mInitialTouchY:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/HorizontalFastScroller;F)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;
    .param p1, "x1"    # F

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/HorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/HorizontalFastScroller;F)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;
    .param p1, "x1"    # F

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/HorizontalFastScroller;->scrollTo(F)V

    return-void
.end method

.method static synthetic access$502(Landroid/widget/HorizontalFastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HorizontalFastScroller;->mHasPendingDrag:Z

    return p1
.end method

.method static synthetic access$600(Landroid/widget/HorizontalFastScroller;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/HorizontalFastScroller;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;

    .prologue
    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$702(Landroid/widget/HorizontalFastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/HorizontalFastScroller;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HorizontalFastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
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

    sget-object v4, Landroid/widget/HorizontalFastScroller;->LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/HorizontalFastScroller;->TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/HorizontalFastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/HorizontalFastScroller;->BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

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
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private beginDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->getSectionsFromIndexer()V

    :cond_0
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    :cond_1
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->cancelFling()V

    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsHorizontalListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mHasPendingDrag:Z

    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/widget/TextView;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ta"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "res":Landroid/content/res/Resources;
    const v6, 0x105023e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .local v0, "minSize":I
    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .local v3, "textColor":Landroid/content/res/ColorStateList;
    const v6, 0x105023f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v4, v6

    .local v4, "textSize":F
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v5, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v6, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6}, Landroid/widget/AbsHorizontalListView;->getLayoutDirection()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutDirection(I)V

    return-object v5
.end method

.method private getPosFromItemCount(III)F
    .locals 15
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_0

    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v13, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->getSectionsFromIndexer()V

    :cond_1
    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_4

    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v13, :cond_4

    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mSections:[Ljava/lang/Object;

    array-length v13, v13

    if-lez v13, :cond_4

    const/4 v2, 0x1

    .local v2, "hasSections":Z
    :goto_0
    if-eqz v2, :cond_2

    iget-boolean v13, p0, Landroid/widget/HorizontalFastScroller;->mMatchDragPosition:Z

    if-nez v13, :cond_5

    :cond_2
    move/from16 v0, p1

    int-to-float v13, v0

    sub-int v14, p3, p2

    int-to-float v14, v14

    div-float v9, v13, v14

    :cond_3
    :goto_1
    return v9

    .end local v2    # "hasSections":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2    # "hasSections":Z
    :cond_5
    iget v13, p0, Landroid/widget/HorizontalFastScroller;->mHeaderCount:I

    sub-int p1, p1, v13

    if-gez p1, :cond_6

    const/4 v9, 0x0

    goto :goto_1

    :cond_6
    iget v13, p0, Landroid/widget/HorizontalFastScroller;->mHeaderCount:I

    sub-int p3, p3, v13

    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v13

    if-nez v13, :cond_8

    :cond_7
    const/4 v3, 0x0

    .local v3, "incrementalPos":F
    :goto_2
    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v10

    .local v10, "section":I
    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v13, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    .local v12, "sectionPos":I
    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mSections:[Ljava/lang/Object;

    array-length v11, v13

    .local v11, "sectionCount":I
    add-int/lit8 v13, v11, -0x1

    if-ge v10, v13, :cond_a

    add-int/lit8 v13, v10, 0x1

    if-ge v13, v11, :cond_9

    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v14, v10, 0x1

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v6

    .local v6, "nextSectionPos":I
    :goto_3
    sub-int v8, v6, v12

    .end local v6    # "nextSectionPos":I
    .local v8, "positionsInSection":I
    :goto_4
    if-nez v8, :cond_b

    const/4 v7, 0x0

    .local v7, "posWithinSection":F
    :goto_5
    int-to-float v13, v10

    add-float/2addr v13, v7

    int-to-float v14, v11

    div-float v9, v13, v14

    .local v9, "result":F
    if-lez p1, :cond_3

    add-int v13, p1, p2

    move/from16 v0, p3

    if-ne v13, v0, :cond_3

    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    add-int/lit8 v14, p2, -0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, "lastChild":Landroid/view/View;
    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v13}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v13

    iget-object v14, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v14}, Landroid/widget/AbsHorizontalListView;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v5, v13, v14

    .local v5, "lastItemVisible":F
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v9

    mul-float/2addr v13, v5

    add-float/2addr v9, v13

    goto :goto_1

    .end local v3    # "incrementalPos":F
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastItemVisible":F
    .end local v7    # "posWithinSection":F
    .end local v8    # "positionsInSection":I
    .end local v9    # "result":F
    .end local v10    # "section":I
    .end local v11    # "sectionCount":I
    .end local v12    # "sectionPos":I
    :cond_8
    iget-object v13, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v13}, Landroid/widget/AbsHorizontalListView;->getPaddingTop()I

    move-result v13

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v3, v13, v14

    .restart local v3    # "incrementalPos":F
    goto :goto_2

    .restart local v10    # "section":I
    .restart local v11    # "sectionCount":I
    .restart local v12    # "sectionPos":I
    :cond_9
    add-int/lit8 v6, p3, -0x1

    .restart local v6    # "nextSectionPos":I
    goto :goto_3

    .end local v6    # "nextSectionPos":I
    :cond_a
    sub-int v8, p3, v12

    .restart local v8    # "positionsInSection":I
    goto :goto_4

    :cond_b
    move/from16 v0, p1

    int-to-float v13, v0

    add-float/2addr v13, v3

    int-to-float v14, v12

    sub-float/2addr v13, v14

    int-to-float v14, v8

    div-float v7, v13, v14

    .restart local v7    # "posWithinSection":F
    goto :goto_5
.end method

.method private getPosFromMotionEvent(F)F
    .locals 11
    .param p1, "y"    # F

    .prologue
    const/4 v8, 0x0

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .local v1, "container":Landroid/graphics/Rect;
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .local v6, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .local v0, "bottom":I
    iget-object v7, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .local v7, "trackImage":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v9

    int-to-float v3, v9

    .local v3, "min":F
    invoke-virtual {v7}, Landroid/widget/ImageView;->getBottom()I

    move-result v9

    int-to-float v2, v9

    .local v2, "max":F
    move v4, v3

    .local v4, "offset":F
    sub-float v5, v2, v3

    .local v5, "range":F
    cmpg-float v9, v5, v8

    if-gtz v9, :cond_0

    :goto_0
    return v8

    :cond_0
    sub-float v9, p1, v4

    div-float/2addr v9, v5

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v8, v10}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v8

    goto :goto_0
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/HorizontalFastScroller;->mHeaderCount:I

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    instance-of v2, v0, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .local v1, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/HorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/HorizontalFastScroller;->mSections:[Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_2
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Landroid/widget/BaseAdapter;

    iput-object v2, p0, Landroid/widget/HorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/HorizontalFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_3
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/HorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    iput-object v3, p0, Landroid/widget/HorizontalFastScroller;->mSections:[Ljava/lang/Object;

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
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/HorizontalFastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mHasTrackImage:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/widget/HorizontalFastScroller;->isPointInsideY(F)Z

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

.method private isPointInsideX(F)Z
    .locals 3
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/widget/HorizontalFastScroller;->mLayoutFromRight:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

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
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    .local v1, "offset":F
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float v2, v3, v1

    .local v2, "top":F
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    int-to-float v3, v3

    add-float v0, v3, v1

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

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/HorizontalFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/HorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method private layoutTrack()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    iget-object v9, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .local v9, "track":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .local v6, "thumb":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .local v2, "containerWidth":I
    const/high16 v12, -0x80000000

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .local v11, "widthMeasureSpec":I
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "heightMeasureSpec":I
    invoke-virtual {v9, v11, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .local v10, "trackWidth":I
    if-nez v6, :cond_0

    move v7, v4

    .local v7, "thumbHalfHeight":I
    :goto_0
    if-nez v6, :cond_1

    .local v4, "left":I
    :goto_1
    add-int v5, v4, v10

    .local v5, "right":I
    iget v12, v1, Landroid/graphics/Rect;->top:I

    add-int v8, v12, v7

    .local v8, "top":I
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v12, v7

    .local v0, "bottom":I
    invoke-virtual {v9, v4, v8, v5, v0}, Landroid/view/View;->layout(IIII)V

    return-void

    .end local v0    # "bottom":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v7    # "thumbHalfHeight":I
    .end local v8    # "top":I
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v7, v12, 0x2

    goto :goto_0

    .restart local v7    # "thumbHalfHeight":I
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    add-int v4, v12, v13

    goto :goto_1
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    if-nez p2, :cond_0

    const/4 v8, 0x0

    .local v8, "marginLeft":I
    const/4 v10, 0x0

    .local v10, "marginTop":I
    const/4 v9, 0x0

    .local v9, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .local v5, "containerWidth":I
    sub-int v15, v5, v8

    sub-int v1, v15, v9

    .local v1, "adjMaxWidth":I
    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .local v14, "widthMeasureSpec":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .local v6, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .local v4, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .local v13, "width":I
    div-int/lit8 v15, v4, 0xa

    add-int/2addr v15, v10

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v12, v15, v16

    .local v12, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v2, v12, v15

    .local v2, "bottom":I
    sub-int v15, v5, v13

    div-int/lit8 v15, v15, 0x2

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v7, v15, v16

    .local v7, "left":I
    add-int v11, v7, v13

    .local v11, "right":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v12, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .end local v1    # "adjMaxWidth":I
    .end local v2    # "bottom":I
    .end local v3    # "container":Landroid/graphics/Rect;
    .end local v4    # "containerHeight":I
    .end local v5    # "containerWidth":I
    .end local v6    # "heightMeasureSpec":I
    .end local v7    # "left":I
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    .end local v10    # "marginTop":I
    .end local v11    # "right":I
    .end local v12    # "top":I
    .end local v13    # "width":I
    .end local v14    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .restart local v8    # "marginLeft":I
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .restart local v10    # "marginTop":I
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .restart local v9    # "marginRight":I
    goto :goto_0
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget v1, p0, Landroid/widget/HorizontalFastScroller;->mOverlayPosition:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/HorizontalFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/HorizontalFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    if-nez p3, :cond_0

    const/4 v7, 0x0

    .local v7, "marginLeft":I
    const/4 v9, 0x0

    .local v9, "marginTop":I
    const/4 v8, 0x0

    .local v8, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .local v4, "containerWidth":I
    if-nez p2, :cond_1

    move v10, v4

    .local v10, "maxWidth":I
    :goto_1
    sub-int v15, v10, v7

    sub-int v1, v15, v8

    .local v1, "adjMaxWidth":I
    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .local v14, "widthMeasureSpec":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .local v5, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .local v13, "width":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/HorizontalFastScroller;->mLayoutFromRight:Z

    if-eqz v15, :cond_4

    if-nez p2, :cond_3

    iget v15, v3, Landroid/graphics/Rect;->right:I

    :goto_2
    sub-int v11, v15, v8

    .local v11, "right":I
    sub-int v6, v11, v13

    .local v6, "left":I
    :goto_3
    move v12, v9

    .local v12, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v2, v12, v15

    .local v2, "bottom":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v12, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .end local v1    # "adjMaxWidth":I
    .end local v2    # "bottom":I
    .end local v3    # "container":Landroid/graphics/Rect;
    .end local v4    # "containerWidth":I
    .end local v5    # "heightMeasureSpec":I
    .end local v6    # "left":I
    .end local v7    # "marginLeft":I
    .end local v8    # "marginRight":I
    .end local v9    # "marginTop":I
    .end local v10    # "maxWidth":I
    .end local v11    # "right":I
    .end local v12    # "top":I
    .end local v13    # "width":I
    .end local v14    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .restart local v7    # "marginLeft":I
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .restart local v9    # "marginTop":I
    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->right:I

    .restart local v8    # "marginRight":I
    goto :goto_0

    .restart local v3    # "container":Landroid/graphics/Rect;
    .restart local v4    # "containerWidth":I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/HorizontalFastScroller;->mLayoutFromRight:Z

    if-eqz v15, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v10

    .restart local v10    # "maxWidth":I
    goto :goto_1

    .end local v10    # "maxWidth":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int v10, v4, v15

    .restart local v10    # "maxWidth":I
    goto :goto_1

    .restart local v1    # "adjMaxWidth":I
    .restart local v5    # "heightMeasureSpec":I
    .restart local v13    # "width":I
    .restart local v14    # "widthMeasureSpec":I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    goto :goto_2

    :cond_4
    if-nez p2, :cond_5

    iget v15, v3, Landroid/graphics/Rect;->left:I

    :goto_4
    add-int v6, v15, v7

    .restart local v6    # "left":I
    add-int v11, v6, v13

    .restart local v11    # "right":I
    goto :goto_3

    .end local v6    # "left":I
    .end local v11    # "right":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v15

    goto :goto_4
.end method

.method private onStateDependencyChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView;->resolvePadding()V

    return-void

    :cond_1
    iget v0, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->postAutoHide()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->stop()V

    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 3

    .prologue
    iget v1, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void

    .end local v0    # "isPressed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollTo(F)V
    .locals 23
    .param p1, "position"    # F

    .prologue
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HorizontalFastScroller;->mScrollCompleted:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/AbsHorizontalListView;->getCount()I

    move-result v3

    .local v3, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .local v16, "sections":[Ljava/lang/Object;
    if-nez v16, :cond_3

    const/4 v14, 0x0

    .local v14, "sectionCount":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    if-eqz v16, :cond_a

    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v14, v0, :cond_a

    int-to-float v0, v14

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v22, v14, -0x1

    invoke-static/range {v20 .. v22}, Landroid/util/MathUtils;->constrain(III)I

    move-result v4

    .local v4, "exactSection":I
    move/from16 v19, v4

    .local v19, "targetSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    .local v18, "targetIndex":I
    move/from16 v15, v19

    .local v15, "sectionIndex":I
    move v7, v3

    .local v7, "nextIndex":I
    move/from16 v11, v18

    .local v11, "prevIndex":I
    move/from16 v13, v19

    .local v13, "prevSection":I
    add-int/lit8 v10, v19, 0x1

    .local v10, "nextSection":I
    add-int/lit8 v20, v14, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    add-int/lit8 v21, v19, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    :cond_0
    move/from16 v0, v18

    if-ne v7, v0, :cond_2

    :cond_1
    if-lez v19, :cond_2

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    move/from16 v0, v18

    if-eq v11, v0, :cond_4

    move/from16 v13, v19

    move/from16 v15, v19

    :cond_2
    :goto_1
    add-int/lit8 v8, v10, 0x1

    .local v8, "nextNextSection":I
    :goto_2
    if-ge v8, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    move/from16 v0, v20

    if-ne v0, v7, :cond_5

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v4    # "exactSection":I
    .end local v7    # "nextIndex":I
    .end local v8    # "nextNextSection":I
    .end local v10    # "nextSection":I
    .end local v11    # "prevIndex":I
    .end local v13    # "prevSection":I
    .end local v14    # "sectionCount":I
    .end local v15    # "sectionIndex":I
    .end local v18    # "targetIndex":I
    .end local v19    # "targetSection":I
    :cond_3
    move-object/from16 v0, v16

    array-length v14, v0

    goto/16 :goto_0

    .restart local v4    # "exactSection":I
    .restart local v7    # "nextIndex":I
    .restart local v10    # "nextSection":I
    .restart local v11    # "prevIndex":I
    .restart local v13    # "prevSection":I
    .restart local v14    # "sectionCount":I
    .restart local v15    # "sectionIndex":I
    .restart local v18    # "targetIndex":I
    .restart local v19    # "targetSection":I
    :cond_4
    if-nez v19, :cond_1

    const/4 v15, 0x0

    goto :goto_1

    .restart local v8    # "nextNextSection":I
    :cond_5
    int-to-float v0, v13

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v12, v20, v21

    .local v12, "prevPosition":F
    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v9, v20, v21

    .local v9, "nextPosition":F
    if-nez v3, :cond_7

    const v17, 0x7f7fffff    # Float.MAX_VALUE

    .local v17, "snapThreshold":F
    :goto_3
    if-ne v13, v4, :cond_8

    sub-float v20, p1, v12

    cmpg-float v20, v20, v17

    if-gez v20, :cond_8

    move/from16 v18, v11

    :goto_4
    const/16 v20, 0x0

    add-int/lit8 v21, v3, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/HorizontalListView;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/HorizontalListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v18

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/HorizontalListView;->setSelectionFromTop(II)V

    .end local v4    # "exactSection":I
    .end local v7    # "nextIndex":I
    .end local v8    # "nextNextSection":I
    .end local v9    # "nextPosition":F
    .end local v10    # "nextSection":I
    .end local v11    # "prevIndex":I
    .end local v12    # "prevPosition":F
    .end local v13    # "prevSection":I
    .end local v17    # "snapThreshold":F
    .end local v18    # "targetIndex":I
    .end local v19    # "targetSection":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalFastScroller;->mCurrentSection:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v15, :cond_6

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/HorizontalFastScroller;->mCurrentSection:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/widget/HorizontalFastScroller;->transitionPreviewLayout(I)Z

    move-result v5

    .local v5, "hasPreview":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalFastScroller;->mShowingPreview:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    if-eqz v5, :cond_c

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalFastScroller;->transitionToDragging()V

    .end local v5    # "hasPreview":Z
    :cond_6
    :goto_6
    return-void

    .restart local v4    # "exactSection":I
    .restart local v7    # "nextIndex":I
    .restart local v8    # "nextNextSection":I
    .restart local v9    # "nextPosition":F
    .restart local v10    # "nextSection":I
    .restart local v11    # "prevIndex":I
    .restart local v12    # "prevPosition":F
    .restart local v13    # "prevSection":I
    .restart local v18    # "targetIndex":I
    .restart local v19    # "targetSection":I
    :cond_7
    const/high16 v20, 0x3e000000    # 0.125f

    int-to-float v0, v3

    move/from16 v21, v0

    div-float v17, v20, v21

    goto :goto_3

    .restart local v17    # "snapThreshold":F
    :cond_8
    sub-int v20, v7, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v21, p1, v12

    mul-float v20, v20, v21

    sub-float v21, v9, v12

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v18, v11, v20

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v18

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsHorizontalListView;->setSelection(I)V

    goto :goto_5

    .end local v4    # "exactSection":I
    .end local v7    # "nextIndex":I
    .end local v8    # "nextNextSection":I
    .end local v9    # "nextPosition":F
    .end local v10    # "nextSection":I
    .end local v11    # "prevIndex":I
    .end local v12    # "prevPosition":F
    .end local v13    # "prevSection":I
    .end local v15    # "sectionIndex":I
    .end local v17    # "snapThreshold":F
    .end local v18    # "targetIndex":I
    .end local v19    # "targetSection":I
    :cond_a
    int-to-float v0, v3

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v22, v3, -0x1

    invoke-static/range {v20 .. v22}, Landroid/util/MathUtils;->constrain(III)I

    move-result v6

    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/HorizontalListView;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/HorizontalListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v6

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/HorizontalListView;->setSelectionFromTop(II)V

    :goto_7
    const/4 v15, -0x1

    .restart local v15    # "sectionIndex":I
    goto/16 :goto_5

    .end local v15    # "sectionIndex":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsHorizontalListView;->setSelection(I)V

    goto :goto_7

    .end local v6    # "index":I
    .restart local v5    # "hasPreview":Z
    .restart local v15    # "sectionIndex":I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalFastScroller;->mShowingPreview:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    if-nez v5, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalFastScroller;->transitionToVisible()V

    goto/16 :goto_6
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    :cond_1
    iget v0, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    if-ne p1, v0, :cond_2

    :goto_0
    return-void

    :cond_2
    packed-switch p1, :pswitch_data_0

    :goto_1
    iput p1, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->refreshDrawablePressedState()V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->transitionToHidden()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->transitionToVisible()V

    goto :goto_1

    :pswitch_2
    iget v0, p0, Landroid/widget/HorizontalFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/widget/HorizontalFastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->transitionToDragging()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->transitionToVisible()V

    goto :goto_1

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
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .local v3, "container":Landroid/graphics/Rect;
    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .local v17, "top":I
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    .local v18, "trackImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .local v15, "thumbImage":Landroid/widget/ImageView;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getTop()I

    move-result v19

    move/from16 v0, v19

    int-to-float v6, v0

    .local v6, "min":F
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getBottom()I

    move-result v19

    move/from16 v0, v19

    int-to-float v4, v0

    .local v4, "max":F
    move v8, v6

    .local v8, "offset":F
    sub-float v14, v4, v6

    .local v14, "range":F
    mul-float v19, p1, v14

    add-float v16, v19, v8

    .local v16, "thumbMiddle":F
    invoke-virtual {v15}, Landroid/widget/ImageView;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v16, v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalFastScroller;->mOverlayPosition:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    move/from16 v12, v16

    .local v12, "previewPos":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .local v10, "previewImage":Landroid/widget/ImageView;
    invoke-virtual {v10}, Landroid/widget/ImageView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v9, v19, v20

    .local v9, "previewHalfHeight":F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v7, v19, v9

    .local v7, "minP":F
    int-to-float v0, v2

    move/from16 v19, v0

    sub-float v5, v19, v9

    .local v5, "maxP":F
    invoke-static {v12, v7, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v11

    .local v11, "previewMiddle":F
    sub-float v13, v11, v9

    .local v13, "previewTop":F
    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setTranslationY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTranslationY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void

    .end local v5    # "maxP":F
    .end local v7    # "minP":F
    .end local v9    # "previewHalfHeight":F
    .end local v10    # "previewImage":Landroid/widget/ImageView;
    .end local v11    # "previewMiddle":F
    .end local v12    # "previewPos":F
    .end local v13    # "previewTop":F
    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private startPendingDrag()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mHasPendingDrag:Z

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    sget-wide v2, Landroid/widget/HorizontalFastScroller;->TAP_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 24
    .param p1, "sectionIndex"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalFastScroller;->mSections:[Ljava/lang/Object;

    .local v13, "sections":[Ljava/lang/Object;
    const/16 v19, 0x0

    .local v19, "text":Ljava/lang/String;
    if-eqz v13, :cond_0

    if-ltz p1, :cond_0

    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-object v12, v13, p1

    .local v12, "section":Ljava/lang/Object;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .end local v12    # "section":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .local v4, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    .local v7, "preview":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalFastScroller;->mShowingPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .local v15, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .local v17, "target":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Landroid/widget/HorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Landroid/widget/HorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/widget/HorizontalFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v14

    .local v14, "showTarget":Landroid/animation/Animator;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v0}, Landroid/widget/HorizontalFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .local v6, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->left:I

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->top:I

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->right:I

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v4}, Landroid/widget/HorizontalFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v9

    .local v9, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v20, 0x64

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v20, Landroid/animation/AnimatorSet;

    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .local v5, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v20

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v21

    sub-int v8, v20, v21

    .local v8, "previewWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getWidth()I

    move-result v18

    .local v18, "targetWidth":I
    move/from16 v0, v18

    if-le v0, v8, :cond_4

    int-to-float v0, v8

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/widget/HorizontalFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .local v11, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v16

    .local v16, "showingWidth":I
    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    .local v10, "scale":F
    invoke-static {v15, v10}, Landroid/widget/HorizontalFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .restart local v11    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .end local v10    # "scale":F
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    const/16 v20, 0x1

    :goto_2
    return v20

    .end local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v6    # "hideShowing":Landroid/animation/Animator;
    .end local v8    # "previewWidth":I
    .end local v9    # "resizePreview":Landroid/animation/Animator;
    .end local v14    # "showTarget":Landroid/animation/Animator;
    .end local v15    # "showing":Landroid/widget/TextView;
    .end local v16    # "showingWidth":I
    .end local v17    # "target":Landroid/widget/TextView;
    .end local v18    # "targetWidth":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .restart local v15    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .restart local v17    # "target":Landroid/widget/TextView;
    goto/16 :goto_0

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

    .restart local v16    # "showingWidth":I
    :cond_5
    const/16 v20, 0x0

    goto :goto_2
.end method

.method private transitionToDragging()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x96

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/widget/HorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x0

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/widget/HorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v6, p0, Landroid/widget/HorizontalFastScroller;->mShowingPreview:Z

    return-void
.end method

.method private transitionToHidden()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x12c

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    iget-object v6, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v9

    iget-object v6, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, p0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/widget/HorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-boolean v3, p0, Landroid/widget/HorizontalFastScroller;->mLayoutFromRight:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .local v1, "offset":F
    :goto_0
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v10, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v9

    invoke-static {v3, v1, v4}, Landroid/widget/HorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .local v2, "slideOut":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v0, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v8, p0, Landroid/widget/HorizontalFastScroller;->mShowingPreview:Z

    return-void

    .end local v1    # "offset":F
    .end local v2    # "slideOut":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v1, v3

    goto :goto_0
.end method

.method private transitionToVisible()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v4, 0x3f800000    # 1.0f

    new-array v5, v9, [Landroid/view/View;

    iget-object v6, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v7

    iget-object v6, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/widget/HorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v11, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v4, v8

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v4, v9

    invoke-static {v3, v10, v4}, Landroid/widget/HorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .local v1, "fadeOut":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v9, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    invoke-static {v3, v10, v4}, Landroid/widget/HorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .local v2, "slideIn":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v11, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v7, p0, Landroid/widget/HorizontalFastScroller;->mShowingPreview:Z

    return-void
.end method

.method private updateContainerRect()V
    .locals 7

    .prologue
    const/high16 v6, 0x1000000

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    .local v1, "list":Landroid/widget/AbsHorizontalListView;
    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->resolvePadding()V

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .local v0, "container":Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/widget/HorizontalFastScroller;->mScrollBarStyle:I

    .local v2, "scrollbarStyle":I
    if-eq v2, v6, :cond_0

    if-nez v2, :cond_1

    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v6, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->getWidth()I

    move-result v3

    .local v3, "width":I
    iget v4, p0, Landroid/widget/HorizontalFastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .end local v3    # "width":I
    :cond_1
    :goto_0
    return-void

    .restart local v3    # "width":I
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private updateLongList(II)V
    .locals 3
    .param p1, "visibleItemCount"    # I
    .param p2, "totalItemCount"    # I

    .prologue
    if-lez p1, :cond_1

    div-int v1, p2, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .local v0, "longList":Z
    :goto_0
    iget-boolean v1, p0, Landroid/widget/HorizontalFastScroller;->mLongList:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mLongList:Z

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->onStateDependencyChanged()V

    :cond_0
    return-void

    .end local v0    # "longList":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/HorizontalFastScroller;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/HorizontalFastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mAlwaysShow:Z

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

    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "actionMasked":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    :cond_2
    iget v1, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalFastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalFastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->isInScrollingContainer()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->beginDrag()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalFastScroller;->mInitialTouchY:F

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->startPendingDrag()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalFastScroller;->isPointInside(FF)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->cancelPendingDrag()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->cancelPendingDrag()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemCountChanged(I)V
    .locals 5
    .param p1, "totalItemCount"    # I

    .prologue
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v2

    .local v2, "visibleItemCount":I
    sub-int v3, p1, v2

    if-lez v3, :cond_1

    const/4 v1, 0x1

    .local v1, "hasMoreItems":Z
    :goto_0
    if-eqz v1, :cond_0

    iget v3, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/AbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, v2, p1}, Landroid/widget/HorizontalFastScroller;->getPosFromItemCount(III)F

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/HorizontalFastScroller;->setThumbPos(F)V

    .end local v0    # "firstVisibleItem":I
    :cond_0
    invoke-direct {p0, v2, p1}, Landroid/widget/HorizontalFastScroller;->updateLongList(II)V

    return-void

    .end local v1    # "hasMoreItems":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScroll(III)V
    .locals 4
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sub-int v2, p3, p2

    if-lez v2, :cond_2

    move v0, v1

    .local v0, "hasMoreItems":Z
    :cond_2
    if-eqz v0, :cond_3

    iget v2, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    if-eq v2, v3, :cond_3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/HorizontalFastScroller;->setThumbPos(F)V

    :cond_3
    iput-boolean v1, p0, Landroid/widget/HorizontalFastScroller;->mScrollCompleted:Z

    iget v2, p0, Landroid/widget/HorizontalFastScroller;->mFirstVisibleItem:I

    if-eq v2, p1, :cond_0

    iput p1, p0, Landroid/widget/HorizontalFastScroller;->mFirstVisibleItem:I

    iget v2, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v1}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->updateLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v3, p0, Landroid/widget/HorizontalFastScroller;->mHasPendingDrag:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->beginDrag()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/HorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .local v0, "pos":F
    invoke-direct {p0, v0}, Landroid/widget/HorizontalFastScroller;->setThumbPos(F)V

    invoke-direct {p0, v0}, Landroid/widget/HorizontalFastScroller;->scrollTo(F)V

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->cancelPendingDrag()V

    .end local v0    # "pos":F
    :cond_2
    iget v3, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsHorizontalListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    :cond_3
    invoke-direct {p0, v2}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->postAutoHide()V

    move v1, v2

    goto :goto_0

    :pswitch_1
    iget-boolean v3, p0, Landroid/widget/HorizontalFastScroller;->mHasPendingDrag:Z

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalFastScroller;->mInitialTouchY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalFastScroller;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    invoke-direct {p0, v5}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v3, :cond_4

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->getSectionsFromIndexer()V

    :cond_4
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsHorizontalListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    :cond_5
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->cancelFling()V

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->cancelPendingDrag()V

    :cond_6
    iget v3, p0, Landroid/widget/HorizontalFastScroller;->mState:I

    if-ne v3, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/HorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .restart local v0    # "pos":F
    invoke-direct {p0, v0}, Landroid/widget/HorizontalFastScroller;->setThumbPos(F)V

    iget-boolean v1, p0, Landroid/widget/HorizontalFastScroller;->mScrollCompleted:Z

    if-eqz v1, :cond_7

    invoke-direct {p0, v0}, Landroid/widget/HorizontalFastScroller;->scrollTo(F)V

    :cond_7
    move v1, v2

    goto/16 :goto_0

    .end local v0    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/HorizontalFastScroller;->mAlwaysShow:Z

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->onStateDependencyChanged()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/HorizontalFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/HorizontalFastScroller;->mEnabled:Z

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->onStateDependencyChanged()V

    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    iget v0, p0, Landroid/widget/HorizontalFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/HorizontalFastScroller;->mScrollBarStyle:I

    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->updateLayout()V

    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    iget-object v4, p0, Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    move p1, v3

    :cond_0
    :goto_0
    iget v4, p0, Landroid/widget/HorizontalFastScroller;->mScrollbarPosition:I

    if-eq v4, p1, :cond_2

    iput p1, p0, Landroid/widget/HorizontalFastScroller;->mScrollbarPosition:I

    if-eq p1, v3, :cond_4

    move v4, v3

    :goto_1
    iput-boolean v4, p0, Landroid/widget/HorizontalFastScroller;->mLayoutFromRight:Z

    iget-object v4, p0, Landroid/widget/HorizontalFastScroller;->mPreviewResId:[I

    iget-boolean v6, p0, Landroid/widget/HorizontalFastScroller;->mLayoutFromRight:Z

    if-eqz v6, :cond_5

    :goto_2
    aget v2, v4, v3

    .local v2, "previewResId":I
    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v3, p0, Landroid/widget/HorizontalFastScroller;->mPreviewPadding:I

    iget v4, p0, Landroid/widget/HorizontalFastScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v3, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalFastScroller;->updateLayout()V

    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v2    # "previewResId":I
    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x2

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_2
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/HorizontalFastScroller;->setState(I)V

    return-void
.end method

.method public updateLayout()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Landroid/widget/HorizontalFastScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/HorizontalFastScroller;->mUpdatingLayout:Z

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->updateContainerRect()V

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->layoutThumb()V

    invoke-direct {p0}, Landroid/widget/HorizontalFastScroller;->layoutTrack()V

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/HorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/HorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/HorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/HorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller;->mPreviewImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/HorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/HorizontalFastScroller;->mUpdatingLayout:Z

    goto :goto_0
.end method
