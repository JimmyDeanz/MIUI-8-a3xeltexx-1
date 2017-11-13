.class public Lcom/android/incallui/view/SlidingUpPanelLayout;
.super Landroid/view/ViewGroup;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/view/SlidingUpPanelLayout$1;,
        Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;,
        Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;,
        Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;,
        Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;
    }
.end annotation


# static fields
.field private static final DEFAULT_ATTRS:[I

.field public static final DIFF_SLIDE_OFFSET:F

.field private static final TAG:Ljava/lang/String;

.field private static mDragSlop:I


# instance fields
.field private mAnchorPoint:F

.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private final mCoveredFadePaint:Landroid/graphics/Paint;

.field private mDeviceHeight:I

.field private mDragHelperCallback:Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;

.field private mDragReleaseView:Landroid/view/View;

.field private mDragView:Landroid/view/View;

.field private mDragViewResId:I

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsSlidingEnabled:Z

.field private mIsSlidingUp:Z

.field private mIsUnableToDrag:Z

.field private mIsUsingDragViewTouchEvents:Z

.field private mMainView:Landroid/view/View;

.field private mMinFlingVelocity:I

.field private mOverlayContent:Z

.field private mPanelHeight:I

.field private mPanelSlideListener:Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;

.field private mParalaxOffset:I

.field private final mScrollTouchSlop:I

.field private final mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowHeight:I

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideState:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

.field private mSlideableView:Landroid/view/View;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const-class v0, Lcom/android/incallui/view/SlidingUpPanelLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100af

    aput v2, v0, v1

    sput-object v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->DEFAULT_ATTRS:[I

    .line 49
    const v0, 0x3e947ae2    # 0.29000002f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sput v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->DIFF_SLIDE_OFFSET:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput v6, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 56
    const/16 v4, 0x190

    iput v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mMinFlingVelocity:I

    .line 58
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    .line 60
    iput v8, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelHeight:I

    .line 61
    iput v8, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mShadowHeight:I

    .line 62
    iput v8, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mParalaxOffset:I

    .line 63
    iput-boolean v6, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mOverlayContent:Z

    .line 66
    iput v8, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragViewResId:I

    .line 67
    iput-object v9, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragReleaseView:Landroid/view/View;

    .line 76
    sget-object v4, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    iput-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideState:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    .line 96
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 100
    iput-boolean v5, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 101
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 127
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    iput-object v9, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    iput v6, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mScrollTouchSlop:I

    .line 130
    iput-object v9, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    .line 201
    :goto_0
    return-void

    .line 134
    :cond_0
    if-eqz p2, :cond_4

    .line 135
    sget-object v4, Lcom/android/incallui/view/SlidingUpPanelLayout;->DEFAULT_ATTRS:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    .local v0, "defAttrs":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 138
    .local v2, "gravity":I
    const/16 v4, 0x30

    if-eq v2, v4, :cond_1

    const/16 v4, 0x50

    if-eq v2, v4, :cond_1

    .line 139
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "gravity must be set to either top or bottom"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 142
    :cond_1
    const/16 v4, 0x50

    if-ne v2, v4, :cond_8

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsSlidingUp:Z

    .line 144
    .end local v2    # "gravity":I
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    sget-object v4, Lcom/android/incallui/R$styleable;->SlidingUpPanelLayout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 147
    .local v3, "ta":Landroid/content/res/TypedArray;
    if-eqz v3, :cond_3

    .line 148
    invoke-virtual {v3, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelHeight:I

    .line 150
    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mShadowHeight:I

    .line 152
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mParalaxOffset:I

    .line 154
    const/4 v4, 0x4

    const/16 v7, 0x190

    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mMinFlingVelocity:I

    .line 156
    const/4 v4, 0x3

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 158
    const/4 v4, 0x5

    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragViewResId:I

    .line 159
    const/4 v4, 0x6

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mOverlayContent:Z

    .line 162
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    .end local v0    # "defAttrs":Landroid/content/res/TypedArray;
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .line 166
    .local v1, "density":F
    iget v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelHeight:I

    if-ne v4, v8, :cond_5

    .line 167
    const/high16 v4, 0x42880000    # 68.0f

    mul-float/2addr v4, v1

    add-float/2addr v4, v10

    float-to-int v4, v4

    iput v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelHeight:I

    .line 169
    :cond_5
    iget v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mShadowHeight:I

    if-ne v4, v8, :cond_6

    .line 170
    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, v1

    add-float/2addr v4, v10

    float-to-int v4, v4

    iput v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mShadowHeight:I

    .line 172
    :cond_6
    iget v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mParalaxOffset:I

    if-ne v4, v8, :cond_7

    .line 173
    const/4 v4, 0x0

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mParalaxOffset:I

    .line 177
    :cond_7
    iget v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mShadowHeight:I

    if-lez v4, :cond_a

    .line 178
    iget-boolean v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v4, :cond_9

    .line 179
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f02000d

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 188
    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setWillNotDraw(Z)V

    .line 190
    new-instance v4, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;

    invoke-direct {v4, p0}, Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;-><init>(Lcom/android/incallui/view/SlidingUpPanelLayout;)V

    iput-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragHelperCallback:Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;

    .line 191
    iget-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragHelperCallback:Lcom/android/incallui/view/SlidingUpPanelLayout$DragHelperCallback;

    invoke-static {p0, v10, v4}, Lcom/android/incallui/view/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/android/incallui/view/ViewDragHelper$Callback;)Lcom/android/incallui/view/ViewDragHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    .line 192
    iget-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    invoke-virtual {v4}, Lcom/android/incallui/view/ViewDragHelper;->getMinVelocity()F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mMinFlingVelocity:I

    .line 194
    iput-boolean v5, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mCanSlide:Z

    .line 195
    iput-boolean v5, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsSlidingEnabled:Z

    .line 197
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mScrollTouchSlop:I

    .line 198
    iget-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    invoke-virtual {v4}, Lcom/android/incallui/view/ViewDragHelper;->getTouchSlop()I

    move-result v4

    sput v4, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragSlop:I

    .line 200
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDeviceHeight:I

    goto/16 :goto_0

    .end local v1    # "density":F
    .restart local v0    # "defAttrs":Landroid/content/res/TypedArray;
    .restart local v2    # "gravity":I
    :cond_8
    move v4, v6

    .line 142
    goto/16 :goto_1

    .line 181
    .end local v0    # "defAttrs":Landroid/content/res/TypedArray;
    .end local v2    # "gravity":I
    .restart local v1    # "density":F
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f02000f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 184
    :cond_a
    iput-object v9, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/incallui/view/SlidingUpPanelLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/SlidingUpPanelLayout;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/view/SlidingUpPanelLayout;)Lcom/android/incallui/view/ViewDragHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/SlidingUpPanelLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/view/SlidingUpPanelLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/SlidingUpPanelLayout;

    .prologue
    .line 29
    iget v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mMinFlingVelocity:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/view/SlidingUpPanelLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/SlidingUpPanelLayout;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsSlidingUp:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/view/SlidingUpPanelLayout;)Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/SlidingUpPanelLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideState:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/incallui/view/SlidingUpPanelLayout;Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;)Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/SlidingUpPanelLayout;
    .param p1, "x1"    # Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideState:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/incallui/view/SlidingUpPanelLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/SlidingUpPanelLayout;

    .prologue
    .line 29
    iget v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/incallui/view/SlidingUpPanelLayout;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/SlidingUpPanelLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/view/SlidingUpPanelLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/SlidingUpPanelLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragReleaseView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/view/SlidingUpPanelLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/SlidingUpPanelLayout;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->onPanelDragged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/view/SlidingUpPanelLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/SlidingUpPanelLayout;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getSlidingTop()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/incallui/view/SlidingUpPanelLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/SlidingUpPanelLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/view/SlidingUpPanelLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/SlidingUpPanelLayout;

    .prologue
    .line 29
    iget v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideRange:I

    return v0
