.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$PopupDecorView;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final ANIMATION_STYLE_DEFAULT:I = -0x1

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PopupWindow"


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mAttachedInDecor:Z

.field private mAttachedInDecorSet:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundView:Landroid/view/View;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

.field private mDimAmount:F

.field private mDimBehind:Z

.field private final mDrawingLocation:[I

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mExitTransition:Landroid/transition/Transition;

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mIgnoreMultiWindowLayout:Z

.field private mInputMethodMode:I

.field private mIsDeviceDefaultLight:Z

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mIsTransitioningToDismiss:Z

.field private mIsWindowPopupOutsideBound:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOldDisplayId:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mPopupHeight:I

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mPopupWidth:I

.field private final mScreenLocation:[I

.field private mShowForAllUsers:Z

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mStatusBarHeight:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    const/4 v7, -0x2

    iput v7, p0, Landroid/widget/PopupWindow;->mWidth:I

    const/4 v7, -0x2

    iput v7, p0, Landroid/widget/PopupWindow;->mHeight:I

    const/16 v7, 0x3e8

    iput v7, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    new-instance v7, Landroid/widget/PopupWindow$1;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mOldDisplayId:I

    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreMultiWindowLayout:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    sget-object v7, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/widget/PopupWindow;->mElevation:F

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .local v1, "animStyle":I
    const v7, 0x10302ec

    if-ne v1, v7, :cond_0

    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .end local v1    # "animStyle":I
    :goto_0
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v4

    .local v4, "enterTransition":Landroid/transition/Transition;
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v5

    .local v5, "exitTransition":Landroid/transition/Transition;
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, v5}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .local v6, "outValue":Landroid/util/TypedValue;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .local v3, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x11600bd

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v6, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x11600bf

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v3, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v6, Landroid/util/TypedValue;->data:I

    if-eqz v7, :cond_4

    iget v7, v3, Landroid/util/TypedValue;->data:I

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mOldDisplayId:I

    return-void

    .end local v3    # "colorValue":Landroid/util/TypedValue;
    .end local v4    # "enterTransition":Landroid/transition/Transition;
    .end local v5    # "exitTransition":Landroid/transition/Transition;
    .end local v6    # "outValue":Landroid/util/TypedValue;
    .restart local v1    # "animStyle":I
    :cond_0
    iput v1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    .end local v1    # "animStyle":I
    :cond_1
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    .restart local v4    # "enterTransition":Landroid/transition/Transition;
    :cond_2
    if-nez v4, :cond_3

    const/4 v5, 0x0

    .restart local v5    # "exitTransition":Landroid/transition/Transition;
    :goto_3
    goto :goto_1

    .end local v5    # "exitTransition":Landroid/transition/Transition;
    :cond_3
    invoke-virtual {v4}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v5

    goto :goto_3

    .restart local v3    # "colorValue":Landroid/util/TypedValue;
    .restart local v5    # "exitTransition":Landroid/transition/Transition;
    .restart local v6    # "outValue":Landroid/util/TypedValue;
    :cond_4
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v5, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    new-array v0, v5, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    iput v2, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    iput v4, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    iput v3, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v3, p0, Landroid/widget/PopupWindow;->mHeight:I

    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    iput v4, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    iput v1, p0, Landroid/widget/PopupWindow;->mOldDisplayId:I

    iput v1, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreMultiWindowLayout:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow$PopupDecorView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$1300()[I
    .locals 1

    .prologue
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/ViewGroup;
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/PopupWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    invoke-direct {p0}, Landroid/widget/PopupWindow;->getRelativeAnchorBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0x10302e4

    :goto_0
    return v0

    :cond_0
    const v0, 0x10302e3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3
    .param p1, "curFlags"    # I

    .prologue
    const/high16 v2, 0x20000

    const v0, -0x868219

    and-int/2addr p1, v0

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    const v0, 0x8000

    or-int/2addr p1, v0

    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_a

    or-int/lit8 p1, p1, 0x8

    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    or-int/2addr p1, v2

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    or-int/lit8 p1, p1, 0x10

    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    or-int/lit16 p1, p1, 0x200

    :cond_4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    :cond_5
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    or-int/lit16 p1, p1, 0x100

    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    or-int/lit8 p1, p1, 0x20

    :cond_8
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    if-eqz v0, :cond_9

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    :cond_9
    return p1

    :cond_a
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_0

    const/4 v1, -0x2

    .local v1, "height":I
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupBackgroundView;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .local v0, "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v3, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p1, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    .end local v0    # "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    .end local v1    # "height":I
    .end local v3    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "height":I
    goto :goto_0
.end method

.method private createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    const/4 v1, -0x2

    .local v1, "height":I
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    const/4 v3, -0x1

    invoke-virtual {v0, p1, v3, v1}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    return-object v0

    .end local v0    # "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    .end local v1    # "height":I
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "height":I
    goto :goto_0
.end method

.method private createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_0
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_2

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_1
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    :cond_0
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_3

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_1
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    :cond_3
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2
.end method

.method private dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "contentHolder"    # Landroid/view/ViewGroup;
    .param p3, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return-void
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 32
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .local v5, "anchorHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .local v6, "anchorWidth":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    sub-int p4, p4, v5

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    add-int v29, v29, p3

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    add-int v29, v29, v5

    add-int v29, v29, p4

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v29

    move/from16 v0, p5

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v29

    and-int/lit8 v13, v29, 0x7

    .local v13, "hgrav":I
    const/16 v29, 0x5

    move/from16 v0, v29

    if-ne v13, v0, :cond_1

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v30, v0

    sub-int v30, v30, v6

    sub-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_1
    const/4 v15, 0x0

    .local v15, "onTop":Z
    const/16 v29, 0x33

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .local v8, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    add-int v29, v29, v5

    add-int v21, v29, p4

    .local v21, "screenY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v19

    .local v19, "root":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    .local v26, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v27, 0x0

    .local v27, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v29, v0

    if-eqz v29, :cond_2

    move-object/from16 v27, v26

    check-cast v27, Landroid/view/WindowManager$LayoutParams;

    :cond_2
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .local v25, "visibleDisplayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v29, v0

    add-int v29, v29, v21

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v30, v0

    add-int v29, v29, v30

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v30

    sub-int v29, v29, v30

    if-lez v29, :cond_9

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v29, v0

    add-int v29, v29, v21

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_10

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v30, v0

    add-int v29, v29, v30

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v30

    sub-int v29, v29, v30

    if-lez v29, :cond_10

    const/4 v14, 0x1

    .local v14, "isOnlyOverScreenWidth":Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v22

    .local v22, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v23

    .local v23, "scrollY":I
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v29, v0

    add-int v29, v29, v22

    add-int v29, v29, p3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v30, v0

    add-int v30, v30, v23

    add-int v30, v30, v5

    add-int v30, v30, p4

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v17, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    move/from16 v29, v0

    if-eqz v29, :cond_11

    const/16 v29, 0x0

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .end local v17    # "r":Landroid/graphics/Rect;
    .end local v22    # "scrollX":I
    .end local v23    # "scrollY":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    add-int v29, v29, p3

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    add-int v29, v29, v5

    add-int v29, v29, p4

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v29, 0x5

    move/from16 v0, v29

    if-ne v13, v0, :cond_6

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v30, v0

    sub-int v30, v30, v6

    sub-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget v30, v30, v31

    sub-int v29, v29, v30

    sub-int v29, v29, v5

    sub-int v29, v29, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget v30, v30, v31

    sub-int v30, v30, p4

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_12

    const/4 v15, 0x1

    :goto_2
    if-eqz v15, :cond_13

    const/16 v29, 0x53

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget v30, v30, v31

    sub-int v29, v29, v30

    add-int v29, v29, p4

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v29, v0

    if-gez v29, :cond_7

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    if-eqz v14, :cond_8

    const/16 v29, 0x33

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    add-int v29, v29, v5

    add-int v29, v29, p4

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_8
    :goto_3
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v30, v0

    add-int v29, v29, v30

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v30

    sub-int v29, v29, v30

    if-lez v29, :cond_9

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v30, v0

    add-int v29, v29, v30

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v30

    sub-int v7, v29, v30

    .local v7, "diff":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    sub-int v29, v29, v7

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    if-gtz v29, :cond_9

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .end local v7    # "diff":I
    .end local v14    # "isOnlyOverScreenWidth":Z
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v29, v0

    if-eqz v29, :cond_f

    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->isCascadeTypeMultiWindow()Z

    move-result v29

    if-nez v29, :cond_f

    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    sub-int v11, v29, v30

    .local v11, "displayFrameWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v30, v0

    add-int v18, v29, v30

    .local v18, "right":I
    iget v9, v8, Landroid/graphics/Rect;->left:I

    .local v9, "displayFrameLeft":I
    iget v10, v8, Landroid/graphics/Rect;->top:I

    .local v10, "displayFrameTop":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->isMultiWindow()Z

    move-result v29

    if-eqz v29, :cond_a

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .local v20, "rootLocation":[I
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v29, 0x0

    aget v29, v20, v29

    sub-int v9, v9, v29

    const/16 v29, 0x1

    aget v29, v20, v29

    sub-int v10, v10, v29

    .end local v20    # "rootLocation":[I
    :cond_a
    move/from16 v0, v18

    if-le v0, v11, :cond_b

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    sub-int v30, v18, v11

    sub-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_b
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->isMultiWindow()Z

    move-result v29

    if-eqz v29, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-le v11, v0, :cond_c

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_c
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v0, v9, :cond_d

    move-object/from16 v0, p2

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_d
    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    sub-int v29, v29, p4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v30, v0

    sub-int v16, v29, v30

    .local v16, "popupTop":I
    const/16 v24, 0x0

    .local v24, "statusBarHeight":I
    const-string v29, "window"

    invoke-static/range {v29 .. v29}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v28

    .local v28, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface/range {v28 .. v28}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v29

    if-eqz v29, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x1050017

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    :cond_e
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_f

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v29, v0

    sub-int v30, v24, v16

    sub-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .end local v9    # "displayFrameLeft":I
    .end local v10    # "displayFrameTop":I
    .end local v11    # "displayFrameWidth":I
    .end local v16    # "popupTop":I
    .end local v18    # "right":I
    .end local v24    # "statusBarHeight":I
    .end local v28    # "wm":Landroid/view/IWindowManager;
    :cond_f
    :goto_5
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v29, v0

    const/high16 v30, 0x10000000

    or-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return v15

    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_0

    .restart local v14    # "isOnlyOverScreenWidth":Z
    .restart local v17    # "r":Landroid/graphics/Rect;
    .restart local v22    # "scrollX":I
    .restart local v23    # "scrollY":I
    :cond_11
    const/16 v29, 0x1

    goto/16 :goto_1

    .end local v17    # "r":Landroid/graphics/Rect;
    .end local v22    # "scrollX":I
    .end local v23    # "scrollY":I
    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    add-int v29, v29, v5

    add-int v29, v29, p4

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    .end local v14    # "isOnlyOverScreenWidth":Z
    .restart local v9    # "displayFrameLeft":I
    .restart local v10    # "displayFrameTop":I
    .restart local v11    # "displayFrameWidth":I
    .restart local v16    # "popupTop":I
    .restart local v18    # "right":I
    .restart local v24    # "statusBarHeight":I
    .restart local v28    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v12

    .local v12, "e":Landroid/os/RemoteException;
    const-string v29, "PopupWindow"

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v16    # "popupTop":I
    .end local v24    # "statusBarHeight":I
    .end local v28    # "wm":Landroid/view/IWindowManager;
    :cond_14
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_5
.end method

.method private getRelativeAnchorBounds()Landroid/graphics/Rect;
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v0, v5

    .local v0, "anchor":Landroid/view/View;
    :goto_0
    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .local v3, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez v3, :cond_2

    :cond_0
    move-object v2, v6

    :goto_1
    return-object v2

    .end local v0    # "anchor":Landroid/view/View;
    .end local v3    # "decor":Landroid/view/View;
    :cond_1
    move-object v0, v6

    goto :goto_0

    .restart local v0    # "anchor":Landroid/view/View;
    .restart local v3    # "decor":Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .local v1, "anchorLocation":[I
    iget-object v5, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v5}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v4

    .local v4, "popupLocation":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v2, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v2, "bounds":Landroid/graphics/Rect;
    aget v5, v1, v7

    aget v6, v4, v7

    sub-int/2addr v5, v6

    aget v6, v1, v8

    aget v7, v4, v8

    sub-int/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1
.end method

.method private getTransition(I)Landroid/transition/Transition;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    if-eqz p1, :cond_1

    const/high16 v3, 0x10f0000

    if-eq p1, v3, :cond_1

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    .local v2, "transition":Landroid/transition/Transition;
    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/transition/TransitionSet;

    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .local v1, "isEmpty":Z
    :goto_0
    if-nez v1, :cond_1

    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "isEmpty":Z
    .end local v2    # "transition":Landroid/transition/Transition;
    :goto_1
    return-object v2

    .restart local v0    # "inflater":Landroid/transition/TransitionInflater;
    .restart local v2    # "transition":Landroid/transition/Transition;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .local v2, "root":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .local v5, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, 0x0

    .local v6, "wlp":Landroid/view/WindowManager$LayoutParams;
    instance-of v7, v5, Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_2

    move-object v6, v5

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x200

    if-nez v7, :cond_5

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .local v4, "visibleDisplayFrame":Landroid/graphics/Rect;
    iput v8, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    if-eqz v6, :cond_3

    iget-object v7, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_3

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v7, v9

    .local v3, "systemUiVisibility":I
    and-int/lit16 v7, v3, 0x404

    if-nez v7, :cond_3

    iget-object v7, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1050017

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .end local v3    # "systemUiVisibility":I
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "displayFrame":Landroid/graphics/Rect;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->isCascadeTypeMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iput v8, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    :goto_2
    iget-boolean v7, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    if-eqz v7, :cond_4

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_4
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .end local v0    # "displayFrame":Landroid/graphics/Rect;
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "visibleDisplayFrame":Landroid/graphics/Rect;
    :cond_5
    const/4 v7, 0x1

    goto :goto_1

    .restart local v0    # "displayFrame":Landroid/graphics/Rect;
    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    .restart local v4    # "visibleDisplayFrame":Landroid/graphics/Rect;
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v7, v4, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    :cond_1
    return-void
.end method

.method private isCascadeTypeMultiWindow()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method private isMultiWindow()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method private isSplitTypeMultiWindow()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v2}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    :cond_2
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget v3, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setElevation(F)V

    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .local v0, "surfaceInset":I
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :goto_1
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    return-void

    .end local v0    # "surfaceInset":I
    :cond_3
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    goto :goto_0

    .restart local v0    # "surfaceInset":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private registerForScrollChanged(Landroid/view/View;III)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return-void
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .local v1, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-nez v1, :cond_1

    move-object v0, v4

    .local v0, "anchor":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    iput-object v4, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-void

    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v0, v3

    goto :goto_0
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 17
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "updateDimension"    # Z
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .local v14, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v4, v0, :cond_7

    :cond_2
    const/4 v13, 0x1

    .local v13, "needsUpdate":Z
    :goto_1
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_3

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v4, :cond_8

    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_5

    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    :goto_3
    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    :cond_5
    :goto_4
    iget v15, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .local v15, "x":I
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v16, v0

    .local v16, "y":I
    if-eqz p2, :cond_b

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    :goto_5
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v15, v4, :cond_6

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v16

    if-ne v0, v4, :cond_6

    if-eqz p5, :cond_c

    :cond_6
    const/4 v12, 0x1

    :goto_6
    move-object/from16 v7, p0

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v7 .. v12}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_0

    .end local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "needsUpdate":Z
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_7
    const/4 v13, 0x0

    goto :goto_1

    .restart local v13    # "needsUpdate":Z
    :cond_8
    if-eqz v13, :cond_4

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto :goto_2

    .restart local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v0, p6

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_3

    :cond_a
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    goto :goto_4

    .restart local v15    # "x":I
    .restart local v16    # "y":I
    :cond_b
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    goto :goto_5

    :cond_c
    const/4 v12, 0x0

    goto :goto_6
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 8

    .prologue
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .local v3, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .local v2, "contentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "contentParent":Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "contentHolder":Landroid/view/ViewGroup;
    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    iget-object v5, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .local v5, "exitTransition":Landroid/transition/Transition;
    if-eqz v5, :cond_3

    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7, v3, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Landroid/widget/PopupWindow;->getRelativeAnchorBounds()Landroid/graphics/Rect;

    move-result-object v4

    .local v4, "epicenter":Landroid/graphics/Rect;
    new-instance v7, Landroid/widget/PopupWindow$2;

    invoke-direct {v7, p0, v4}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    invoke-virtual {v5, v7}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    new-instance v7, Landroid/widget/PopupWindow$3;

    invoke-direct {v7, p0, v3, v0, v2}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v3, v5, v7}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/transition/Transition$TransitionListener;)V

    .end local v4    # "epicenter":Landroid/graphics/Rect;
    .end local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    :goto_2
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    iget-object v7, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v7}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_0

    .end local v0    # "contentHolder":Landroid/view/ViewGroup;
    .end local v5    # "exitTransition":Landroid/transition/Transition;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "contentHolder":Landroid/view/ViewGroup;
    goto :goto_1

    .restart local v5    # "exitTransition":Landroid/transition/Transition;
    :cond_3
    invoke-direct {p0, v3, v0, v2}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_2
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    const/4 v9, 0x1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .local v3, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1, v3}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .local v1, "anchorPos":[I
    invoke-direct {p0}, Landroid/widget/PopupWindow;->isCascadeTypeMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    :goto_0
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .local v2, "bottomEdge":I
    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v2, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .local v0, "anchorHeight":I
    iget-boolean v8, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v8, :cond_1

    const/4 v0, 0x0

    :cond_1
    aget v8, v1, v9

    add-int/2addr v8, v0

    sub-int v8, v2, v8

    sub-int v4, v8, p2

    .local v4, "distanceToBottom":I
    aget v8, v1, v9

    iget v9, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    add-int v5, v8, p2

    .local v5, "distanceToTop":I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .local v7, "returnedHeight":I
    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    :cond_2
    return v7

    .end local v0    # "anchorHeight":I
    .end local v2    # "bottomEdge":I
    .end local v4    # "distanceToBottom":I
    .end local v5    # "distanceToTop":I
    .end local v7    # "returnedHeight":I
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_0
.end method

.method public getOverlapAnchor()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return v0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isAttachedInDecor()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    .prologue
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return-void
.end method

.method public setAttachedInDecor(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_1

    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    .local v4, "stateList":Landroid/graphics/drawable/StateListDrawable;
    sget-object v5, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v0

    .local v0, "aboveAnchorStateIndex":I
    invoke-virtual {v4}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v2

    .local v2, "count":I
    const/4 v1, -0x1

    .local v1, "belowAnchorStateIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    if-eq v3, v0, :cond_2

    move v1, v3

    :cond_0
    if-eq v0, v6, :cond_3

    if-eq v1, v6, :cond_3

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .end local v0    # "aboveAnchorStateIndex":I
    .end local v1    # "belowAnchorStateIndex":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "aboveAnchorStateIndex":I
    .restart local v1    # "belowAnchorStateIndex":I
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    :cond_3
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setDimBehind(ZF)V
    .locals 0
    .param p1, "dimBehind"    # Z
    .param p2, "dimAmount"    # F

    .prologue
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    iput p2, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    return-void
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .prologue
    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .prologue
    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .prologue
    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    return-void
.end method

.method public setIgnoreMultiWindowLayout(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIgnoreMultiWindowLayout:Z

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 0
    .param p1, "overlapAnchor"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return-void
.end method

.method public setShowForAllUsers(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .prologue
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v6

    .local v6, "aboveAnchor":Z
    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    if-eqz p2, :cond_2

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_2
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .local v3, "update":Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    .local v0, "newAnim":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v3, 0x1

    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    .local v1, "newFlags":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method

.method public update(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method

.method public update(IIIIZ)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .prologue
    const/4 v7, -0x1

    if-ltz p3, :cond_0

    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    :cond_0
    if-ltz p4, :cond_1

    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v6, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v6}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .local v4, "p":Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .local v5, "update":Z
    iget v6, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v6, :cond_b

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .local v1, "finalWidth":I
    :goto_1
    invoke-direct {p0}, Landroid/widget/PopupWindow;->isMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    :cond_4
    if-eq p3, v7, :cond_5

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v1, :cond_5

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, 0x1

    :cond_5
    iget v6, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v6, :cond_c

    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .local v0, "finalHeight":I
    :goto_2
    if-eq p4, v7, :cond_6

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v0, :cond_6

    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, 0x1

    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_7

    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x1

    :cond_7
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_8

    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x1

    :cond_8
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .local v2, "newAnim":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_9

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v5, 0x1

    :cond_9
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .local v3, "newFlags":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_a

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v5, 0x1

    :cond_a
    if-eqz v5, :cond_2

    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .end local v0    # "finalHeight":I
    .end local v1    # "finalWidth":I
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    :cond_b
    iget v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    goto :goto_1

    .restart local v1    # "finalWidth":I
    :cond_c
    iget v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    return-void
.end method
