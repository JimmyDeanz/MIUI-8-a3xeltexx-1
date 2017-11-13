.class public Landroid/widget/HoverPopupWindow;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HoverPopupWindow$Gravity;,
        Landroid/widget/HoverPopupWindow$HoverPopupContainer;,
        Landroid/widget/HoverPopupWindow$TouchablePopupContainer;,
        Landroid/widget/HoverPopupWindow$QuintEaseOut;,
        Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;,
        Landroid/widget/HoverPopupWindow$HoverPopupListener;
    }
.end annotation


# static fields
.field private static final AIRCOMMAND_MORPH_USP:Ljava/lang/String;

.field static final DEBUG:Z = false

.field private static final DEVICE_TYPE:Ljava/lang/String;

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final MSG_DISMISS_POPUP:I = 0x2

.field private static final MSG_SHOW_POPUP:I = 0x1

.field private static final MSG_TIMEOUT:I = 0x1

.field private static final POPUP_TIMEOUT_MS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "HoverPopupWindow"

.field private static final TIMEOUT_DELAY:I = 0x1f4

.field private static final TIMEOUT_DELAY_LONG:I = 0x7d0

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final UI_THREAD_BUSY_TIME_MS:I = 0x3e8


# instance fields
.field private final ANCHORVIEW_COORDINATES_TYPE_NONE:I

.field private final ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

.field private final ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

.field private H:F

.field private final ID_TOOLTIP_VIEW:I

.field private final MARGIN_FOR_HOVER_RING:I

.field private MOVE_CENTER:I

.field private MOVE_LEFT:I

.field private MOVE_LEFT_TO_CENTER:I

.field private MOVE_RIGHT:I

.field private MOVE_RIGHT_TO_CENTER:I

.field private final SHOW_ANIMATION_DURATION:I

.field private TW:F

.field private W:F

.field private mAnchorRect:Landroid/graphics/Rect;

.field private mAnchorView:Landroid/view/View;

.field protected mAnimationStyle:I

.field private mCenterPoint:Landroid/graphics/PointF;

.field private mContainerLeftOnWindow:I

.field private mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

.field private mContentHeight:I

.field private mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field private mContentResId:I

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCoordinatesOfAnchorView:I

.field private mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private mDirection:I

.field protected mDismissHandler:Landroid/os/Handler;

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field private mDismissTouchableHPWOnActionUp:Z

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private mDisplayFrameLeft:I

.field private mDisplayFrameRight:I

.field private mDisplayWidthToComputeAniWidth:I

.field private mEnabled:Z

.field private mFontScale:F

.field private mFullTextPopupRightLimit:I

.field private mGuideLineColor:I

.field protected mGuideLineFadeOffset:I

.field private mGuideRingDrawableId:I

.field private mHandler:Landroid/os/Handler;

.field private mHashCodeForViewState:I

.field protected mHoverDetectTimeMS:I

.field private mHoverPaddingBottom:I

.field private mHoverPaddingLeft:I

.field private mHoverPaddingRight:I

.field private mHoverPaddingTop:I

.field private mHoveringPointX:I

.field private mHoveringPointY:I

.field private mIsFHAnimationEnabled:Z

.field private mIsFHAnimationEnabledByApp:Z

.field private mIsFHGuideLineEnabled:Z

.field private mIsFHGuideLineEnabledByApp:Z

.field private mIsFHSoundAndHapticEnabled:Z

.field protected mIsGuideLineEnabled:Z

.field private mIsHoverPaddingEnabled:Z

.field private mIsInfoPickerMoveEabled:Z

.field private mIsInfoPickerMoveEabledByApp:Z

.field private mIsPopupTouchable:Z

.field private mIsProgressBar:Z

.field private mIsSPenPointChanged:Z

.field private mIsSetInfoPickerColorToAndMoreBottomImg:Z

.field private mIsShowMessageSent:Z

.field private mIsSkipPenPointEffect:Z

.field private mIsTryingShowPopup:Z

.field private mLeftPoint:Landroid/graphics/PointF;

.field private mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

.field private mNeedToMeasureContentView:Z

.field private mOverTopBoundary:Z

.field protected final mParentView:Landroid/view/View;

.field private mPenWindowStartPos:Landroid/graphics/Point;

.field private mPickerPadding:F

.field private mPickerXoffset:I

.field private mPopup:Landroid/widget/PopupWindow;

.field protected mPopupGravity:I

.field private mPopupOffsetX:I

.field private mPopupOffsetY:I

.field protected mPopupPosX:I

.field protected mPopupPosY:I

.field protected mPopupType:I

.field private mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

.field private mReferncedAnchorRect:Landroid/graphics/Rect;

.field private mRightPoint:Landroid/graphics/PointF;

.field protected mShowPopupAlways:Z

.field private mShowPopupRunnable:Ljava/lang/Runnable;

.field private mToolType:I

.field private mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

.field private mUspLevel:I

.field private mWindowGapX:I

.field private mWindowGapY:I

.field private misDialer:Z

.field private misGravityBottomUnder:Z

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/HoverPopupWindow;->DEVICE_TYPE:Ljava/lang/String;

    const-string v0, "ro.aircommand.morph.usp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/HoverPopupWindow;->AIRCOMMAND_MORPH_USP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 6
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7010001

    iput v0, p0, Landroid/widget/HoverPopupWindow;->ID_TOOLTIP_VIEW:I

    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/HoverPopupWindow;->MARGIN_FOR_HOVER_RING:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_NONE:I

    iput v3, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

    iput v5, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    iput v4, p0, Landroid/widget/HoverPopupWindow;->W:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Landroid/widget/HoverPopupWindow;->H:F

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Landroid/widget/HoverPopupWindow;->TW:F

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    const/high16 v0, 0x42580000    # 54.0f

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPickerPadding:F

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1f4

    iput v0, p0, Landroid/widget/HoverPopupWindow;->SHOW_ANIMATION_DURATION:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT:I

    iput v3, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT:I

    iput v5, p0, Landroid/widget/HoverPopupWindow;->MOVE_CENTER:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_CENTER:I

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mDirection:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrameLeft:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrameRight:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPickerXoffset:I

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    iput v4, p0, Landroid/widget/HoverPopupWindow;->mFontScale:F

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mUspLevel:I

    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->initInstance()V

    invoke-virtual {p0, p2}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    new-instance v0, Landroid/widget/HoverPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/HoverPopupWindow$1;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/HoverPopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/HoverPopupWindow$2;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/HoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->objAnimationValue:F

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/HoverPopupWindow;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->objAnimationValue:F

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrameLeft:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrameRight:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->showPopup()V

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/HoverPopupWindow;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/HoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->TW:F

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/HoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->H:F

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/HoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->W:F

    return v0