.end method

.method private collapsePanel(Landroid/view/View;I)Z
    .locals 1
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "initialVelocity"    # I

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

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

.method private expandPanel(Landroid/view/View;IF)Z
    .locals 1
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "initialVelocity"    # I
    .param p3, "mSlideOffset"    # F

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p3, p2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

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

.method private getSlidingTop()I
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 675
    iget-boolean v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 679
    :goto_0
    return v0

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v0

    goto :goto_0

    .line 679
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 347
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 348
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDragViewUnder(II)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 649
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getDragView()Landroid/view/View;

    move-result-object v0

    .line 650
    .local v0, "dragView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 651
    const-string v5, "isDragViewUnder: dragView = null"

    invoke-direct {p0, v5}, Lcom/android/incallui/view/SlidingUpPanelLayout;->log(Ljava/lang/String;)V

    .line 661
    :goto_0
    return v6

    .line 655
    :cond_0
    new-array v4, v7, [I

    .line 656
    .local v4, "viewLocation":[I
    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 657
    new-array v1, v7, [I

    .line 658
    .local v1, "parentLocation":[I
    invoke-virtual {p0, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getLocationOnScreen([I)V

    .line 659
    aget v7, v1, v6

    add-int v2, v7, p1

    .line 660
    .local v2, "screenX":I
    aget v7, v1, v5

    add-int v3, v7, p2

    .line 661
    .local v3, "screenY":I
    aget v7, v4, v6

    if-lt v2, v7, :cond_1

    aget v7, v4, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    if-ge v2, v7, :cond_1

    aget v7, v4, v5

    if-lt v3, v7, :cond_1

    aget v7, v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    if-ge v3, v7, :cond_1

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1069
    sget-object v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return-void
.end method

.method private onPanelDragged(I)V
    .locals 6
    .param p1, "newTop"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 758
    invoke-direct {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getSlidingTop()I

    move-result v1

    .line 759
    .local v1, "topBound":I
    sub-int v2, p1, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPanelDragged: mSlideOffset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newTop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " topBound = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->log(Ljava/lang/String;)V

    .line 762
    iget v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    .line 763
    iput v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    .line 767
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 769
    iget v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mParalaxOffset:I

    if-lez v2, :cond_1

    .line 770
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getCurrentParalaxOffset()I

    move-result v0

    .line 771
    .local v0, "mainViewOffset":I
    iget-object v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 773
    .end local v0    # "mainViewOffset":I
    :cond_1
    return-void

    .line 764
    :cond_2
    iget v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    .line 765
    iput v5, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 905
    instance-of v0, p1, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collapsePanel()Z
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->collapsePanel(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public collapsePanelManual()V
    .locals 1

    .prologue
    .line 694
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 695
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    .line 696
    sget-object v0, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    iput-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideState:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    .line 697
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->requestLayout()V

    .line 698
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-boolean v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mCanSlide:Z

    if-nez v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    invoke-virtual {v0}, Lcom/android/incallui/view/ViewDragHelper;->abort()V

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method dispatchOnPanelCollapsed(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;->onPanelCollapsed(Landroid/view/View;)V

    .line 287
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 288
    return-void
.end method

.method dispatchOnPanelExpanded(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;->onPanelExpanded(Landroid/view/View;)V

    .line 280
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 281
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 3
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;

    iget v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    iget-object v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    invoke-interface {v0, p1, v1, v2}, Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;FLandroid/view/View;)V

    .line 274
    :cond_0
    return-void
.end method

.method dispatchOnPanelViewExpandReleased(Landroid/view/View;)V
    .locals 1
    .param p1, "releasedView"    # Landroid/view/View;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;->onPanelViewExpandReleased(Landroid/view/View;)V

    .line 300
    :cond_0
    return-void
.end method

.method dispatchPanelCollapsedReleased(Landroid/view/View;)V
    .locals 1
    .param p1, "releasedView"    # Landroid/view/View;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;->onPanelViewCollapsedReleased(Landroid/view/View;)V

    .line 294
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 518
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 519
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 520
    .local v3, "y":F
    packed-switch v0, :pswitch_data_0

    .line 534
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_1
    return v4

    .line 522
    :pswitch_0
    iput v2, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mInitialMotionX:F

    .line 523
    iput v3, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mInitialMotionY:F

    .line 525
    iget-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    invoke-virtual {v4}, Lcom/android/incallui/view/ViewDragHelper;->getViewDragState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 526
    const-string v4, "dispatchTouchEvent: dragState = STATE_SETTLING"

    invoke-direct {p0, v4}, Lcom/android/incallui/view/SlidingUpPanelLayout;->log(Ljava/lang/String;)V

    .line 527
    const/4 v4, 0x1

    goto :goto_1

    .line 530
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    invoke-virtual {v4, p1}, Lcom/android/incallui/view/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 531
    .local v1, "isIntercept":Z
    goto :goto_0

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 847
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 849
    iget-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v2

    .line 856
    .local v2, "right":I
    iget-boolean v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v4, :cond_2

    .line 857
    iget-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mShadowHeight:I

    sub-int v3, v4, v5

    .line 858
    .local v3, "top":I
    iget-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    .line 863
    .local v0, "bottom":I
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 865
    .local v1, "left":I
    iget-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 866
    iget-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 867
    iget-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 860
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v3    # "top":I
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 861
    .restart local v3    # "top":I
    iget-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mShadowHeight:I

    add-int v0, v4, v5

    .restart local v0    # "bottom":I
    goto :goto_1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 781
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;

    .line 783
    .local v4, "lp":Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->save(I)I

    move-result v6

    .line 785
    .local v6, "save":I
    const/4 v2, 0x0

    .line 787
    .local v2, "drawScrim":Z
    iget-boolean v7, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mCanSlide:Z

    if-eqz v7, :cond_1

    iget-boolean v7, v4, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v7, :cond_1

    .line 788
    iget-boolean v7, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v7, :cond_0

    .line 789
    iget-object v7, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 790
    iget-boolean v7, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v7, :cond_3

    .line 791
    iget-object v7, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 795
    :goto_0
    iget-object v7, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 797
    :cond_0
    iget v7, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_1

    .line 798
    const/4 v2, 0x1

    .line 802
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    .line 803
    .local v5, "result":Z
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 805
    if-eqz v2, :cond_2

    .line 806
    iget v7, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mCoveredFadeColor:I

    const/high16 v8, -0x1000000

    and-int/2addr v7, v8

    ushr-int/lit8 v0, v7, 0x18

    .line 807
    .local v0, "baseAlpha":I
    int-to-float v7, v0

    iget v8, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    sub-float v8, v10, v8

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 808
    .local v3, "imag":I
    shl-int/lit8 v7, v3, 0x18

    iget v8, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mCoveredFadeColor:I

    const v9, 0xffffff

    and-int/2addr v8, v9

    or-int v1, v7, v8

    .line 809
    .local v1, "color":I
    iget-object v7, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 810
    iget-object v7, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 813
    .end local v0    # "baseAlpha":I
    .end local v1    # "color":I
    .end local v3    # "imag":I
    :cond_2
    return v5

    .line 793
    .end local v5    # "result":Z
    :cond_3
    iget-object v7, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public expandPanel()Z
    .locals 1

    .prologue
    .line 687
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->expandPanel(F)Z

    move-result v0

    return v0
.end method

.method public expandPanel(F)Z
    .locals 3
    .param p1, "mSlideOffset"    # F

    .prologue
    const/4 v0, 0x0

    .line 715
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideState:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    sget-object v2, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    if-ne v1, v2, :cond_1

    .line 721
    :cond_0
    :goto_0
    return v0

    .line 718
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->isPaneVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 719
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->showPanel()V

    .line 721
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->expandPanel(Landroid/view/View;IF)Z

    move-result v0

    goto :goto_0
.end method

.method public expandPanelManual()V
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 705
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    .line 706
    sget-object v0, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    iput-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideState:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    .line 707
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->requestLayout()V

    .line 708
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 894
    new-instance v0, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0}, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 910
    new-instance v0, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 899
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getCurrentParalaxOffset()I
    .locals 4

    .prologue
    .line 238
    iget v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mParalaxOffset:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 239
    .local v0, "offset":I
    iget-boolean v1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    .end local v0    # "offset":I
    :cond_0
    return v0
.end method

.method getDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSlideOffset()F
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    return v0
.end method

.method public isExpanded()Z
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideState:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    sget-object v1, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaneVisible()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 733
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 737
    :goto_0
    return v2

    .line 736
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 737
    .local v0, "slidingPane":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 353
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 355
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 359
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 361
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 206
    iget v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragViewResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 207
    iget v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragViewResId:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    .line 209
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x0

    .line 539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    and-int/lit16 v0, v11, 0xff

    .line 540
    .local v0, "action":I
    iget-boolean v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mCanSlide:Z

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsSlidingEnabled:Z

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    if-eqz v11, :cond_1

    if-eqz v0, :cond_1

    .line 542
    :cond_0
    iget-object v10, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    invoke-virtual {v10}, Lcom/android/incallui/view/ViewDragHelper;->cancel()V

    .line 543
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 640
    :goto_0
    return v10

    .line 546
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 547
    .local v8, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 548
    .local v9, "y":F
    const/4 v7, 0x0

    .line 550
    .local v7, "shouldIntercept":Z
    packed-switch v0, :pswitch_data_0

    .line 639
    :cond_2
    :goto_1
    :pswitch_0
    iget-object v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    invoke-virtual {v11, p1}, Lcom/android/incallui/view/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 640
    goto :goto_0

    .line 552
    :pswitch_1
    iput-boolean v10, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    .line 553
    iput v8, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mInitialMotionX:F

    .line 554
    iput v9, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mInitialMotionY:F

    .line 557
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/android/incallui/view/SlidingUpPanelLayout;->isDragViewUnder(II)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsUsingDragViewTouchEvents:Z

    if-nez v11, :cond_2

    .line 558
    const/4 v7, 0x1

    goto :goto_1

    .line 564
    :pswitch_2
    iput v8, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mInitialMotionX:F

    .line 565
    iput v9, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mInitialMotionY:F

    goto :goto_1

    .line 570
    :pswitch_3
    iget v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mInitialMotionX:F

    sub-float v11, v8, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 571
    .local v1, "adx":F
    iget v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mInitialMotionY:F

    sub-float v11, v9, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 574
    .local v2, "ady":F
    iget-boolean v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsUsingDragViewTouchEvents:Z

    if-eqz v11, :cond_4

    .line 575
    iget v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mScrollTouchSlop:I

    int-to-float v11, v11

    cmpl-float v11, v1, v11

    if-lez v11, :cond_3

    iget v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mScrollTouchSlop:I

    int-to-float v11, v11

    cmpg-float v11, v2, v11

    if-gez v11, :cond_3

    .line 576
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_0

    .line 582
    :cond_3
    iget v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mScrollTouchSlop:I

    int-to-float v11, v11

    cmpl-float v11, v2, v11

    if-lez v11, :cond_4

    .line 583
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/android/incallui/view/SlidingUpPanelLayout;->isDragViewUnder(II)Z

    move-result v7

    .line 587
    :cond_4
    sget v11, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragSlop:I

    int-to-float v11, v11

    cmpl-float v11, v2, v11

    if-lez v11, :cond_5

    cmpl-float v11, v1, v2

    if-lez v11, :cond_5

    .line 589
    iget-object v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    invoke-virtual {v11}, Lcom/android/incallui/view/ViewDragHelper;->cancel()V

    .line 590
    iput-boolean v10, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    goto :goto_0

    .line 595
    :cond_5
    :try_start_0
    iget-object v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    invoke-virtual {v11, p1}, Lcom/android/incallui/view/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 596
    :catch_0
    move-exception v6

    .line 597
    .local v6, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onInterceptTouchEvent: ACTION_MOVE error "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/incallui/view/SlidingUpPanelLayout;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 607
    .end local v1    # "adx":F
    .end local v2    # "ady":F
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_4
    :try_start_1
    iget-object v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    invoke-virtual {v11, p1}, Lcom/android/incallui/view/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 612
    :goto_2
    iget v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mInitialMotionX:F

    sub-float v11, v8, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 613
    .local v4, "dx":F
    iget v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mInitialMotionY:F

    sub-float v11, v9, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 615
    .local v5, "dy":F
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getDragView()Landroid/view/View;

    move-result-object v3

    .line 616
    .local v3, "dragView":Landroid/view/View;
    cmpl-float v11, v4, v13

    if-nez v11, :cond_6

    cmpl-float v11, v5, v13

    if-eqz v11, :cond_7

    :cond_6
    sget v11, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragSlop:I

    int-to-float v11, v11

    cmpg-float v11, v5, v11

    if-gez v11, :cond_9

    .line 617
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->isExpanded()Z

    move-result v11

    if-nez v11, :cond_8

    .line 618
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->collapsePanel()Z

    goto/16 :goto_1

    .line 608
    .end local v3    # "dragView":Landroid/view/View;
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    :catch_1
    move-exception v6

    .line 609
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onInterceptTouchEvent: ACTION_UP error "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/incallui/view/SlidingUpPanelLayout;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 620
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "dragView":Landroid/view/View;
    .restart local v4    # "dx":F
    .restart local v5    # "dy":F
    :cond_8
    iget v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mAnchorPoint:F

    invoke-virtual {p0, v11}, Lcom/android/incallui/view/SlidingUpPanelLayout;->expandPanel(F)Z

    goto/16 :goto_1

    .line 622
    :cond_9
    mul-float v11, v4, v4

    mul-float v12, v5, v5

    add-float/2addr v11, v12

    sget v12, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragSlop:I

    sget v13, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragSlop:I

    mul-int/2addr v12, v13

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_2

    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/android/incallui/view/SlidingUpPanelLayout;->isDragViewUnder(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 624
    if-eqz v3, :cond_a

    .line 625
    invoke-virtual {v3, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 628
    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->isExpanded()Z

    move-result v11

    if-nez v11, :cond_b

    .line 629
    iget v11, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mAnchorPoint:F

    invoke-virtual {p0, v11}, Lcom/android/incallui/view/SlidingUpPanelLayout;->expandPanel(F)Z

    goto/16 :goto_1

    .line 631
    :cond_b
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->collapsePanel()Z

    goto/16 :goto_1

    .line 550
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v9

    .line 448
    .local v9, "paddingLeft":I
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v10

    .line 449
    .local v10, "paddingTop":I
    invoke-direct {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getSlidingTop()I

    move-result v11

    .line 451
    .local v11, "slidingTop":I
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getChildCount()I

    move-result v2

    .line 453
    .local v2, "childCount":I
    iget-boolean v12, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v12, :cond_0

    .line 454
    sget-object v12, Lcom/android/incallui/view/SlidingUpPanelLayout$1;->$SwitchMap$com$android$incallui$view$SlidingUpPanelLayout$SlideState:[I

    iget-object v13, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideState:Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;

    invoke-virtual {v13}, Lcom/android/incallui/view/SlidingUpPanelLayout$SlideState;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 459
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    .line 464
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v2, :cond_8

    .line 465
    invoke-virtual {p0, v7}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 467
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_2

    .line 464
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 456
    .end local v0    # "child":Landroid/view/View;
    .end local v7    # "i":I
    :pswitch_0
    iget-boolean v12, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mCanSlide:Z

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    :goto_3
    iput v12, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    :cond_1
    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_3

    .line 471
    .restart local v0    # "child":Landroid/view/View;
    .restart local v7    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;

    .line 472
    .local v8, "lp":Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 474
    .local v3, "childHeight":I
    iget-boolean v12, v8, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    if-eqz v12, :cond_3

    .line 475
    iget v12, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int v12, v3, v12

    iput v12, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideRange:I

    .line 479
    :cond_3
    iget-boolean v12, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v12, :cond_6

    .line 480
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "slidingTop = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , mSlideRange = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideRange:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , mSlideOffset = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/incallui/view/SlidingUpPanelLayout;->log(Ljava/lang/String;)V

    .line 481
    iget-boolean v12, v8, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    if-eqz v12, :cond_5

    iget v12, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v12, v12

    iget v13, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    add-int v6, v11, v12

    .line 490
    .local v6, "childTop":I
    :cond_4
    :goto_4
    add-int v1, v6, v3

    .line 491
    .local v1, "childBottom":I
    move v4, v9

    .line 492
    .local v4, "childLeft":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int v5, v4, v12

    .line 493
    .local v5, "childRight":I
    invoke-virtual {v0, v4, v6, v5, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .end local v1    # "childBottom":I
    .end local v4    # "childLeft":I
    .end local v5    # "childRight":I
    .end local v6    # "childTop":I
    :cond_5
    move v6, v10

    .line 481
    goto :goto_4

    .line 484
    :cond_6
    iget-boolean v12, v8, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    if-eqz v12, :cond_7

    iget v12, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v12, v12

    iget v13, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideOffset:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    sub-int v6, v11, v12

    .line 486
    .restart local v6    # "childTop":I
    :goto_5
    iget-boolean v12, v8, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    if-nez v12, :cond_4

    iget-boolean v12, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v12, :cond_4

    .line 487
    iget v12, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelHeight:I

    add-int/2addr v6, v12

    goto :goto_4

    .end local v6    # "childTop":I
    :cond_7
    move v6, v10

    .line 484
    goto :goto_5

    .line 496
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "childHeight":I
    .end local v8    # "lp":Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;
    :cond_8
    iget-boolean v12, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v12, :cond_9

    .line 497
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 500
    :cond_9
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 501
    return-void

    .line 454
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 365
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 366
    .local v13, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 368
    .local v14, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 369
    .local v6, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 371
    .local v7, "heightSize":I
    const/high16 v15, 0x40000000    # 2.0f

    if-eq v13, v15, :cond_0

    .line 372
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Width must have an exact value or MATCH_PARENT"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 373
    :cond_0
    const/high16 v15, 0x40000000    # 2.0f

    if-eq v6, v15, :cond_1

    .line 374
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Height must have an exact value or MATCH_PARENT"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 377
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v15

    sub-int v15, v7, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v16

    sub-int v9, v15, v16

    .line 378
    .local v9, "layoutHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v15

    sub-int v15, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v16

    sub-int v10, v15, v16

    .line 380
    .local v10, "layoutWidth":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelHeight:I

    .line 382
    .local v12, "panelHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getChildCount()I

    move-result v2

    .line 384
    .local v2, "childCount":I
    const/4 v15, 0x2

    if-le v2, v15, :cond_3

    .line 385
    sget-object v15, Lcom/android/incallui/view/SlidingUpPanelLayout;->TAG:Ljava/lang/String;

    const-string v16, "onMeasure: More than two child views are not supported."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_2
    :goto_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    .line 391
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mCanSlide:Z

    .line 393
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v2, :cond_c

    .line 394
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 395
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;

    .line 397
    .local v11, "lp":Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;
    move v5, v9

    .line 398
    .local v5, "height":I
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 399
    const/4 v15, 0x0

    iput-boolean v15, v11, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;->dimWhenOffset:Z

    .line 393
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 386
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "height":I
    .end local v8    # "i":I
    .end local v11    # "lp":Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;
    :cond_3
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 387
    const/4 v12, 0x0

    goto :goto_0

    .line 403
    .restart local v1    # "child":Landroid/view/View;
    .restart local v5    # "height":I
    .restart local v8    # "i":I
    .restart local v11    # "lp":Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;
    :cond_4
    const/4 v15, 0x1

    if-ne v8, v15, :cond_6

    .line 405
    const/4 v15, 0x1

    iput-boolean v15, v11, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    .line 406
    const/4 v15, 0x1

    iput-boolean v15, v11, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;->dimWhenOffset:Z

    .line 407
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    .line 408
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mCanSlide:Z

    .line 418
    :goto_3
    iget v15, v11, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;->width:I

    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 419
    const/high16 v15, -0x80000000

    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 427
    .local v4, "childWidthSpec":I
    :goto_4
    iget v15, v11, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;->height:I

    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 428
    const/high16 v15, -0x80000000

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 435
    .local v3, "childHeightSpec":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v1, v15, :cond_5

    .line 436
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelHeight:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideRange:I

    .line 439
    :cond_5
    invoke-virtual {v1, v4, v3}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 411
    .end local v3    # "childHeightSpec":I
    .end local v4    # "childWidthSpec":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v15, :cond_7

    .line 412
    sub-int/2addr v5, v12

    .line 414
    :cond_7
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    goto :goto_3

    .line 420
    :cond_8
    iget v15, v11, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;->width:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 421
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .restart local v4    # "childWidthSpec":I
    goto :goto_4

    .line 423
    .end local v4    # "childWidthSpec":I
    :cond_9
    iget v15, v11, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;->width:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .restart local v4    # "childWidthSpec":I
    goto :goto_4

    .line 429
    :cond_a
    iget v15, v11, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;->height:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 430
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3    # "childHeightSpec":I
    goto :goto_5

    .line 432
    .end local v3    # "childHeightSpec":I
    :cond_b
    iget v15, v11, Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;->height:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3    # "childHeightSpec":I
    goto :goto_5

    .line 442
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "childHeightSpec":I
    .end local v4    # "childWidthSpec":I
    .end local v5    # "height":I
    .end local v11    # "lp":Lcom/android/incallui/view/SlidingUpPanelLayout$LayoutParams;
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setMeasuredDimension(II)V

    .line 443
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 505
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 506
    if-eq p2, p4, :cond_0

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 509
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 645
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public resetDragState()V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    invoke-virtual {v0}, Lcom/android/incallui/view/ViewDragHelper;->cancel()V

    .line 777
    return-void
.end method

.method setAllChildrenVisible()V
    .locals 5

    .prologue
    .line 338
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 339
    invoke-virtual {p0, v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 340
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 341
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 338
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setDragView(Landroid/view/View;)V
    .locals 0
    .param p1, "dragView"    # Landroid/view/View;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    .line 248
    return-void
.end method

.method public setOverlayed(Z)V
    .locals 0
    .param p1, "overlayed"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mOverlayContent:Z

    .line 256
    return-void
.end method

.method public setPanelHeight(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelHeight:I

    .line 222
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->requestLayout()V

    .line 223
    return-void
.end method

.method public setPanelSlideListener(Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/android/incallui/view/SlidingUpPanelLayout$PanelSlideListener;

    .line 244
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsSlidingEnabled:Z

    .line 218
    return-void
.end method

.method public setSlidingUpLayoutPaddingTop(I)V
    .locals 3
    .param p1, "top"    # I

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setPadding(IIII)V

    .line 712
    return-void
.end method

.method public setTouchDragView(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "canSliding"    # Z

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 264
    invoke-virtual {p0, p2}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setSlidingEnabled(Z)V

    .line 265
    if-eqz p1, :cond_0

    .line 266
    iput-object p1, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mDragReleaseView:Landroid/view/View;

    .line 268
    :cond_0
    return-void
.end method

.method public showPanel()V
    .locals 3

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 747
    :goto_0
    return-void

    .line 744
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 745
    .local v0, "slidingPane":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 746
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->requestLayout()V

    goto :goto_0
.end method

.method smoothSlideTo(FI)Z
    .locals 6
    .param p1, "slideOffset"    # F
    .param p2, "velocity"    # I

    .prologue
    const/4 v2, 0x0

    .line 817
    iget-boolean v3, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mCanSlide:Z

    if-nez v3, :cond_1

    .line 830
    :cond_0
    :goto_0
    return v2

    .line 821
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getSlidingTop()I

    move-result v0

    .line 822
    .local v0, "topBound":I
    iget-boolean v3, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v3, :cond_2

    int-to-float v3, v0

    iget v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 825
    .local v1, "y":I
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mViewDragHelper:Lcom/android/incallui/view/ViewDragHelper;

    iget-object v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/incallui/view/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->setAllChildrenVisible()V

    .line 827
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 828
    const/4 v2, 0x1

    goto :goto_0

    .line 822
    .end local v1    # "y":I
    :cond_2
    int-to-float v3, v0

    iget v4, p0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    float-to-int v1, v3

    goto :goto_1
.end method

.method updateObscuredViewVisibility()V
    .locals 17

    .prologue
    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getChildCount()I

    move-result v15

    if-nez v15, :cond_0

    .line 335
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v9

    .line 307
    .local v9, "leftBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v16

    sub-int v11, v15, v16

    .line 308
    .local v11, "rightBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v13

    .line 309
    .local v13, "topBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v16

    sub-int v2, v15, v16

    .line 314
    .local v2, "bottomBound":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-static {v15}, Lcom/android/incallui/view/SlidingUpPanelLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 315
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 316
    .local v8, "left":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v10

    .line 317
    .local v10, "right":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v12

    .line 318
    .local v12, "top":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/view/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 322
    .local v1, "bottom":I
    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/view/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 323
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 324
    .local v5, "clampedChildLeft":I
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 325
    .local v7, "clampedChildTop":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 326
    .local v6, "clampedChildRight":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v15

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 328
    .local v4, "clampedChildBottom":I
    if-lt v5, v8, :cond_2

    if-lt v7, v12, :cond_2

    if-gt v6, v10, :cond_2

    if-gt v4, v1, :cond_2

    .line 330
    const/4 v14, 0x4

    .line 334
    .local v14, "vis":I
    :goto_2
    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 320
    .end local v1    # "bottom":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "clampedChildBottom":I
    .end local v5    # "clampedChildLeft":I
    .end local v6    # "clampedChildRight":I
    .end local v7    # "clampedChildTop":I
    .end local v8    # "left":I
    .end local v10    # "right":I
    .end local v12    # "top":I
    .end local v14    # "vis":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "bottom":I
    move v12, v1

    .restart local v12    # "top":I
    move v10, v1

    .restart local v10    # "right":I
    move v8, v1

    .restart local v8    # "left":I
    goto :goto_1

    .line 332
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "clampedChildBottom":I
    .restart local v5    # "clampedChildLeft":I
    .restart local v6    # "clampedChildRight":I
    .restart local v7    # "clampedChildTop":I
    :cond_2
    const/4 v14, 0x0

    .restart local v14    # "vis":I
    goto :goto_2
.end method