.end method

.method static synthetic access$2502(Landroid/widget/HoverPopupWindow;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->W:F

    return p1
.end method

.method static synthetic access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2802(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2900(Landroid/widget/HoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPickerPadding:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/HoverPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/HoverPopupWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPickerXoffset:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    return v0
.end method

.method static synthetic access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mDirection:I

    return v0
.end method

.method static synthetic access$602(Landroid/widget/HoverPopupWindow;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mDirection:I

    return p1
.end method

.method static synthetic access$700(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/HoverPopupWindow;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/HoverPopupWindow;->setAnimator(II)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/HoverPopupWindow;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 27
    .param p1, "anchorRect"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "contentWidth"    # I
    .param p4, "contentHeight"    # I

    .prologue
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .local v10, "posX":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .local v11, "posY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v7, v0, 0xf0f

    .local v7, "hGravity":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v24, v0

    const v25, 0xf0f0

    and-int v18, v24, v25

    .local v18, "vGravity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1050352

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .local v16, "tooltipShiftX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1050353

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .local v17, "tooltipTopMargin":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v24, v0

    if-nez v24, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    add-int v10, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v11, v24, v25

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    .local v13, "root":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .local v20, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, 0x0

    .local v8, "isSystemUiVisible":Z
    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v22, v20

    check-cast v22, Landroid/view/WindowManager$LayoutParams;

    .local v22, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v25, v0

    or-int v24, v24, v25

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x404

    move/from16 v24, v0

    if-nez v24, :cond_c

    const/4 v8, 0x1

    .end local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_1
    const/4 v15, 0x0

    .local v15, "statusBarHeight":I
    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1050017

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    :cond_2
    add-int v24, v11, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    const/16 v24, 0x5050

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    div-int/lit8 v25, p3, 0x2

    sub-int v10, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v24, v0

    add-int v10, v10, v24

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "isSystemUiVisible":Z
    .end local v13    # "root":Landroid/view/View;
    .end local v15    # "statusBarHeight":I
    .end local v20    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    :goto_2
    const-string v24, "HoverPopupWindow"

    const-string v25, "computePopupPositionInternal: check window boundary "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->isScaleWindow()Z

    move-result v24

    if-nez v24, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x105035b

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .local v6, "fulltextAirviewShiftX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    if-gez v10, :cond_10

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "fulltextAirviewShiftX":I
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    .restart local v13    # "root":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .restart local v20    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, 0x0

    .restart local v8    # "isSystemUiVisible":Z
    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v22, v20

    check-cast v22, Landroid/view/WindowManager$LayoutParams;

    .restart local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v25, v0

    or-int v24, v24, v25

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x404

    move/from16 v24, v0

    if-nez v24, :cond_26

    const/4 v8, 0x1

    .end local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    :goto_4
    const/4 v15, 0x0

    .restart local v15    # "statusBarHeight":I
    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1050017

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    :cond_6
    if-ge v11, v15, :cond_2a

    const/16 v24, 0x3030

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_29

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    move/from16 v1, p4

    if-lt v0, v1, :cond_27

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v24, v0

    add-int v11, v11, v24

    const-string v24, "HoverPopupWindow"

    const-string v25, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "isSystemUiVisible":Z
    .end local v13    # "root":Landroid/view/View;
    .end local v15    # "statusBarHeight":I
    .end local v20    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move-object/from16 v0, p0

    iput v11, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    return-void

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    goto/16 :goto_0

    :cond_9
    sparse-switch v7, :sswitch_data_0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v24, v0

    add-int v10, v10, v24

    sparse-switch v18, :sswitch_data_1

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v24, v0

    add-int v11, v11, v24

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v10, v24, p3

    goto :goto_6

    :sswitch_1
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->left:I

    goto :goto_6

    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    sub-int v24, v24, p3

    add-int v10, v24, v16

    goto :goto_6

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    sub-int v10, v24, p3

    goto :goto_6

    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    div-int/lit8 v25, p3, 0x2

    sub-int v10, v24, v25

    goto :goto_6

    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    goto :goto_6

    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v10, v24, p3

    goto :goto_6

    :sswitch_6
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->right:I

    goto :goto_6

    :sswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    div-int/lit8 v25, p3, 0x2

    sub-int v10, v24, v25

    goto :goto_6

    :sswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    move/from16 v24, v0

    div-int/lit8 v25, p3, 0x2

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    move/from16 v25, v0

    sub-int v10, v24, v25

    goto :goto_6

    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v11, v24, p4

    goto :goto_7

    :sswitch_a
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->top:I

    goto :goto_7

    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v24

    div-int/lit8 v25, p4, 0x2

    sub-int v11, v24, v25

    goto/16 :goto_7

    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v11, v24, p4

    goto/16 :goto_7

    :sswitch_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    add-int v11, v24, v17

    :goto_8
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    goto/16 :goto_7

    :cond_b
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v8    # "isSystemUiVisible":Z
    .restart local v13    # "root":Landroid/view/View;
    .restart local v20    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_1

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "isSystemUiVisible":Z
    .end local v13    # "root":Landroid/view/View;
    .end local v20    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    add-int v24, v11, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    const/16 v24, 0x5050

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, p4

    if-lt v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1050017

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .restart local v15    # "statusBarHeight":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v15, :cond_e

    add-int v24, v11, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    div-int/lit8 v25, p3, 0x2

    sub-int v10, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v24, v0

    add-int v10, v10, v24

    goto/16 :goto_2

    .end local v15    # "statusBarHeight":I
    :cond_f
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v24, v24, v11

    add-int v24, v24, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    div-int/lit8 v25, p3, 0x2

    sub-int v10, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v24, v0

    add-int v10, v10, v24

    goto/16 :goto_2

    .restart local v6    # "fulltextAirviewShiftX":I
    :cond_10
    add-int v24, v10, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    sub-int v24, v24, p3

    move/from16 v0, v24

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_3

    :cond_11
    if-gez v10, :cond_12

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_3

    :cond_12
    add-int v24, v10, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    sub-int v24, v24, p3

    sub-int v24, v24, v6

    move/from16 v0, v24

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_3

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "fulltextAirviewShiftX":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    add-int v24, v24, v10

    if-gtz v24, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x105035b

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .restart local v6    # "fulltextAirviewShiftX":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v24, v24, p3

    move/from16 v0, v24

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v24, "window"

    invoke-static/range {v24 .. v24}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v21

    .local v21, "windowManager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/view/IWindowManager;->getCocktailBarFrame()Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "cocktailRect":Landroid/graphics/Rect;
    :goto_a
    if-eqz v3, :cond_4

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    if-lez v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    .restart local v13    # "root":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .restart local v20    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v22, v20

    check-cast v22, Landroid/view/WindowManager$LayoutParams;

    .restart local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x8ac

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_14

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x62

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_16

    :cond_14
    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_3

    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    .end local v13    # "root":Landroid/view/View;
    .end local v20    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "windowManager":Landroid/view/IWindowManager;
    .end local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_15
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    add-int v24, v24, v6

    move/from16 v0, v24

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_9

    .restart local v21    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v5

    .local v5, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .restart local v3    # "cocktailRect":Landroid/graphics/Rect;
    const-string v24, "HoverPopupWindow"

    const-string v25, "windowManager.getCocktailBarFrame() :: error occurred"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v13    # "root":Landroid/view/View;
    .restart local v20    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_16
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_3

    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    .end local v6    # "fulltextAirviewShiftX":I
    .end local v13    # "root":Landroid/view/View;
    .end local v20    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "windowManager":Landroid/view/IWindowManager;
    .end local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_17
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    add-int v24, v24, v10

    add-int v24, v24, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x105035b

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .restart local v6    # "fulltextAirviewShiftX":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v24, "window"

    invoke-static/range {v24 .. v24}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v21

    .restart local v21    # "windowManager":Landroid/view/IWindowManager;
    invoke-interface/range {v21 .. v21}, Landroid/view/IWindowManager;->getCocktailBarFrame()Landroid/graphics/Rect;

    move-result-object v3

    .restart local v3    # "cocktailRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_19

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    if-lez v24, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "window"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/WindowManager;

    .local v23, "wm":Landroid/view/WindowManager;
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .local v9, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v24, v24, p3

    move/from16 v0, v24

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_b
    add-int v24, v10, p3

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    .end local v9    # "metrics":Landroid/util/DisplayMetrics;
    .end local v21    # "windowManager":Landroid/view/IWindowManager;
    .end local v23    # "wm":Landroid/view/WindowManager;
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    const-string v24, "HoverPopupWindow"

    const-string v25, "HoverPopupWindow:computePopupPositionInternal : WINDOW_SERVICE remote exception occurred. "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "cocktailRect":Landroid/graphics/Rect;
    .restart local v9    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v21    # "windowManager":Landroid/view/IWindowManager;
    .restart local v23    # "wm":Landroid/view/WindowManager;
    :cond_18
    :try_start_2
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v24, v24, p3

    sub-int v24, v24, v6

    move/from16 v0, v24

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_b

    .end local v9    # "metrics":Landroid/util/DisplayMetrics;
    .end local v23    # "wm":Landroid/view/WindowManager;
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v24, v24, p3

    move/from16 v0, v24

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_c
    add-int v24, v10, p3

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I

    goto/16 :goto_3

    :cond_1a
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v24, v24, p3

    sub-int v24, v24, v6

    move/from16 v0, v24

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    goto :goto_c

    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    .end local v6    # "fulltextAirviewShiftX":I
    .end local v21    # "windowManager":Landroid/view/IWindowManager;
    :cond_1b
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    if-lez v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v24, "window"

    invoke-static/range {v24 .. v24}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v21

    .restart local v21    # "windowManager":Landroid/view/IWindowManager;
    :try_start_3
    invoke-interface/range {v21 .. v21}, Landroid/view/IWindowManager;->getCocktailBarFrame()Landroid/graphics/Rect;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    .restart local v3    # "cocktailRect":Landroid/graphics/Rect;
    :goto_d
    if-eqz v3, :cond_1d

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    if-lez v24, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    .restart local v13    # "root":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .restart local v20    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v24, v0

    if-eqz v24, :cond_1d

    move-object/from16 v22, v20

    check-cast v22, Landroid/view/WindowManager$LayoutParams;

    .restart local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x8ac

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x62

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    :cond_1c
    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .end local v13    # "root":Landroid/view/View;
    .end local v20    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1d
    :goto_e
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v24, v24, p3

    move/from16 v0, v24

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_3

    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    :catch_2
    move-exception v5

    .local v5, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .restart local v3    # "cocktailRect":Landroid/graphics/Rect;
    const-string v24, "HoverPopupWindow"

    const-string v25, "windowManager.getCocktailBarFrame() :: error occurred"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v13    # "root":Landroid/view/View;
    .restart local v20    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1e
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_e

    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v13    # "root":Landroid/view/View;
    .end local v20    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "windowManager":Landroid/view/IWindowManager;
    .end local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1f
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .local v2, "anchorView":Landroid/view/View;
    :goto_f
    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v19

    .local v19, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v14

    .local v14, "scaleFactor":Landroid/graphics/PointF;
    if-gez v10, :cond_21

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_3

    .end local v2    # "anchorView":Landroid/view/View;
    .end local v14    # "scaleFactor":Landroid/graphics/PointF;
    .end local v19    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_f

    .restart local v2    # "anchorView":Landroid/view/View;
    .restart local v14    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v19    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_21
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    add-int v25, v10, p3

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v25, v0

    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_3

    .end local v2    # "anchorView":Landroid/view/View;
    .end local v14    # "scaleFactor":Landroid/graphics/PointF;
    .end local v19    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .restart local v2    # "anchorView":Landroid/view/View;
    :goto_10
    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v19

    .restart local v19    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v14

    .restart local v14    # "scaleFactor":Landroid/graphics/PointF;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    int-to-float v0, v10

    move/from16 v25, v0

    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    if-gez v24, :cond_24

    const/4 v10, 0x0

    goto/16 :goto_3

    .end local v2    # "anchorView":Landroid/view/View;
    .end local v14    # "scaleFactor":Landroid/graphics/PointF;
    .end local v19    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_10

    .restart local v2    # "anchorView":Landroid/view/View;
    .restart local v14    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v19    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_24
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    add-int v25, v10, p3

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_25

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    div-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    sub-int v24, v24, p3

    move/from16 v0, v24

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_3

    :cond_25
    add-int v24, v10, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    sub-int v10, v24, p3

    goto/16 :goto_3

    .end local v2    # "anchorView":Landroid/view/View;
    .end local v14    # "scaleFactor":Landroid/graphics/PointF;
    .end local v19    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v8    # "isSystemUiVisible":Z
    .restart local v13    # "root":Landroid/view/View;
    .restart local v20    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_26
    const/4 v8, 0x0

    goto/16 :goto_4

    .end local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .restart local v15    # "statusBarHeight":I
    :cond_27
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v25, v25, v15

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_28

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    const-string v24, "HoverPopupWindow"

    const-string v25, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_5

    :cond_28
    move v11, v15

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    const-string v24, "HoverPopupWindow"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_29
    const-string v24, "HoverPopupWindow"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_5

    :cond_2a
    add-int v24, v11, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_2c

    const/16 v24, 0x5050

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_2b

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, p4

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v11, v24, p4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v24, v0

    sub-int v11, v11, v24

    const-string v24, "HoverPopupWindow"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3: misGravityBottomUnder = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    const-string v24, "HoverPopupWindow"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_2b
    const-string v24, "HoverPopupWindow"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v11, v24, p4

    goto/16 :goto_5

    :cond_2c
    const/16 v24, 0x3030

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    const-string v24, "HoverPopupWindow"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "isSystemUiVisible":Z
    .end local v13    # "root":Landroid/view/View;
    .end local v15    # "statusBarHeight":I
    .end local v20    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    .restart local v13    # "root":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .restart local v20    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, 0x0

    .restart local v8    # "isSystemUiVisible":Z
    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v24, v0

    if-eqz v24, :cond_2e

    move-object/from16 v22, v20

    check-cast v22, Landroid/view/WindowManager$LayoutParams;

    .restart local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v25, v0

    or-int v24, v24, v25

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x404

    move/from16 v24, v0

    if-nez v24, :cond_31

    const/4 v8, 0x1

    .end local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_2e
    :goto_11
    const/4 v15, 0x0

    .restart local v15    # "statusBarHeight":I
    const/4 v12, 0x0

    .local v12, "realStatusBarHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1050017

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    if-eqz v8, :cond_2f

    move v12, v15

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v24, v24, v11

    move/from16 v0, v24

    if-ge v0, v15, :cond_37

    const/16 v24, 0x3030

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v24, v24, v15

    move/from16 v0, v24

    move/from16 v1, p4

    if-lt v0, v1, :cond_32

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v24, v24, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    move/from16 v1, p4

    if-lt v0, v1, :cond_30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v24, v0

    add-int v11, v11, v24

    :cond_30
    const-string v24, "HoverPopupWindow"

    const-string v25, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_5

    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v12    # "realStatusBarHeight":I
    .end local v15    # "statusBarHeight":I
    .restart local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_31
    const/4 v8, 0x0

    goto/16 :goto_11

    .end local v22    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v12    # "realStatusBarHeight":I
    .restart local v15    # "statusBarHeight":I
    :cond_32
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v24, v24, v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_33

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    const-string v24, "HoverPopupWindow"

    const-string v25, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_5

    :cond_33
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v24, v24, p4

    sub-int v24, v24, v12

    if-lez v24, :cond_34

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_5

    :cond_34
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    add-int v25, v25, v26

    sub-int v24, v24, v25

    sub-int v24, v24, p4

    if-lez v24, :cond_35

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    const-string v24, "HoverPopupWindow"

    const-string v25, "computePopupPositionInternal: Set mOverTopBoundary = true #1-2"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_5

    :cond_35
    move v11, v15

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    const-string v24, "HoverPopupWindow"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_36
    const-string v24, "HoverPopupWindow"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_5

    :cond_37
    add-int v24, v11, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_3c

    const/16 v24, 0x5050

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_3a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, p4

    if-lt v0, v1, :cond_39

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v15, :cond_38

    add-int v24, v11, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_38

    const-string v24, "HoverPopupWindow"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-1: misGravityBottomUnder = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_38
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v11, v24, p4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v24, v0

    sub-int v11, v11, v24

    const-string v24, "HoverPopupWindow"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-2: misGravityBottomUnder = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    const-string v24, "HoverPopupWindow"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_39
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v24, v24, v11

    add-int v24, v24, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v11, v24, p4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v24, v0

    sub-int v11, v11, v24

    const-string v24, "HoverPopupWindow"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-2: misGravityBottomUnder = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    const-string v24, "HoverPopupWindow"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_3a
    const-string v24, "HoverPopupWindow"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v12, :cond_3b

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v24, v24, p4

    move/from16 v0, v24

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto/16 :goto_5

    :cond_3b
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v24, v24, p4

    move/from16 v0, v24

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto/16 :goto_5

    :cond_3c
    const/16 v24, 0x3030

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_3e

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    if-ge v11, v15, :cond_3d

    add-int v24, v11, p4

    add-int v24, v24, v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_3d

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    add-int v24, v24, v25

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3d

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    :cond_3d
    const-string v24, "HoverPopupWindow"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_3e
    if-ge v11, v15, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v15, :cond_7

    move v11, v15

    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_1
        0x5 -> :sswitch_5
        0x101 -> :sswitch_7
        0x103 -> :sswitch_2
        0x105 -> :sswitch_4
        0x201 -> :sswitch_8
        0x303 -> :sswitch_0
        0x505 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_b
        0x30 -> :sswitch_a
        0x50 -> :sswitch_c
        0x3030 -> :sswitch_9
        0x5050 -> :sswitch_d
    .end sparse-switch
.end method

.method private dismissPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    :cond_2
    return-void
.end method

.method private getStateHashCode()I
    .locals 4

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .local v0, "hashCode":I
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    const/4 v2, 0x2

    new-array v1, v2, [I

    .local v1, "location":[I
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x14

    const/4 v3, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initCoverManager()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "HoverPopupWindow"

    const-string v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private isViewCoverClose()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .local v2, "isCoverOpen":Z
    const/4 v0, 0x0

    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    :try_start_0
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    invoke-interface {v3}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "HoverPopupWindow"

    const-string v4, "RemoteException in getCoverState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private makeToolTipContentView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7010001

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "text":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v7, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->fontScale:F

    .local v1, "fontScale":F
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v6, :cond_1

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mFontScale:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_5

    :cond_1
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mFontScale:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_2

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mFontScale:F

    :cond_2
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "gt5note"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mUspLevel:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_6

    :cond_4
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .end local v0    # "context":Landroid/content/Context;
    .local v2, "inflater":Landroid/view/LayoutInflater;
    :goto_1
    const v4, 0x109007a

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_5
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_1
.end method

.method private playSoundAndHapticFeedback()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "audioManager":Landroid/media/AudioManager;
    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    const v2, 0xc359

    invoke-virtual {v1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method private pointInValidHoverArea(FF)Z
    .locals 2
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "gt5note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "noble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setAnimator(II)V
    .locals 5
    .param p1, "movelength"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT:I

    if-ne p2, v0, :cond_1

    :cond_0
    new-array v0, v1, [F

    aput v2, v0, v3

    int-to-float v1, p1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/HoverPopupWindow$QuintEaseOut;

    invoke-direct {v1}, Landroid/widget/HoverPopupWindow$QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/HoverPopupWindow$3;

    invoke-direct {v1, p0}, Landroid/widget/HoverPopupWindow$3;-><init>(Landroid/widget/HoverPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :cond_1
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    if-ne p2, v0, :cond_3

    :cond_2
    new-array v0, v1, [F

    int-to-float v1, p1

    aput v1, v0, v3

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_3
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private setPopupContent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    packed-switch v4, :pswitch_data_0

    iput-object v6, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v4, v5, p0}, Landroid/widget/HoverPopupWindow$HoverPopupListener;->onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z

    :cond_1
    return-void

    :pswitch_0
    iput-object v6, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_0

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    if-eqz v4, :cond_0

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "gt5note"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mUspLevel:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    :cond_3
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .end local v0    # "context":Landroid/content/Context;
    .local v2, "inflater":Landroid/view/LayoutInflater;
    :goto_1
    :try_start_0
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .local v3, "v":Landroid/view/View;
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v3    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    .local v1, "ie":Landroid/view/InflateException;
    iput-object v6, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .end local v1    # "ie":Landroid/view/InflateException;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPopup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getStateHashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mUspLevel:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getIsDetachedFromWindow()Z

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    :cond_3
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsSkipPenPointEffect:Z

    invoke-virtual {p0, v2}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->setPopupContent()V

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    goto :goto_0
.end method

.method private updateHoverPopup(Landroid/view/View;III)V
    .locals 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/HoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    if-eqz v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :goto_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method protected computePopupPosition(Landroid/view/View;III)V
    .locals 47
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offX"    # I
    .param p4, "offY"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    if-eqz p1, :cond_14

    move-object/from16 v14, p1

    .local v14, "anchorView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    .local v26, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v13, 0x0

    .local v13, "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x2

    new-array v12, v4, [I

    .local v12, "anchorLocOnScr":[I
    const/4 v4, 0x2

    new-array v11, v4, [I

    .local v11, "anchorLocInWindow":[I
    invoke-virtual {v14, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v14, v11}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {v14}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/RenderNode;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v14}, Landroid/view/View;->getRotation()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    invoke-virtual {v14}, Landroid/view/View;->getRotationX()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    invoke-virtual {v14}, Landroid/view/View;->getRotationY()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    :cond_2
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v33, v0

    .local v33, "identityMatrixOffset":[F
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v33, v5

    aput v6, v33, v4

    invoke-virtual {v14}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v14}, Landroid/view/View;->getRotation()F

    move-result v4

    float-to-int v4, v4

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_15

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v11, v5

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v11, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v11, v5

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v11, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v12, v5

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v12, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v12, v5

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v12, v4

    .end local v33    # "identityMatrixOffset":[F
    :cond_3
    :goto_2
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .local v25, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isScaleWindow()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v39

    .local v39, "rootview":Landroid/view/View;
    const/16 v35, 0x0

    .local v35, "isRootViewFullScreen":Z
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getWidth()I

    move-result v41

    .local v41, "rootviewWidth":I
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getHeight()I

    move-result v40

    .local v40, "rootviewHeight":I
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v0, v41

    if-ne v0, v4, :cond_5

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v0, v40

    if-ne v0, v4, :cond_5

    const/16 v35, 0x1

    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_16

    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x0

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    const/4 v4, 0x1

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    const/4 v6, 0x0

    aget v6, v11, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v11, v7

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v13, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    :cond_6
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mDisplayFrameLeft:I

    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mDisplayFrameRight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mDisplayFrameRight:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mDisplayFrameLeft:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    if-nez v4, :cond_17

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    .local v46, "widthMeasureSpec":I
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .local v30, "heightMeasureSpec":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move/from16 v0, v46

    move/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .local v24, "contentWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    .local v22, "contentHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v13, Landroid/graphics/Rect;->left:I

    iget v6, v13, Landroid/graphics/Rect;->top:I

    iget v7, v13, Landroid/graphics/Rect;->right:I

    iget v8, v13, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v37, v0

    .local v37, "posX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v38, v0

    .local v38, "posY":I
    const/4 v15, 0x0

    .local v15, "canDraw":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1a

    add-int v4, v38, v22

    iget v5, v13, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_7

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v38

    if-ge v0, v4, :cond_7

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v38

    iget v5, v13, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v5, :cond_8

    :cond_7
    const/4 v15, 0x1

    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v4, :cond_33

    :cond_9
    if-eqz v15, :cond_33

    const/16 v34, 0x1

    .local v34, "isPopupAboveHorizontal":Z
    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v36

    .local v36, "marginForHoverRing":I
    const/16 v16, 0x0

    .local v16, "containerLeftOnWindow":I
    const/16 v21, 0x0

    .local v21, "containerRightOnWindow":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1c

    iget v4, v13, Landroid/graphics/Rect;->left:I

    move/from16 v0, v37

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int v4, v37, v24

    iget v5, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v26

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v21

    :cond_a
    :goto_6
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move/from16 v0, v38

    if-le v0, v4, :cond_1d

    const/16 v34, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-nez v4, :cond_b

    new-instance v4, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setBackgroundColor(I)V

    const-string v4, "HoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: kdhpoint2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    if-eqz v4, :cond_1e

    :cond_c
    const-string v4, "HoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(true)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .local v23, "contentLP":Landroid/view/ViewGroup$LayoutParams;
    if-nez v23, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->removeAllViews()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->addView(Landroid/view/View;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    sub-int v4, v16, v37

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v18

    .local v18, "containerPaddingLeft":I
    add-int v4, v37, v24

    sub-int v4, v21, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .local v19, "containerPaddingRight":I
    const/16 v20, 0x0

    .local v20, "containerPaddingTop":I
    const/16 v17, 0x0

    .local v17, "containerPaddingBottom":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v4, :cond_21

    if-eqz v34, :cond_20

    move/from16 v17, v36

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_27

    if-eqz v34, :cond_10

    move/from16 v37, v16

    :cond_10
    :goto_b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    sub-int v4, v4, v37

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int v31, v4, v5

    .local v31, "hoverPointXonContainer":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    sub-int v4, v4, v38

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int v32, v4, v5

    .local v32, "hoverPointYonContainer":I
    if-eqz v34, :cond_2d

    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v45

    .local v45, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v45, :cond_12

    invoke-virtual/range {v45 .. v45}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v42

    .local v42, "scaleFactor":Landroid/graphics/PointF;
    new-instance v29, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .local v29, "fPos":Landroid/graphics/PointF;
    move-object/from16 v0, v42

    iget v4, v0, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_11

    move-object/from16 v0, v42

    iget v4, v0, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2b

    :cond_11
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_29

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, v42

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v42

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, v42

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v42

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->y:F

    :goto_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    move-object/from16 v0, v29

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v29

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    .end local v29    # "fPos":Landroid/graphics/PointF;
    .end local v42    # "scaleFactor":Landroid/graphics/PointF;
    :cond_12
    :goto_d
    div-int/lit8 v4, v24, 0x2

    add-int v43, v18, v4

    .local v43, "startx":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v44, v22, v4

    .local v44, "starty":I
    move/from16 v27, v31

    .local v27, "endx":I
    move/from16 v28, v32

    .local v28, "endy":I
    add-int/lit8 v4, v18, 0xa

    move/from16 v0, v27

    if-ge v0, v4, :cond_13

    .end local v16    # "containerLeftOnWindow":I
    .end local v17    # "containerPaddingBottom":I
    .end local v18    # "containerPaddingLeft":I
    .end local v19    # "containerPaddingRight":I
    .end local v20    # "containerPaddingTop":I
    .end local v21    # "containerRightOnWindow":I
    .end local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v27    # "endx":I
    .end local v28    # "endy":I
    .end local v31    # "hoverPointXonContainer":I
    .end local v32    # "hoverPointYonContainer":I
    .end local v34    # "isPopupAboveHorizontal":Z
    .end local v36    # "marginForHoverRing":I
    .end local v43    # "startx":I
    .end local v44    # "starty":I
    .end local v45    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_13
    :goto_e
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_0

    const-string v4, "HoverPopupWindow"

    const-string v5, "HoverPopupWindow.computePopupPosition() : Call setFHmoveAnimationOffset(0)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setFHmoveAnimationOffset(I)V

    goto/16 :goto_0

    .end local v11    # "anchorLocInWindow":[I
    .end local v12    # "anchorLocOnScr":[I
    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    .end local v14    # "anchorView":Landroid/view/View;
    .end local v15    # "canDraw":Z
    .end local v22    # "contentHeight":I
    .end local v24    # "contentWidth":I
    .end local v25    # "displayFrame":Landroid/graphics/Rect;
    .end local v26    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v30    # "heightMeasureSpec":I
    .end local v35    # "isRootViewFullScreen":Z
    .end local v37    # "posX":I
    .end local v38    # "posY":I
    .end local v39    # "rootview":Landroid/view/View;
    .end local v40    # "rootviewHeight":I
    .end local v41    # "rootviewWidth":I
    .end local v46    # "widthMeasureSpec":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .restart local v11    # "anchorLocInWindow":[I
    .restart local v12    # "anchorLocOnScr":[I
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    .restart local v14    # "anchorView":Landroid/view/View;
    .restart local v26    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v33    # "identityMatrixOffset":[F
    :cond_15
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v11, v5

    const/4 v6, 0x0

    aget v6, v33, v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    aput v5, v11, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v11, v5

    const/4 v6, 0x1

    aget v6, v33, v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    aput v5, v11, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x0

    aget v6, v33, v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    aput v5, v12, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v12, v5

    const/4 v6, 0x1

    aget v6, v33, v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    aput v5, v12, v4

    goto/16 :goto_2

    .end local v33    # "identityMatrixOffset":[F
    .restart local v25    # "displayFrame":Landroid/graphics/Rect;
    .restart local v35    # "isRootViewFullScreen":Z
    .restart local v39    # "rootview":Landroid/view/View;
    .restart local v40    # "rootviewHeight":I
    .restart local v41    # "rootviewWidth":I
    :cond_16
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v12, v5

    const/4 v6, 0x0

    aget v6, v12, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v12, v7

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v13, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_6

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_6

    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    .restart local v46    # "widthMeasureSpec":I
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .restart local v30    # "heightMeasureSpec":I
    goto/16 :goto_4

    .end local v30    # "heightMeasureSpec":I
    .end local v46    # "widthMeasureSpec":I
    :cond_18
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    .restart local v46    # "widthMeasureSpec":I
    goto :goto_f

    :cond_19
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .restart local v30    # "heightMeasureSpec":I
    goto/16 :goto_4

    .restart local v15    # "canDraw":Z
    .restart local v22    # "contentHeight":I
    .restart local v24    # "contentWidth":I
    .restart local v37    # "posX":I
    .restart local v38    # "posY":I
    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    add-int v4, v38, v22

    iget v5, v13, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_1b

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v38

    if-lt v0, v4, :cond_8

    :cond_1b
    const/4 v15, 0x1

    goto/16 :goto_5

    .restart local v16    # "containerLeftOnWindow":I
    .restart local v21    # "containerRightOnWindow":I
    .restart local v34    # "isPopupAboveHorizontal":Z
    .restart local v36    # "marginForHoverRing":I
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    iget v4, v13, Landroid/graphics/Rect;->left:I

    move/from16 v0, v37

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int v4, v37, v24

    iget v5, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v21

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I

    move/from16 v0, v21

    if-le v0, v4, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I

    move/from16 v21, v0

    goto/16 :goto_6

    :cond_1d
    const/16 v34, 0x1

    goto/16 :goto_7

    :cond_1e
    const-string v4, "HoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(false)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    goto/16 :goto_8

    .restart local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    :cond_1f
    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, v22

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_9

    .restart local v17    # "containerPaddingBottom":I
    .restart local v18    # "containerPaddingLeft":I
    .restart local v19    # "containerPaddingRight":I
    .restart local v20    # "containerPaddingTop":I
    :cond_20
    move/from16 v20, v36

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_a

    :cond_21
    if-eqz v34, :cond_24

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_23

    move/from16 v17, v36

    :cond_22
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_a

    :cond_23
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_22

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    add-int v4, v4, v36

    add-int v5, v38, v22

    sub-int v17, v4, v5

    goto :goto_10

    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_26

    move/from16 v20, v36

    :cond_25
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_a

    :cond_26
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_25

    iget v4, v13, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, v36

    sub-int v20, v38, v4

    goto :goto_11

    :cond_27
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    if-eqz v34, :cond_28

    move/from16 v37, v16

    goto/16 :goto_b

    :cond_28
    move/from16 v37, v16

    sub-int v38, v38, v20

    goto/16 :goto_b

    .restart local v29    # "fPos":Landroid/graphics/PointF;
    .restart local v31    # "hoverPointXonContainer":I
    .restart local v32    # "hoverPointYonContainer":I
    .restart local v42    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v45    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_29
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, v42

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v42

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, v42

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v42

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_c

    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    move-object/from16 v0, v29

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v29

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_d

    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    move/from16 v7, v31

    move/from16 v8, v32

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_d

    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v7, v31

    move/from16 v8, v32

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_d

    .end local v29    # "fPos":Landroid/graphics/PointF;
    .end local v42    # "scaleFactor":Landroid/graphics/PointF;
    .end local v45    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_2d
    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v45

    .restart local v45    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v45, :cond_13

    invoke-virtual/range {v45 .. v45}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v42

    .restart local v42    # "scaleFactor":Landroid/graphics/PointF;
    new-instance v29, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .restart local v29    # "fPos":Landroid/graphics/PointF;
    move-object/from16 v0, v42

    iget v4, v0, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2e

    move-object/from16 v0, v42

    iget v4, v0, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_31

    :cond_2e
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_2f

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, v42

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v42

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, v42

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v42

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->y:F

    :goto_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    move-object/from16 v0, v29

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v29

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_e

    :cond_2f
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, v42

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v42

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, v42

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v42

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->y:F

    goto :goto_12

    :cond_30
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    move-object/from16 v0, v29

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v29

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_e

    :cond_31
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_32

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    const/4 v9, 0x0

    const/4 v10, 0x1

    move/from16 v7, v31

    move/from16 v8, v32

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_e

    :cond_32
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v7, v31

    move/from16 v8, v32

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_e

    .end local v16    # "containerLeftOnWindow":I
    .end local v17    # "containerPaddingBottom":I
    .end local v18    # "containerPaddingLeft":I
    .end local v19    # "containerPaddingRight":I
    .end local v20    # "containerPaddingTop":I
    .end local v21    # "containerRightOnWindow":I
    .end local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v29    # "fPos":Landroid/graphics/PointF;
    .end local v31    # "hoverPointXonContainer":I
    .end local v32    # "hoverPointYonContainer":I
    .end local v34    # "isPopupAboveHorizontal":Z
    .end local v36    # "marginForHoverRing":I
    .end local v42    # "scaleFactor":Landroid/graphics/PointF;
    .end local v45    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v4, :cond_37

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-nez v4, :cond_34

    new-instance v4, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->getChildCount()I

    move-result v4

    if-nez v4, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    :cond_35
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_13

    const-string v4, "HoverPopupWindow"

    const-string v5, "computePopupPosition: Call resetTimeout()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    goto/16 :goto_e

    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    goto :goto_13

    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->removeAllViews()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    goto/16 :goto_e
.end method

.method protected convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 2
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .locals 3

    .prologue
    const/4 v2, -0x2

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    return v0
.end method

.method public getFHAnimationEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    return v0
.end method

.method public getFHGuideLineEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    return v0
.end method

.method public getInfoPickerMoveEabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method public getIsDismissTouchableHPWOnActionUp()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method protected getPriorityContentText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getUspLevel()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mUspLevel:I

    return v0
.end method

.method protected initInstance()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    const/16 v1, 0x12c

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    const/16 v1, 0x3231

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    iput v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iput v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    iput v3, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    iput v3, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    iput v3, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    iput v3, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    iput v3, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    iput v3, p0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    iput v3, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    iput v3, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    iput v3, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    iput v3, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    const v1, 0x10304f8

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    iput v3, p0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    iput v3, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mShowPopupAlways:Z

    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsSkipPenPointEffect:Z

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x161

    const v2, 0x108037d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    const/16 v1, 0x160

    const v2, -0x866e57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    iput v3, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    iput v3, v1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mFontScale:F

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mUspLevel:I

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->initCoverManager()V

    return-void
.end method

.method public isDialer()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    return v0
.end method

.method protected isFingerHoveringSettingsEnabled(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, -0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    .local v0, "isFingerHoveringOn":Z
    :goto_0
    if-eqz v0, :cond_0

    if-eq p1, v2, :cond_0

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_information_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_4

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_1
    return v1

    .end local v0    # "isFingerHoveringOn":Z
    :cond_1
    move v0, v1

    goto :goto_0

    .restart local v0    # "isFingerHoveringOn":Z
    :cond_2
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isDialer()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isDialer()Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method public isHoverPopupPossible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .local v0, "ret":Z
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isHoveringSettingEnabled(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isSPenHoveringSettingsEnabled(I)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isFingerHoveringSettingsEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isLockScreenMode()Z
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v0, 0x0

    .local v0, "isLockState":Z
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method protected isMouseHoveringSettingsEnabled(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isProgressBar()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    return v0
.end method

.method protected isSPenHoveringSettingsEnabled(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, -0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .local v0, "isSPenHoveringOn":Z
    :goto_0
    if-eqz v0, :cond_8

    if-ne p1, v1, :cond_2

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_8

    :cond_0
    :goto_1
    return v1

    .end local v0    # "isSPenHoveringOn":Z
    :cond_1
    move v0, v2

    goto :goto_0

    .restart local v0    # "isSPenHoveringOn":Z
    :cond_2
    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-ne p1, v3, :cond_8

    :cond_3
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isUseOldAirviewSettingsMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_speed_dial_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isDialer()Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_progress_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isUseOldAirviewSettingsMenu()Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_1

    :cond_6
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_speed_dial_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isDialer()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_7
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_progress_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_8

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_8
    move v1, v2

    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseOldAirviewSettingsMenu()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "h3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "ha3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "true"

    sget-object v2, Landroid/widget/HoverPopupWindow;->AIRCOMMAND_MORPH_USP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method protected makeDefaultContentView()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .local v4, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    .local v18, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .local v19, "y":F
    const/16 v20, 0x9

    move/from16 v0, v20

    if-ne v4, v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    sub-long v16, v20, v22

    .local v16, "timeDealy":J
    const-wide/16 v20, 0x3e8

    cmp-long v20, v16, v20

    if-lez v20, :cond_0

    const/16 v20, 0x1

    .end local v16    # "timeDealy":J
    :goto_0
    return v20

    .restart local v16    # "timeDealy":J
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v10

    .local v10, "isPointInValidHoverArea":Z
    if-eqz v10, :cond_2

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .end local v10    # "isPointInValidHoverArea":Z
    .end local v16    # "timeDealy":J
    :cond_1
    :goto_1
    const/16 v20, 0x0

    goto :goto_0

    .restart local v10    # "isPointInValidHoverArea":Z
    .restart local v16    # "timeDealy":J
    :cond_2
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    goto :goto_1

    .end local v10    # "isPointInValidHoverArea":Z
    .end local v16    # "timeDealy":J
    :cond_3
    const/16 v20, 0x7

    move/from16 v0, v20

    if-ne v4, v0, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v12, v0

    .local v12, "rawX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v13, v0

    .local v13, "rawY":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v10

    .restart local v10    # "isPointInValidHoverArea":Z
    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    sub-long v16, v20, v22

    .restart local v16    # "timeDealy":J
    const-wide/16 v20, 0x3e8

    cmp-long v20, v16, v20

    if-lez v20, :cond_4

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    const/16 v20, 0x1

    goto :goto_0

    :cond_4
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->show()V

    const/16 v20, 0x1

    goto/16 :goto_0

    .end local v16    # "timeDealy":J
    :cond_5
    if-nez v10, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    const/16 v20, 0x1

    goto/16 :goto_0

    .end local v10    # "isPointInValidHoverArea":Z
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v11

    .local v11, "popupView":Landroid/view/View;
    instance-of v0, v11, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    move-object v6, v11

    check-cast v6, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .local v6, "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingLeft()I

    move-result v8

    .local v8, "infopickerLeftLimit":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v20

    add-int v9, v20, v8

    .local v9, "infopickerRightLimit":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPickerLimit(II)V

    .end local v8    # "infopickerLeftLimit":I
    .end local v9    # "infopickerRightLimit":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .local v5, "anchorView":Landroid/view/View;
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v15

    .local v15, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v14

    .local v14, "scaleFactor":Landroid/graphics/PointF;
    new-instance v7, Landroid/graphics/PointF;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v7, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .local v7, "fPos":Landroid/graphics/PointF;
    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v20, v20, v21

    if-nez v20, :cond_9

    iget v0, v14, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_9

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v20, v0

    sub-int v20, v12, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    .end local v7    # "fPos":Landroid/graphics/PointF;
    .end local v14    # "scaleFactor":Landroid/graphics/PointF;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v20

    if-nez v20, :cond_e

    invoke-virtual {v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    .end local v5    # "anchorView":Landroid/view/View;
    .end local v6    # "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .end local v11    # "popupView":Landroid/view/View;
    .end local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mToolType:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    invoke-direct/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->resetTimeout()V

    :cond_c
    const/16 v20, 0x1

    goto/16 :goto_0

    .restart local v6    # "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .restart local v11    # "popupView":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_2

    .restart local v5    # "anchorView":Landroid/view/View;
    .restart local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v20, v0

    if-nez v20, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setFHGuideLineForCotainer(Z)V

    :cond_10
    invoke-virtual {v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    goto :goto_3

    .end local v5    # "anchorView":Landroid/view/View;
    .end local v6    # "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .end local v11    # "popupView":Landroid/view/View;
    .end local v12    # "rawX":I
    .end local v13    # "rawY":I
    .end local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_11
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v4, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPopupState(I)V

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v20

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v20, 0x1

    goto/16 :goto_0
.end method

.method protected postDismiss(I)V
    .locals 4
    .param p1, "ms"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Landroid/widget/HoverPopupWindow$6;

    invoke-direct {v1, p0}, Landroid/widget/HoverPopupWindow$6;-><init>(Landroid/widget/HoverPopupWindow;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 2
    .param p1, "aniStyle"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_0
    return-void
.end method

.method public setContent(I)V
    .locals 1
    .param p1, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    iput-object p2, p0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public setDismissTouchableHPWOnActionUp(Z)V
    .locals 0
    .param p1, "bDismissTouchableHPWOnActionUp"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    return-void
.end method

.method public setFHAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabledByApp(ZZ)V

    return-void
.end method

.method public setFHAnimationEnabledByApp(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    if-eq v0, v1, :cond_0

    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    goto :goto_0
.end method

.method public setFHGuideLineEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabledByApp(ZZ)V

    return-void
.end method

.method public setFHGuideLineEnabledByApp(ZZ)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-ne v0, v1, :cond_1

    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    if-eq v0, v1, :cond_0

    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-ne v0, v1, :cond_3

    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0
.end method

.method public setFHSoundAndHapticEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    return-void
.end method

.method public setGuideLineEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    return-void
.end method

.method public setGuideLineFadeOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    int-to-float v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    return-void
.end method

.method public setGuideLineStyle(II)V
    .locals 0
    .param p1, "ringDrawable"    # I
    .param p2, "lineColor"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    iput p2, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    return-void
.end method

.method public setHoverDetectTime(I)V
    .locals 0
    .param p1, "ms"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    return-void
.end method

.method public setHoverPaddingArea(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    iput p3, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    iput p2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    iput p4, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    :cond_1
    return-void
.end method

.method public setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .prologue
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    return-void
.end method

.method public setHoverPopupPreShowListener(Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    .prologue
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    return-void
.end method

.method public setHoverPopupToolType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    iput p2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    return-void
.end method

.method public setInfoPickerColorToAndMoreBottomImg(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    return-void
.end method

.method public setInfoPickerMoveEabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setInfoPickerMoveEabledByApp(ZZ)V

    return-void
.end method

.method public setInfoPickerMoveEabledByApp(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    if-eq v0, v1, :cond_0

    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    goto :goto_0
.end method

.method protected setInstanceByType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    const/16 v0, 0x5153

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    const v0, 0x10304f8

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    :cond_0
    return-void
.end method

.method public setInstanceOfDialer(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    return-void
.end method

.method public setInstanceOfProgressBar(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    return-void
.end method

.method public setOverTopPickerOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v0, p1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopPickerOffset(I)V

    :cond_0
    return-void
.end method

.method public setPickerXOffset(I)V
    .locals 0
    .param p1, "xOffset"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPickerXoffset:I

    return-void
.end method

.method public setPopupGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    return-void
.end method

.method public setPopupPosOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    return-void
.end method

.method public setShowPopupAlways(Z)V
    .locals 0
    .param p1, "always"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mShowPopupAlways:Z

    return-void
.end method

.method public setTouchablePopup(Z)V
    .locals 2
    .param p1, "isTouchable"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->show(I)V

    return-void
.end method

.method public show(I)V
    .locals 9
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-eq p1, v3, :cond_0

    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    :cond_0
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    invoke-interface {v3}, Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;->onHoverPopupPreShow()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v3, :cond_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isHoveringSettingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->isViewCoverClose()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isLockScreenMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .local v0, "root":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_5

    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .local v2, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x8ac

    if-eq v3, v4, :cond_4

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x62

    if-ne v3, v4, :cond_5

    :cond_4
    invoke-virtual {p0, v5}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    .end local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getStateHashCode()I

    move-result v3

    iput v3, p0, Landroid/widget/HoverPopupWindow;->mHashCodeForViewState:I

    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v3, :cond_6

    invoke-virtual {p0, v8}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    :cond_6
    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    if-eqz v3, :cond_7

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    if-ne v3, v8, :cond_7

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_7

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->playSoundAndHapticFeedback()V

    :cond_7
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-ne v3, v8, :cond_8

    new-instance v3, Landroid/widget/HoverPopupWindow$4;

    invoke-direct {v3, p0}, Landroid/widget/HoverPopupWindow$4;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    :cond_8
    new-instance v3, Landroid/widget/HoverPopupWindow$5;

    invoke-direct {v3, p0}, Landroid/widget/HoverPopupWindow$5;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget v5, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v8, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    goto/16 :goto_0
.end method

.method protected showPenPointEffect(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x1

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-ne p1, v2, :cond_1

    const/16 v0, 0xa

    const/4 v1, -0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    if-ne v0, v2, :cond_0

    const/16 v0, 0x14

    const/4 v1, -0x1

    :try_start_1
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public updateHoverPopup()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_1
.end method
