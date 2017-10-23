.class public abstract Landroid/widget/AbsHorizontalListView;
.super Landroid/widget/AdapterView;
.source "AbsHorizontalListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsHorizontalListView$HoverScrollHandler;,
        Landroid/widget/AbsHorizontalListView$RecycleBin;,
        Landroid/widget/AbsHorizontalListView$RecyclerListener;,
        Landroid/widget/AbsHorizontalListView$LayoutParams;,
        Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;,
        Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;,
        Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;,
        Landroid/widget/AbsHorizontalListView$PositionScroller;,
        Landroid/widget/AbsHorizontalListView$FlingRunnable;,
        Landroid/widget/AbsHorizontalListView$CheckForTap;,
        Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;,
        Landroid/widget/AbsHorizontalListView$CheckForLongPress;,
        Landroid/widget/AbsHorizontalListView$PerformClick;,
        Landroid/widget/AbsHorizontalListView$WindowRunnnable;,
        Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsHorizontalListView$SavedState;,
        Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsHorizontalListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final HOVERSCROLL_LEFT:I = 0x1

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsHorizontalListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected AIR_VIEW_WINSET:Z

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private isHoveringUIEnabled:Z

.field private mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mAlwaysDisableHoverHighlight:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field public mCurrentKeyCode:I

.field private mDVFSHelper:Landroid/os/DVFSHelper;

.field private mDVFSHelperCore:Landroid/os/DVFSHelper;

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScroller:Landroid/widget/HorizontalFastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field public mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingBottom:I

.field private mGlowPaddingTop:I

.field private mHapticOverScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHasWindowFocusForMotion:Z

.field mHeightMeasureSpec:I

.field public mHoverAreaEnter:Z

.field private mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

.field private mHoverLeftAreaWidth:I

.field private mHoverLeftAreaWidth_DP:I

.field private mHoverPosition:I

.field private mHoverRecognitionCurrentTime:I

.field private mHoverRecognitionDurationTime:I

.field private mHoverRecognitionStartTime:I

.field private mHoverRightAreaWidth:I

.field private mHoverRightAreaWidth_DP:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:I

.field private mHoverScrollTimeInterval:I

.field private mHoveredOnEllipsizedText:Z

.field private mIsChildViewEnabled:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDragScrolled:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoveredByMouse:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsPnePressed:Z

.field final mIsScrap:[Z

.field private mIsShiftkeyPressed:Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastX:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field private mMotionEnable:Z

.field private mMotionListener:Lcom/samsung/android/motion/MRListener;

.field mMotionPosition:I

.field private mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

.field mMotionViewNewLeft:I

.field mMotionViewOriginalLeft:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

.field mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field public mOldAdapterItemCount:I

.field public mOldKeyCode:I

.field private mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

.field private mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field mScrollLeft:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollRight:Landroid/view/View;

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollingCacheEnabled:Z

.field public mSecondPressedPoint:I

.field mSelectedLeft:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field public mTwCurrentFocusPosition:I

.field private mTwCustomMultiChoiceMode:Z

.field public mTwPressItemListArray:[I

.field public mTwPressItemListIndex:I

.field private final mTwScrollAmount:I

.field private mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

.field private mTwTwScrollRemains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 803
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsHorizontalListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 981
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 137
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    .line 138
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z

    .line 139
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 141
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 272
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    .line 305
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 330
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    .line 335
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 345
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 350
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 356
    new-instance v1, Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$RecycleBin;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    .line 361
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    .line 366
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    .line 371
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    .line 376
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    .line 381
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 386
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHeightMeasureSpec:I

    .line 434
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 465
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    .line 508
    iput-boolean v6, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    .line 528
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 530
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 556
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    .line 559
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mScrollProfilingStarted:Z

    .line 562
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mFlingProfilingStarted:Z

    .line 570
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 571
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 618
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    .line 637
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mVelocityScale:F

    .line 639
    new-array v1, v6, [Z

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mIsScrap:[Z

    .line 649
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 654
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    .line 660
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    .line 710
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    .line 742
    const/16 v1, 0xf

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth_DP:I

    .line 744
    const/16 v1, 0x19

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth_DP:I

    .line 746
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    .line 748
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    .line 758
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I

    .line 760
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I

    .line 762
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 764
    const/16 v1, 0x12c

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollTimeInterval:I

    .line 766
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 768
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 773
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 778
    iput-boolean v6, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    .line 783
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 788
    const/16 v1, 0xa

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I

    .line 793
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I

    .line 798
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    .line 821
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    .line 826
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    .line 831
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    .line 833
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    .line 838
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 840
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    .line 842
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mSecondPressedPoint:I

    .line 846
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    .line 848
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    .line 850
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    .line 852
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    .line 920
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 921
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 922
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 974
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->AIR_VIEW_WINSET:Z

    .line 3313
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    .line 4244
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    .line 4245
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4839
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    .line 4841
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    .line 4842
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    .line 4843
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    .line 4844
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    .line 6060
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    .line 6061
    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6062
    const/16 v1, 0x1f4

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mTwScrollAmount:I

    .line 8119
    new-instance v1, Landroid/widget/AbsHorizontalListView$6;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$6;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Lcom/samsung/android/motion/MRListener;

    .line 8188
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I

    .line 982
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initAbsListView()V

    .line 984
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mOwnerThread:Ljava/lang/Thread;

    .line 986
    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->setHorizontalScrollBarEnabled(Z)V

    .line 987
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 988
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 989
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 994
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-nez v1, :cond_0

    .line 995
    const-string v1, "AbsHorizontalListView"

    const-string v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/motion/MotionRecognitionManager;

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 1000
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    .line 1001
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1004
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1005
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 1008
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    .line 138
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z

    .line 139
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 141
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 272
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    .line 305
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 330
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    .line 335
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 345
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 350
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 356
    new-instance v9, Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-direct {v9, p0}, Landroid/widget/AbsHorizontalListView$RecycleBin;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    .line 361
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    .line 366
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    .line 371
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    .line 376
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    .line 381
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 386
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHeightMeasureSpec:I

    .line 434
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 465
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    .line 508
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    .line 528
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 530
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 556
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    .line 559
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mScrollProfilingStarted:Z

    .line 562
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mFlingProfilingStarted:Z

    .line 570
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 571
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 618
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    .line 637
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mVelocityScale:F

    .line 639
    const/4 v9, 0x1

    new-array v9, v9, [Z

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mIsScrap:[Z

    .line 649
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 654
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    .line 660
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    .line 710
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    .line 742
    const/16 v9, 0xf

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth_DP:I

    .line 744
    const/16 v9, 0x19

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth_DP:I

    .line 746
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    .line 748
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    .line 758
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I

    .line 760
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I

    .line 762
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 764
    const/16 v9, 0x12c

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollTimeInterval:I

    .line 766
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 768
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 773
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 778
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    .line 783
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 788
    const/16 v9, 0xa

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I

    .line 793
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I

    .line 798
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    .line 821
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    .line 826
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    .line 831
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    .line 833
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    .line 838
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 840
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    .line 842
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSecondPressedPoint:I

    .line 846
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    .line 848
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    .line 850
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    .line 852
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    .line 920
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 921
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 922
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 974
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->AIR_VIEW_WINSET:Z

    .line 3313
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    .line 4244
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    .line 4245
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4839
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    .line 4841
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    .line 4842
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    .line 4843
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    .line 4844
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    .line 6060
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    .line 6061
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6062
    const/16 v9, 0x1f4

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mTwScrollAmount:I

    .line 8119
    new-instance v9, Landroid/widget/AbsHorizontalListView$6;

    invoke-direct {v9, p0}, Landroid/widget/AbsHorizontalListView$6;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Lcom/samsung/android/motion/MRListener;

    .line 8188
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I

    .line 1009
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initAbsListView()V

    .line 1011
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1013
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1016
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1017
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 1018
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1021
    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 1024
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1025
    .local v6, "stackFromBottom":Z
    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->setStackFromBottom(Z)V

    .line 1027
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 1028
    .local v4, "scrollingCacheEnabled":Z
    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->setScrollingCacheEnabled(Z)V

    .line 1030
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1031
    .local v8, "useTextFilter":Z
    invoke-virtual {p0, v8}, Landroid/widget/AbsHorizontalListView;->setTextFilterEnabled(Z)V

    .line 1033
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 1035
    .local v7, "transcriptMode":I
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->setTranscriptMode(I)V

    .line 1037
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 1038
    .local v1, "color":I
    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setCacheColorHint(I)V

    .line 1040
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 1041
    .local v3, "enableFastScroll":Z
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->setFastScrollEnabled(Z)V

    .line 1043
    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 1044
    .local v5, "smoothScrollbar":Z
    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->setSmoothScrollbarEnabled(Z)V

    .line 1046
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->setChoiceMode(I)V

    .line 1047
    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->setFastScrollAlwaysVisible(Z)V

    .line 1050
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1055
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-nez v9, :cond_1

    .line 1056
    const-string v9, "AbsHorizontalListView"

    const-string v10, "Get MotionRecognitionManager"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const-string/jumbo v9, "motion_recognition"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/motion/MotionRecognitionManager;

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 1061
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.feature.hovering_ui"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    .line 1062
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 2198
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/AbsHorizontalListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AbsHorizontalListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$1002(Landroid/widget/AbsHorizontalListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$CheckForLongPress;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    .prologue
    .line 126
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$1602(Landroid/widget/AbsHorizontalListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 126
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/AbsHorizontalListView;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/AbsHorizontalListView;)Landroid/os/StrictMode$Span;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/widget/AbsHorizontalListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/os/StrictMode$Span;

    .prologue
    .line 126
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2300(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/widget/AbsHorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$3000(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/AbsHorizontalListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 126
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsHorizontalListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/AbsHorizontalListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 126
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsHorizontalListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/AbsHorizontalListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$FlingRunnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Landroid/widget/AbsHorizontalListView;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/widget/AbsHorizontalListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4300(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$4400(Landroid/widget/AbsHorizontalListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4500(Landroid/widget/AbsHorizontalListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/HorizontalFastScroller;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic access$4900(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5100(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5200(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5300(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5400(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    return v0
.end method

.method static synthetic access$5500(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z

    return v0
.end method

.method static synthetic access$5600(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p0}, Landroid/widget/AbsHorizontalListView;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I

    return v0
.end method

.method static synthetic access$5702(Landroid/widget/AbsHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 126
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I

    return p1
.end method

.method static synthetic access$5800(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I

    return v0
.end method

.method static synthetic access$5802(Landroid/widget/AbsHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 126
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I

    return p1
.end method

.method static synthetic access$5900(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    return v0
.end method

.method static synthetic access$6000(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    return v0
.end method

.method static synthetic access$6100(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollTimeInterval:I

    return v0
.end method

.method static synthetic access$6200(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mRight:I

    return v0
.end method

.method static synthetic access$6300(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$6302(Landroid/widget/AbsHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 126
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$6400(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I

    return v0
.end method

.method static synthetic access$6500(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    return v0
.end method

.method static synthetic access$6600(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$6700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$HoverScrollHandler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    return-object v0
.end method

.method static synthetic access$6800(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$6802(Landroid/widget/AbsHorizontalListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$700(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    return v0
.end method

.method static synthetic access$800(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    return v0
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 6186
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6187
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 6188
    new-instance v0, Landroid/widget/AbsHorizontalListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$4;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 6204
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 6206
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1536
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 1537
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 1540
    :cond_0
    :goto_0
    return v1

    .line 1538
    :cond_1
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 1540
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6178
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6179
    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 6180
    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 6181
    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mCachingStarted:Z

    .line 6183
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 4
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 7122
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 7123
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 7124
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7125
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 7126
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 7127
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7128
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 7129
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7130
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7131
    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    .line 7132
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7133
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 7135
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 7136
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302e1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7140
    :goto_0
    return-void

    .line 7138
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302e2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 6873
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 6874
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6876
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2905
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2906
    .local v4, "tempSelectorRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 2907
    .local v2, "selectedPosition":I
    const/4 v1, 0x0

    .line 2908
    .local v1, "selectedChild":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2909
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2910
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2911
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2915
    .end local v3    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    if-eqz v5, :cond_2

    .line 2917
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v0, v5, :cond_2

    .line 2918
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v2, v5, v0

    .line 2919
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v5, v2, v5

    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2921
    if-eqz v1, :cond_1

    .line 2922
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2923
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2924
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2917
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2929
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 7363
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 7364
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7365
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7367
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 6919
    sparse-switch p2, :sswitch_data_0

    .line 6952
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 6921
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 6922
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6923
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 6924
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6956
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 6957
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 6958
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 6927
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6928
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 6929
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6930
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 6931
    .restart local v1    # "dY":I
    goto :goto_0

    .line 6933
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 6934
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6935
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 6936
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6937
    .restart local v1    # "dY":I
    goto :goto_0

    .line 6939
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6940
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 6941
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6942
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 6943
    .restart local v1    # "dY":I
    goto :goto_0

    .line 6946
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6947
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6948
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6949
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6950
    .restart local v1    # "dY":I
    goto :goto_0

    .line 6919
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 7143
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 7144
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7145
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x1090169

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    .line 7150
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 7152
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 7153
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7155
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private initAbsListView()V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 1066
    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->setClickable(Z)V

    .line 1067
    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->setFocusableInTouchMode(Z)V

    .line 1068
    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setWillNotDraw(Z)V

    .line 1069
    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1070
    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->setScrollingCacheEnabled(Z)V

    .line 1071
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->twEnableHorizontalScrollbar()V

    .line 1073
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1074
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 1075
    .local v6, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    .line 1076
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mMinimumVelocity:I

    .line 1077
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mMaximumVelocity:I

    .line 1078
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    .line 1079
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mOverflingDistance:I

    .line 1082
    .end local v6    # "configuration":Landroid/view/ViewConfiguration;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1083
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mDensityScale:F

    .line 1086
    :cond_1
    new-instance v1, Landroid/view/HapticPreDrawListener;

    invoke-direct {v1}, Landroid/view/HapticPreDrawListener;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    .line 1088
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 1089
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v9, :cond_2

    move v0, v9

    :cond_2
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->AIR_VIEW_WINSET:Z

    .line 1093
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 1094
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 1095
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    const-string v1, "ListView_scroll"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1097
    sget v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    if-eqz v0, :cond_4

    .line 1098
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER_CORE"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 1099
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    sget v2, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1104
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1105
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAudioManager:Landroid/media/AudioManager;

    .line 1109
    :cond_5
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 1110
    .local v8, "value":Landroid/util/TypedValue;
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    .line 1111
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x11600cf

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v7

    .line 1113
    .local v7, "resolved":Z
    if-eqz v7, :cond_6

    .line 1114
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 1118
    .end local v7    # "resolved":Z
    :cond_6
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 5049
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 5050
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5054
    :goto_0
    return-void

    .line 5052
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 5057
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 5058
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5060
    :cond_0
    return-void
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 1636
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 8292
    const-string v0, "AbsHorizontalListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8293
    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4852
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 4853
    .local v1, "action":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    .line 4856
    .local v11, "toolType":I
    const/4 v14, 0x7

    if-eq v1, v14, :cond_0

    const/16 v14, 0x9

    if-ne v1, v14, :cond_3

    :cond_0
    const/4 v14, 0x2

    if-ne v11, v14, :cond_3

    .line 4857
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    .line 4863
    :cond_1
    :goto_0
    const/4 v14, 0x1

    if-eq v11, v14, :cond_5

    .line 4864
    const/4 v14, 0x3

    if-ne v11, v14, :cond_4

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    .line 4963
    :cond_2
    :goto_2
    return-void

    .line 4858
    :cond_3
    const/16 v14, 0xa

    if-ne v1, v14, :cond_1

    .line 4859
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    goto :goto_0

    .line 4864
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 4867
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    .line 4870
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    .line 4875
    const/16 v14, 0x9

    if-ne v1, v14, :cond_6

    .line 4876
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    if-nez v14, :cond_2

    .line 4877
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 4882
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->isMultiWindows()Z

    move-result v14

    if-nez v14, :cond_2

    .line 4886
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    if-nez v14, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->isInDialog()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 4887
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4888
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 4892
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    const/4 v6, 0x1

    .line 4897
    .local v6, "isFingerAirView":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view_information_preview"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    const/4 v7, 0x1

    .line 4900
    .local v7, "isFingerAirViewPreview":Z
    :goto_4
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 4903
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->isHovered()Z

    move-result v14

    if-nez v14, :cond_9

    .line 4904
    const/4 v14, 0x1

    if-ne v11, v14, :cond_8

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsHorizontalListView;->setFingerHovered(Z)V

    .line 4905
    :cond_8
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsHorizontalListView;->setHovered(Z)V

    .line 4907
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 4908
    .local v12, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 4909
    .local v13, "y":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v9

    .line 4910
    .local v9, "newHoverPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    if-eq v14, v9, :cond_e

    const/4 v2, 0x1

    .line 4911
    .local v2, "bChanged":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->shouldShowSelectorDefault()Z

    move-result v10

    .line 4913
    .local v10, "shouldShowSelector":Z
    const/4 v3, 0x0

    .line 4915
    .local v3, "child":Landroid/view/View;
    if-gez v9, :cond_f

    .line 4916
    if-nez v10, :cond_a

    .line 4917
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 4920
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_b

    .line 4921
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4922
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->postInvalidateOnAnimation()V

    .line 4923
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    .line 4925
    :cond_b
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 4959
    .end local v2    # "bChanged":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "newHoverPosition":I
    .end local v10    # "shouldShowSelector":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    :catch_0
    move-exception v4

    .line 4960
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 4892
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "isFingerAirView":Z
    .end local v7    # "isFingerAirViewPreview":Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_3

    .line 4897
    .restart local v6    # "isFingerAirView":Z
    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    .line 4910
    .restart local v7    # "isFingerAirViewPreview":Z
    .restart local v9    # "newHoverPosition":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    .line 4929
    .restart local v2    # "bChanged":Z
    .restart local v3    # "child":Landroid/view/View;
    .restart local v10    # "shouldShowSelector":Z
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    .line 4931
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4933
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsHorizontalListView;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v5

    .line 4935
    .local v5, "foundEllipsizedTextView":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsHorizontalListView;->findSetFingerHovedInAppWidget(Landroid/view/View;)Z

    move-result v8

    .line 4938
    .local v8, "isSetFingerHovedInAppWidget":Z
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_12

    if-eqz v5, :cond_12

    if-eqz v8, :cond_12

    .line 4939
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 4940
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    .line 4947
    :cond_10
    :goto_6
    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_11

    .line 4948
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->refreshDrawableState()V

    .line 4949
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->postInvalidateOnAnimation()V

    .line 4952
    :cond_11
    const/16 v14, 0xa

    if-ne v1, v14, :cond_2

    if-nez v10, :cond_2

    .line 4953
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    .line 4954
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    .line 4955
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4956
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 4957
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->postInvalidateOnAnimation()V

    goto/16 :goto_2

    .line 4942
    :cond_12
    if-nez v10, :cond_10

    .line 4943
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 5178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 5180
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 5181
    .local v1, "pointerId":I
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 5185
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 5186
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 5187
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 5188
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 5189
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 5195
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 5197
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 5185
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 4806
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 4819
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4820
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    .line 4821
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4822
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4823
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 4825
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    .line 4826
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4827
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->recycleVelocityTracker()V

    .line 4830
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 4831
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4832
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4834
    :cond_1
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 4835
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    .line 4836
    return-void

    .line 4808
    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v1, :cond_2

    .line 4809
    new-instance v1, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 4811
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 4806
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 4520
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 4521
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    .line 4523
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 4525
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 4526
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v4, :cond_0

    .line 4527
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 4529
    :cond_0
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 4531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 4532
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 4533
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 4534
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    .line 4577
    :goto_0
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    if-nez v4, :cond_1

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4579
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4581
    :cond_1
    return-void

    .line 4536
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 4537
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 4538
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v0

    .line 4540
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-nez v4, :cond_3

    .line 4541
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 4543
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->createScrollingCache()V

    .line 4544
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4545
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 4546
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->findMotionRow(I)I

    move-result v0

    .line 4547
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->flywheelTouch()V

    .line 4565
    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    .line 4567
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4568
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 4571
    .end local v1    # "v":Landroid/view/View;
    :cond_4
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 4572
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 4573
    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 4574
    const/high16 v4, -0x80000000

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    goto :goto_0

    .line 4548
    :cond_5
    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4552
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4555
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    if-nez v4, :cond_6

    .line 4556
    new-instance v4, Landroid/widget/AbsHorizontalListView$CheckForTap;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/widget/AbsHorizontalListView$CheckForTap;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    .line 4559
    :cond_6
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsHorizontalListView$CheckForTap;->x:F

    .line 4560
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsHorizontalListView$CheckForTap;->y:F

    .line 4561
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Landroid/widget/AbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 4584
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 4585
    .local v1, "pointerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 4586
    const/4 v1, 0x0

    .line 4587
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 4589
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    .line 4590
    .local v2, "x":I
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 4593
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 4596
    :cond_1
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_0

    .line 4625
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 4602
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4, p2}, Landroid/widget/AbsHorizontalListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4607
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 4608
    .local v3, "y":F
    int-to-float v4, v2

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    int-to-float v5, v5

    invoke-virtual {p0, v4, v3, v5}, Landroid/widget/AbsHorizontalListView;->pointInView(FFF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4609
    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    .line 4610
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4611
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 4612
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4614
    :cond_3
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    :goto_1
    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4616
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4617
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    goto :goto_0

    .line 4614
    :cond_4
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    goto :goto_1

    .line 4622
    .end local v0    # "motionView":Landroid/view/View;
    .end local v3    # "y":F
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4, p2}, Landroid/widget/AbsHorizontalListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 4596
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4628
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 4777
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    .line 4779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 4780
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4781
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4785
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 4786
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4787
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->recycleVelocityTracker()V

    .line 4789
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 4790
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    .line 4799
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 4800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StrictMode$Span;->finish()V

    .line 4801
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4803
    :cond_2
    :goto_1
    return-void

    .line 4632
    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 4633
    .local v13, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4634
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_e

    .line 4635
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 4636
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4639
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 4640
    .local v16, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-lez v17, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_9

    const/4 v10, 0x1

    .line 4641
    .local v10, "inList":Z
    :goto_2
    if-eqz v10, :cond_e

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-nez v17, :cond_e

    .line 4642
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 4643
    new-instance v17, Landroid/widget/AbsHorizontalListView$PerformClick;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$PerformClick;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    .line 4646
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    .line 4647
    .local v14, "performClick":Landroid/widget/AbsHorizontalListView$PerformClick;
    iput v13, v14, Landroid/widget/AbsHorizontalListView$PerformClick;->mClickMotionPosition:I

    .line 4648
    invoke-virtual {v14}, Landroid/widget/AbsHorizontalListView$PerformClick;->rememberWindowAttachCount()V

    .line 4650
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 4652
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 4653
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    move-object/from16 v17, v0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4655
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 4656
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 4657
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4658
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->setSelectedPositionInt(I)V

    .line 4659
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 4660
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4661
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 4662
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    .line 4663
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 4664
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 4665
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_6

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 4666
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4668
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4670
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 4671
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4673
    :cond_8
    new-instance v17, Landroid/widget/AbsHorizontalListView$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Landroid/widget/AbsHorizontalListView$3;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Landroid/widget/AbsHorizontalListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4685
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 4640
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Landroid/widget/AbsHorizontalListView$PerformClick;
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 4653
    .restart local v10    # "inList":Z
    .restart local v14    # "performClick":Landroid/widget/AbsHorizontalListView$PerformClick;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 4688
    :cond_b
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4689
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 4690
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 4691
    invoke-virtual {v14}, Landroid/widget/AbsHorizontalListView$PerformClick;->run()V

    goto/16 :goto_1

    .line 4695
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 4696
    invoke-virtual {v14}, Landroid/widget/AbsHorizontalListView$PerformClick;->run()V

    .line 4701
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Landroid/widget/AbsHorizontalListView$PerformClick;
    .end local v16    # "x":F
    :cond_e
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4702
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 4705
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "motionPosition":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v5

    .line 4706
    .local v5, "childCount":I
    if-lez v5, :cond_15

    .line 4707
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 4708
    .local v9, "firstChildLeft":I
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v12

    .line 4709
    .local v12, "lastChildRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 4710
    .local v6, "contentLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 4711
    .local v7, "contentRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_f

    if-lt v9, v6, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v17

    sub-int v17, v17, v7

    move/from16 v0, v17

    if-gt v12, v0, :cond_f

    .line 4714
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4715
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 4717
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4718
    .local v15, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4720
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mVelocityScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v11, v0

    .line 4726
    .local v11, "initialVelocity":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    move/from16 v17, v0

    sub-int v17, v6, v17

    move/from16 v0, v17

    if-eq v9, v0, :cond_13

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    move/from16 v17, v0

    add-int v17, v17, v7

    move/from16 v0, v17

    if-eq v12, v0, :cond_13

    .line 4731
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_12

    .line 4732
    new-instance v17, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 4734
    :cond_12
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 4736
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 4738
    :cond_13
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4739
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 4740
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    .line 4741
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 4743
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 4744
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    goto/16 :goto_0

    .line 4749
    .end local v6    # "contentLeft":I
    .end local v7    # "contentRight":I
    .end local v9    # "firstChildLeft":I
    .end local v11    # "initialVelocity":I
    .end local v12    # "lastChildRight":I
    .end local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_15
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4750
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 4756
    .end local v5    # "childCount":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 4757
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    .line 4760
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_17

    .line 4761
    new-instance v17, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 4763
    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4764
    .restart local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4765
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    .line 4767
    .restart local v11    # "initialVelocity":I
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 4768
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_18

    .line 4769
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 4771
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 4628
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 6892
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6893
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 6894
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->getLocationOnScreen([I)V

    .line 6897
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 6898
    .local v0, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6899
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 6904
    :goto_0
    return-void

    .line 6902
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 2795
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2797
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 5063
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 5064
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5065
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5067
    :cond_0
    return-void
.end method

.method private registerMotionListener()V
    .locals 3

    .prologue
    .line 8144
    const-string v0, "[registerDoubleTapMotionListener]"

    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->log(Ljava/lang/String;)V

    .line 8145
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 8146
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Lcom/samsung/android/motion/MRListener;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/motion/MotionRecognitionManager;->registerListenerEvent(Lcom/samsung/android/motion/MRListener;I)V

    .line 8149
    :cond_0
    return-void
.end method

.method private releaseAllBoosters()V
    .locals 1

    .prologue
    .line 925
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_2

    .line 926
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 929
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 932
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 934
    :cond_2
    return-void
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 8099
    .local p0, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8100
    .local v1, "size":I
    if-lez v1, :cond_2

    .line 8102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 8103
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 8104
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    iget v3, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_0

    .line 8106
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8112
    .end local v0    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    return-object v2

    .line 8102
    .restart local v0    # "i":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8110
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    goto :goto_1

    .line 8112
    .end local v0    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 30
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3755
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    sub-int v29, p1, v3

    .line 3756
    .local v29, "rawDeltaX":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    sub-int v16, v29, v3

    .line 3757
    .local v16, "deltaX":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    sub-int v17, p1, v3

    .line 3759
    .local v17, "incrementalDeltaX":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_e

    .line 3767
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_0

    .line 3769
    const-string v3, "AbsHorizontalListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3772
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_9

    .line 3776
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    const/high16 v5, 0x80000

    and-int/2addr v3, v5

    if-nez v3, :cond_1

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    if-le v3, v5, :cond_1

    .line 3778
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 3779
    .local v28, "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_1

    .line 3780
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3785
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    if-ltz v3, :cond_b

    .line 3786
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v18, v3, v5

    .line 3793
    .local v18, "motionIndex":I
    :goto_1
    const/16 v21, 0x0

    .line 3794
    .local v21, "motionViewPrevLeft":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 3795
    .local v20, "motionView":Landroid/view/View;
    if-eqz v20, :cond_2

    .line 3796
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v21

    .line 3800
    :cond_2
    const/4 v15, 0x0

    .line 3801
    .local v15, "atEdge":Z
    if-eqz v17, :cond_3

    .line 3802
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    move-result v15

    .line 3806
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 3807
    if-eqz v20, :cond_8

    .line 3810
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v22

    .line 3811
    .local v22, "motionViewRealLeft":I
    if-eqz v15, :cond_7

    .line 3814
    move/from16 v0, v17

    neg-int v3, v0

    sub-int v5, v22, v21

    sub-int v4, v3, v5

    .line 3816
    .local v4, "overscroll":I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/widget/AbsHorizontalListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3818
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v3, v5, :cond_4

    .line 3820
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_4

    .line 3821
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3825
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getOverScrollMode()I

    move-result v27

    .line 3826
    .local v27, "overscrollMode":I
    if-eqz v27, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3829
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    .line 3831
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v26, v0

    .line 3833
    .local v26, "oldTouchMode":I
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3834
    if-lez v29, :cond_c

    .line 3836
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    neg-int v5, v4

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v8, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3838
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3839
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3841
    :cond_6
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7, v8}, Landroid/widget/AbsHorizontalListView;->invalidate(IIII)V

    .line 3855
    .end local v4    # "overscroll":I
    .end local v26    # "oldTouchMode":I
    .end local v27    # "overscrollMode":I
    :cond_7
    :goto_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 3857
    .end local v22    # "motionViewRealLeft":I
    :cond_8
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 3931
    .end local v15    # "atEdge":Z
    .end local v18    # "motionIndex":I
    .end local v20    # "motionView":Landroid/view/View;
    .end local v21    # "motionViewPrevLeft":I
    :cond_9
    :goto_3
    return-void

    .end local v17    # "incrementalDeltaX":I
    :cond_a
    move/from16 v17, v16

    .line 3757
    goto/16 :goto_0

    .line 3790
    .restart local v17    # "incrementalDeltaX":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v3

    div-int/lit8 v18, v3, 0x2

    .restart local v18    # "motionIndex":I
    goto/16 :goto_1

    .line 3843
    .restart local v4    # "overscroll":I
    .restart local v15    # "atEdge":Z
    .restart local v20    # "motionView":Landroid/view/View;
    .restart local v21    # "motionViewPrevLeft":I
    .restart local v22    # "motionViewRealLeft":I
    .restart local v26    # "oldTouchMode":I
    .restart local v27    # "overscrollMode":I
    :cond_c
    if-gez v29, :cond_7

    .line 3844
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    move/from16 v0, p2

    int-to-float v7, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3846
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_d

    .line 3847
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3849
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    sub-int/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7, v8}, Landroid/widget/AbsHorizontalListView;->invalidate(IIII)V

    goto :goto_2

    .line 3859
    .end local v4    # "overscroll":I
    .end local v15    # "atEdge":Z
    .end local v18    # "motionIndex":I
    .end local v20    # "motionView":Landroid/view/View;
    .end local v21    # "motionViewPrevLeft":I
    .end local v22    # "motionViewRealLeft":I
    .end local v26    # "oldTouchMode":I
    .end local v27    # "overscrollMode":I
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_9

    .line 3860
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_9

    .line 3861
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    move/from16 v25, v0

    .line 3862
    .local v25, "oldScroll":I
    sub-int v24, v25, v17

    .line 3863
    .local v24, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    move/from16 v0, p1

    if-le v0, v3, :cond_17

    const/16 v23, 0x1

    .line 3865
    .local v23, "newDirection":I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    if-nez v3, :cond_f

    .line 3866
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mDirection:I

    .line 3869
    :cond_f
    move/from16 v0, v17

    neg-int v6, v0

    .line 3870
    .local v6, "overScrollDistance":I
    if-gez v24, :cond_10

    if-gez v25, :cond_11

    :cond_10
    if-lez v24, :cond_18

    if-gtz v25, :cond_18

    .line 3871
    :cond_11
    move/from16 v0, v25

    neg-int v6, v0

    .line 3872
    add-int v17, v17, v6

    .line 3877
    :goto_5
    if-eqz v6, :cond_14

    .line 3878
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Landroid/widget/AbsHorizontalListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3880
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getOverScrollMode()I

    move-result v27

    .line 3881
    .restart local v27    # "overscrollMode":I
    if-eqz v27, :cond_12

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_14

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_14

    .line 3884
    :cond_12
    if-lez v29, :cond_19

    .line 3885
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v8, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v3, v5, v7}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3887
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_13

    .line 3888
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3890
    :cond_13
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7, v8}, Landroid/widget/AbsHorizontalListView;->invalidate(IIII)V

    .line 3906
    .end local v27    # "overscrollMode":I
    :cond_14
    :goto_6
    if-eqz v17, :cond_16

    .line 3908
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    if-eqz v3, :cond_15

    .line 3909
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    .line 3910
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->invalidateParentIfNeeded()V

    .line 3913
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    .line 3915
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3919
    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsHorizontalListView;->findClosestMotionRow(I)I

    move-result v19

    .line 3921
    .local v19, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 3922
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v3, v19, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 3923
    .restart local v20    # "motionView":Landroid/view/View;
    if-eqz v20, :cond_1b

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 3924
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 3925
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 3927
    .end local v19    # "motionPosition":I
    .end local v20    # "motionView":Landroid/view/View;
    :cond_16
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 3928
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mDirection:I

    goto/16 :goto_3

    .line 3863
    .end local v6    # "overScrollDistance":I
    .end local v23    # "newDirection":I
    :cond_17
    const/16 v23, -0x1

    goto/16 :goto_4

    .line 3874
    .restart local v6    # "overScrollDistance":I
    .restart local v23    # "newDirection":I
    :cond_18
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 3893
    .restart local v27    # "overscrollMode":I
    :cond_19
    if-gez v29, :cond_14

    .line 3894
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v7

    div-int v7, p2, v7

    int-to-float v7, v7

    invoke-virtual {v3, v5, v7}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3896
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 3897
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3899
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    sub-int/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7, v8}, Landroid/widget/AbsHorizontalListView;->invalidate(IIII)V

    goto/16 :goto_6

    .line 3923
    .end local v27    # "overscrollMode":I
    .restart local v19    # "motionPosition":I
    .restart local v20    # "motionView":Landroid/view/View;
    :cond_1b
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1627
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setAlwaysShow(Z)V

    .line 1630
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1577
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_2

    .line 1578
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setEnabled(Z)V

    .line 1584
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resolvePadding()V

    .line 1586
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_1

    .line 1587
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->updateLayout()V

    .line 1589
    :cond_1
    return-void

    .line 1579
    :cond_2
    if-eqz p1, :cond_0

    .line 1580
    new-instance v0, Landroid/widget/HorizontalFastScroller;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalFastScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    .line 1581
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalFastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 6883
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 6884
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    .line 6885
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->positionPopup()V

    .line 6887
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->checkFocus()V

    .line 6889
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3710
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    sub-int v1, p1, v7

    .line 3711
    .local v1, "deltaX":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3712
    .local v2, "distance":I
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    if-eqz v7, :cond_2

    move v5, v9

    .line 3713
    .local v5, "overscroll":Z
    :goto_0
    if-nez v5, :cond_0

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    .line 3714
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->createScrollingCache()V

    .line 3715
    if-eqz v5, :cond_3

    .line 3716
    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3717
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 3722
    :goto_1
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3723
    invoke-virtual {p0, v8}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    .line 3724
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3725
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 3726
    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3729
    :cond_1
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    if-le v7, v9, :cond_5

    .line 3735
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 3736
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 3737
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3736
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "motionView":Landroid/view/View;
    .end local v5    # "overscroll":Z
    :cond_2
    move v5, v8

    .line 3712
    goto :goto_0

    .line 3719
    .restart local v5    # "overscroll":Z
    :cond_3
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3720
    if-lez v1, :cond_4

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    goto :goto_1

    :cond_4
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    .line 3740
    .restart local v4    # "motionView":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 3743
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 3744
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_6

    .line 3745
    invoke-interface {v6, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3747
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsHorizontalListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    move v7, v9

    .line 3751
    .end local v4    # "motionView":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewParent;
    :goto_4
    return v7

    :cond_7
    move v7, v8

    goto :goto_4
.end method

.method private unregisterMotionListener()V
    .locals 2

    .prologue
    .line 8155
    const-string v0, "[unregisterDoubleTapMotionListener]"

    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->log(Ljava/lang/String;)V

    .line 8156
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 8157
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Lcom/samsung/android/motion/MRListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/motion/MotionRecognitionManager;->unregisterListener(Lcom/samsung/android/motion/MRListener;)V

    .line 8159
    :cond_0
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1425
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 1426
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v1

    .line 1427
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1429
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1430
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1431
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1433
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1434
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1429
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1427
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1435
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_2
    if-eqz v5, :cond_0

    .line 1436
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1439
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 1922
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1924
    return-void
.end method


# virtual methods
.method public addToPressItemListArray(II)V
    .locals 7
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    .line 8304
    const/4 v2, 0x0

    .line 8305
    .local v2, "isSameValueExist":Z
    const/4 v0, 0x0

    .line 8307
    .local v0, "checkCount":I
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    if-nez v4, :cond_0

    .line 8387
    :goto_0
    return-void

    .line 8311
    :cond_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_5

    .line 8312
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v1, v4, :cond_3

    .line 8313
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_2

    .line 8314
    const/4 v2, 0x1

    .line 8316
    move v3, v1

    .local v3, "j":I
    :goto_2
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 8317
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    add-int/lit8 v6, v3, 0x1

    aget v5, v5, v6

    aput v5, v4, v3

    .line 8316
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 8319
    :cond_1
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 8312
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8324
    :cond_3
    if-nez v2, :cond_4

    .line 8325
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8326
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 8385
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    goto :goto_0

    .line 8330
    .end local v1    # "i":I
    :cond_5
    if-ge p1, p2, :cond_9

    .line 8331
    sub-int v4, p2, p1

    add-int/lit8 v0, v4, 0x1

    .line 8333
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_4

    .line 8334
    const/4 v2, 0x0

    .line 8336
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_5
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v3, v4, :cond_7

    .line 8337
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v4, v4, v3

    if-ne v4, p1, :cond_6

    .line 8338
    const/4 v2, 0x1

    .line 8336
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 8343
    :cond_7
    if-nez v2, :cond_8

    .line 8344
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8345
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 8347
    :cond_8
    add-int/lit8 p1, p1, 0x1

    .line 8333
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 8350
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_9
    if-le p1, p2, :cond_d

    .line 8351
    sub-int v4, p1, p2

    add-int/lit8 v0, v4, 0x1

    .line 8352
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v0, :cond_4

    .line 8353
    const/4 v2, 0x0

    .line 8355
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_7
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v3, v4, :cond_b

    .line 8356
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v4, v4, v3

    if-ne v4, p1, :cond_a

    .line 8357
    const/4 v2, 0x1

    .line 8355
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 8362
    :cond_b
    if-nez v2, :cond_c

    .line 8363
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8364
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 8367
    :cond_c
    add-int/lit8 p1, p1, -0x1

    .line 8352
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 8370
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v1, v4, :cond_f

    .line 8371
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_e

    .line 8372
    const/4 v2, 0x1

    .line 8370
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8377
    :cond_f
    if-nez v2, :cond_4

    .line 8378
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8379
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    goto :goto_3
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5204
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v2

    .line 5205
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 5206
    .local v3, "firstPosition":I
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 5208
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 5219
    :cond_0
    return-void

    .line 5212
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 5213
    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5214
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5215
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5217
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 5212
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 7241
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 7200
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6228
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 6229
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 6241
    :cond_0
    :goto_0
    return v6

    .line 6233
    :cond_1
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 6234
    .local v1, "firstPosition":I
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 6235
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_3

    .line 6236
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 6237
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 6238
    .local v4, "lastPosition":I
    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-lt v4, v8, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_0

    :cond_2
    move v6, v7

    goto :goto_0

    .line 6240
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_3
    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 6241
    .local v2, "firstTop":I
    if-gtz v1, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_0

    :cond_4
    move v6, v7

    goto :goto_0
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7113
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

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
    .line 7269
    instance-of v0, p1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1265
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1266
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1268
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 1269
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 7162
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 7163
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7164
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    .line 7165
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7166
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    .line 7169
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2301
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2302
    .local v0, "count":I
    if-lez v0, :cond_3

    .line 2303
    iget-boolean v7, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 2304
    mul-int/lit8 v1, v0, 0x64

    .line 2306
    .local v1, "extent":I
    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2307
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2308
    .local v2, "left":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2309
    .local v5, "width":I
    if-lez v5, :cond_0

    .line 2310
    mul-int/lit8 v6, v2, 0x64

    div-int/2addr v6, v5

    add-int/2addr v1, v6

    .line 2313
    :cond_0
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2314
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2315
    .local v3, "right":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2316
    if-lez v5, :cond_1

    .line 2317
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v6

    sub-int v6, v3, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v5

    sub-int/2addr v1, v6

    .line 2325
    .end local v1    # "extent":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "width":I
    :cond_1
    :goto_0
    return v1

    .line 2322
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v6

    .line 2325
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2330
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 2331
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2332
    .local v0, "childCount":I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 2333
    iget-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 2334
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2335
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2336
    .local v4, "left":I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2337
    .local v6, "width":I
    if-lez v6, :cond_0

    .line 2338
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v6

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2354
    .end local v4    # "left":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "width":I
    :cond_0
    :goto_0
    return v7

    .line 2343
    :cond_1
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    .line 2344
    .local v1, "count":I
    if-nez v2, :cond_2

    .line 2345
    const/4 v3, 0x0

    .line 2351
    .local v3, "index":I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 2346
    .end local v3    # "index":I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 2347
    move v3, v1

    .restart local v3    # "index":I
    goto :goto_1

    .line 2349
    .end local v3    # "index":I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v3, v2, v7

    .restart local v3    # "index":I
    goto :goto_1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 2360
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2361
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2362
    .local v0, "result":I
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    if-eqz v1, :cond_0

    .line 2364
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2369
    :cond_0
    :goto_0
    return v0

    .line 2367
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 6657
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 6659
    const/4 v2, 0x0

    .line 6660
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 6661
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 6662
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 6664
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 6665
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_3

    .line 6667
    const/4 v3, 0x0

    add-int/lit8 v4, v5, -0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 6668
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 6669
    .local v10, "end":I
    const/4 v11, 0x0

    .line 6670
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    .line 6671
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 6672
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_2

    .line 6673
    const/4 v11, 0x1

    .line 6674
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6675
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 6680
    .end local v14    # "searchId":J
    :cond_0
    if-nez v11, :cond_1

    .line 6681
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 6682
    add-int/lit8 v9, v9, -0x1

    .line 6683
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 6684
    const/4 v2, 0x1

    .line 6685
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    .line 6686
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 6660
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 6670
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 6691
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 6695
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    .line 6696
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 6698
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3276
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 7414
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    .line 7415
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 15
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 4249
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 4251
    .local v0, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 4252
    .local v3, "cd":Landroid/content/ClipDescription;
    if-eqz v3, :cond_0

    const-string v12, "cropUri"

    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 4253
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    .line 4409
    :goto_0
    return v12

    .line 4257
    :cond_1
    const/4 v12, 0x1

    if-ne v0, v12, :cond_4

    .line 4258
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-gtz v12, :cond_2

    .line 4259
    const/4 v12, 0x1

    const/high16 v13, 0x41c80000    # 25.0f

    iget-object v14, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    .line 4263
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    if-nez v12, :cond_3

    :cond_3
    const/4 v12, 0x1

    goto :goto_0

    .line 4266
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 4267
    .local v10, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 4268
    .local v11, "y":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v5

    .line 4269
    .local v5, "childCount":I
    const/4 v6, 0x0

    .line 4270
    .local v6, "contentRight":I
    const/4 v8, 0x0

    .line 4271
    .local v8, "lastChildRight":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v7

    .line 4275
    .local v7, "count":I
    if-eqz v5, :cond_5

    .line 4276
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v6

    .line 4280
    :cond_5
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v12, v7

    iget v13, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-ge v12, v13, :cond_f

    const/4 v2, 0x1

    .line 4282
    .local v2, "canScrollRight":Z
    :goto_1
    if-nez v2, :cond_7

    if-lez v7, :cond_7

    .line 4283
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {p0, v12}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4284
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v12

    iget v13, p0, Landroid/widget/AbsHorizontalListView;->mRight:I

    iget-object v14, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    if-gt v12, v13, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v13

    iget-object v14, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_10

    :cond_6
    const/4 v2, 0x1

    .line 4289
    .end local v4    # "child":Landroid/view/View;
    :cond_7
    :goto_2
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    if-lez v12, :cond_11

    const/4 v1, 0x1

    .line 4291
    .local v1, "canScrollLeft":Z
    :goto_3
    if-nez v1, :cond_8

    .line 4292
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_8

    .line 4293
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4294
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v12

    iget-object v13, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    if-ge v12, v13, :cond_12

    const/4 v1, 0x1

    .line 4299
    .end local v4    # "child":Landroid/view/View;
    :cond_8
    :goto_4
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-le v10, v12, :cond_9

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v10, v12, :cond_a

    :cond_9
    if-lez v11, :cond_a

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getBottom()I

    move-result v12

    if-gt v11, v12, :cond_a

    if-nez v1, :cond_13

    if-nez v2, :cond_13

    .line 4302
    :cond_a
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    if-eqz v12, :cond_b

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 4303
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4306
    :cond_b
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    const/4 v13, 0x1

    if-eq v12, v13, :cond_c

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    if-eqz v12, :cond_d

    .line 4307
    :cond_c
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 4310
    :cond_d
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4311
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4312
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4315
    const/4 v12, 0x2

    if-ne v0, v12, :cond_e

    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    if-eqz v12, :cond_e

    .line 4316
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4320
    :cond_e
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    goto/16 :goto_0

    .line 4280
    .end local v1    # "canScrollLeft":Z
    .end local v2    # "canScrollRight":Z
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4284
    .restart local v2    # "canScrollRight":Z
    .restart local v4    # "child":Landroid/view/View;
    :cond_10
    const/4 v2, 0x0

    goto :goto_2

    .line 4289
    .end local v4    # "child":Landroid/view/View;
    :cond_11
    const/4 v1, 0x0

    goto :goto_3

    .line 4294
    .restart local v1    # "canScrollLeft":Z
    .restart local v4    # "child":Landroid/view/View;
    :cond_12
    const/4 v1, 0x0

    goto :goto_4

    .line 4324
    .end local v4    # "child":Landroid/view/View;
    :cond_13
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    if-nez v12, :cond_14

    .line 4325
    new-instance v12, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    iput-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    .line 4327
    :cond_14
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v12, :cond_15

    .line 4328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4330
    :cond_15
    packed-switch v0, :pswitch_data_0

    .line 4409
    :cond_16
    :goto_5
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    goto/16 :goto_0

    .line 4332
    :pswitch_0
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4333
    if-ltz v10, :cond_17

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-gt v10, v12, :cond_17

    .line 4335
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4336
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4338
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4339
    .local v9, "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4340
    const/4 v12, 0x2

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4341
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 4343
    .end local v9    # "msg":Landroid/os/Message;
    :cond_17
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v10, v12, :cond_16

    if-gt v10, v6, :cond_16

    .line 4345
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4346
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4348
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4349
    .restart local v9    # "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4350
    const/4 v12, 0x1

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4351
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 4357
    .end local v9    # "msg":Landroid/os/Message;
    :pswitch_1
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v12, :cond_18

    .line 4358
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4361
    :cond_18
    if-ltz v10, :cond_19

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-gt v10, v12, :cond_19

    .line 4363
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4364
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4366
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4367
    .restart local v9    # "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4368
    const/4 v12, 0x2

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4369
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 4371
    .end local v9    # "msg":Landroid/os/Message;
    :cond_19
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v10, v12, :cond_16

    if-gt v10, v6, :cond_16

    .line 4373
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4374
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4376
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4377
    .restart local v9    # "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4378
    const/4 v12, 0x1

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4379
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 4386
    .end local v9    # "msg":Landroid/os/Message;
    :pswitch_2
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    if-eqz v12, :cond_1a

    .line 4387
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4394
    :cond_1a
    :pswitch_3
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 4395
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4397
    :cond_1b
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4399
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4400
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4401
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 4402
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    goto/16 :goto_5

    .line 4330
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2801
    const/4 v2, 0x0

    .line 2802
    .local v2, "saveCount":I
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 2803
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2804
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2805
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    .line 2806
    .local v3, "scrollX":I
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mScrollY:I

    .line 2807
    .local v4, "scrollY":I
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2810
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    .line 2813
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 2814
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_1

    .line 2815
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2818
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2820
    if-eqz v1, :cond_2

    .line 2821
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2824
    :cond_2
    if-eqz v0, :cond_3

    .line 2825
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2826
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    .line 2828
    :cond_3
    return-void

    .line 2802
    .end local v0    # "clipToPadding":Z
    .end local v1    # "drawSelectorOnTop":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4025
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "pen_hovering"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v12, 0x1

    .line 4026
    .local v12, "isHoveringOn":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "pen_hovering_list_scroll"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/4 v11, 0x1

    .line 4029
    .local v11, "isHoverListScrollOn":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 4030
    new-instance v18, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    .line 4032
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsHorizontalListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 4035
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    if-eqz v12, :cond_2

    if-eqz v11, :cond_2

    :cond_1
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 4038
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    .line 4239
    :goto_2
    return v18

    .line 4025
    .end local v11    # "isHoverListScrollOn":Z
    .end local v12    # "isHoveringOn":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 4026
    .restart local v12    # "isHoveringOn":Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 4041
    .restart local v11    # "isHoverListScrollOn":Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 4042
    .local v16, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 4043
    .local v17, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v7

    .line 4044
    .local v7, "childCount":I
    const/4 v8, 0x0

    .line 4045
    .local v8, "contentRight":I
    const/4 v14, 0x0

    .line 4046
    .local v14, "lastChildRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v9

    .line 4050
    .local v9, "count":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v18, v0

    if-lez v18, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v18, v0

    if-gtz v18, :cond_7

    .line 4051
    :cond_6
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth_DP:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    .line 4059
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth_DP:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    .line 4068
    :cond_7
    if-eqz v7, :cond_8

    .line 4069
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v8

    .line 4073
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_13

    const/4 v5, 0x1

    .line 4075
    .local v5, "canScrollRight":Z
    :goto_3
    if-nez v5, :cond_a

    if-lez v9, :cond_a

    .line 4076
    add-int/lit8 v18, v9, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4077
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mRight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_14

    :cond_9
    const/4 v5, 0x1

    .line 4082
    .end local v6    # "child":Landroid/view/View;
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v18, v0

    if-lez v18, :cond_15

    const/4 v4, 0x1

    .line 4084
    .local v4, "canScrollLeft":Z
    :goto_5
    if-nez v4, :cond_b

    .line 4085
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v18

    if-lez v18, :cond_b

    .line 4086
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4087
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_16

    const/4 v4, 0x1

    .line 4091
    .end local v6    # "child":Landroid/view/View;
    :cond_b
    :goto_6
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    const/4 v13, 0x1

    .line 4093
    .local v13, "isPossibleTooltype":Z
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    :cond_c
    if-lez v17, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getBottom()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_f

    if-nez v4, :cond_d

    if-eqz v5, :cond_f

    :cond_d
    if-eqz v13, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    :cond_e
    if-eqz v13, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->isLockScreenMode()Z

    move-result v18

    if-eqz v18, :cond_18

    .line 4096
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 4097
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4099
    const/16 v18, 0x1

    const/16 v19, -0x1

    :try_start_0
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4105
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 4106
    :cond_11
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 4108
    const/16 v18, 0x1

    const/16 v19, -0x1

    :try_start_1
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4114
    :cond_12
    :goto_9
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4115
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4116
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4118
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    goto/16 :goto_2

    .line 4073
    .end local v4    # "canScrollLeft":Z
    .end local v5    # "canScrollRight":Z
    .end local v13    # "isPossibleTooltype":Z
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 4077
    .restart local v5    # "canScrollRight":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 4082
    .end local v6    # "child":Landroid/view/View;
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 4087
    .restart local v4    # "canScrollLeft":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 4091
    .end local v6    # "child":Landroid/view/View;
    :cond_17
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 4100
    .restart local v13    # "isPossibleTooltype":Z
    :catch_0
    move-exception v10

    .line 4101
    .local v10, "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4109
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 4110
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 4121
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    move/from16 v18, v0

    if-nez v18, :cond_19

    .line 4122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19

    .line 4125
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsHorizontalListView;I)V

    .line 4130
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 4239
    :cond_1a
    :goto_a
    :pswitch_0
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 4132
    :pswitch_1
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4134
    if-ltz v16, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_1b

    .line 4136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_1a

    .line 4137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4139
    const/16 v18, 0x11

    const/16 v19, -0x1

    :try_start_2
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4143
    :goto_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4144
    .local v15, "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4145
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    .line 4140
    .end local v15    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v10

    .line 4141
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SCROLL_LEFT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 4148
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_1a

    move/from16 v0, v16

    if-gt v0, v8, :cond_1a

    .line 4150
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_1a

    .line 4151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4153
    const/16 v18, 0xd

    const/16 v19, -0x1

    :try_start_3
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4157
    :goto_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4158
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4159
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 4154
    .end local v15    # "msg":Landroid/os/Message;
    :catch_3
    move-exception v10

    .line 4155
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SCROLL_RIGHT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 4167
    .end local v10    # "e":Landroid/os/RemoteException;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    move/from16 v18, v0

    if-nez v18, :cond_1c

    .line 4168
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4169
    const/16 v18, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4170
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    goto/16 :goto_2

    .line 4173
    :cond_1c
    if-ltz v16, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_1f

    .line 4175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_1a

    .line 4176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4179
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1e

    .line 4181
    :cond_1d
    const/16 v18, 0x11

    const/16 v19, -0x1

    :try_start_4
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4187
    :cond_1e
    :goto_d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4188
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4189
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4190
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 4182
    .end local v15    # "msg":Landroid/os/Message;
    :catch_4
    move-exception v10

    .line 4183
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SCROLL_LEFT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 4192
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_1a

    move/from16 v0, v16

    if-gt v0, v8, :cond_1a

    .line 4194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_1a

    .line 4195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4198
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_21

    .line 4200
    :cond_20
    const/16 v18, 0xd

    const/16 v19, -0x1

    :try_start_5
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 4206
    :cond_21
    :goto_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4207
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4208
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4209
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 4201
    .end local v15    # "msg":Landroid/os/Message;
    :catch_5
    move-exception v10

    .line 4202
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SCROLL_RIGHT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4215
    .end local v10    # "e":Landroid/os/RemoteException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_22

    .line 4216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4220
    :cond_22
    const/16 v18, 0x1

    const/16 v19, -0x1

    :try_start_6
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 4225
    :goto_f
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4226
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4227
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 4228
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_23

    .line 4231
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsHorizontalListView;I)V

    .line 4234
    :cond_23
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    goto/16 :goto_2

    .line 4221
    :catch_6
    move-exception v10

    .line 4222
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v18, "AbsHorizontalListView"

    const-string v19, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 4130
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 3604
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 4998
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 4999
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_3

    .line 5000
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    .line 5001
    .local v5, "scrollX":I
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_1

    .line 5002
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 5003
    .local v4, "restoreCount":I
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingTop:I

    add-int v6, v8, v9

    .line 5004
    .local v6, "topPadding":I
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingBottom:I

    add-int v0, v8, v9

    .line 5005
    .local v0, "bottomPadding":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    sub-int v3, v8, v0

    .line 5007
    .local v3, "height":I
    neg-int v8, v3

    add-int v2, v8, v6

    .line 5008
    .local v2, "edgeY":I
    const/4 v8, 0x0

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5009
    .local v1, "edgeX":I
    const/high16 v8, 0x43870000    # 270.0f

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5010
    int-to-float v8, v2

    int-to-float v9, v1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5011
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v9

    invoke-virtual {v8, v3, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5012
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5016
    :cond_0
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5018
    .end local v0    # "bottomPadding":I
    .end local v1    # "edgeX":I
    .end local v2    # "edgeY":I
    .end local v3    # "height":I
    .end local v4    # "restoreCount":I
    .end local v6    # "topPadding":I
    :cond_1
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 5019
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 5020
    .restart local v4    # "restoreCount":I
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingTop:I

    add-int v6, v8, v9

    .line 5021
    .restart local v6    # "topPadding":I
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingBottom:I

    add-int v0, v8, v9

    .line 5022
    .restart local v0    # "bottomPadding":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    sub-int v3, v8, v0

    .line 5023
    .restart local v3    # "height":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v7

    .line 5025
    .local v7, "width":I
    neg-int v2, v6

    .line 5026
    .restart local v2    # "edgeY":I
    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mLastPositionDistanceGuess:I

    add-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    neg-int v1, v8

    .line 5027
    .restart local v1    # "edgeX":I
    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5028
    int-to-float v8, v2

    int-to-float v9, v1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5029
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v3, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5030
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5035
    :cond_2
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5038
    .end local v0    # "bottomPadding":I
    .end local v1    # "edgeX":I
    .end local v2    # "edgeY":I
    .end local v3    # "height":I
    .end local v4    # "restoreCount":I
    .end local v5    # "scrollX":I
    .end local v6    # "topPadding":I
    .end local v7    # "width":I
    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3051
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3052
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 3053
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 8175
    :try_start_0
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterMotionListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8177
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 8179
    return-void

    .line 8177
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    const/4 v2, -0x1

    .line 6510
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 6511
    .local v0, "childCount":I
    if-nez v0, :cond_1

    move v1, v2

    .line 6516
    :cond_0
    :goto_0
    return v1

    .line 6515
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->findMotionRow(I)I

    move-result v1

    .line 6516
    .local v1, "motionRow":I
    if-ne v1, v2, :cond_0

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .prologue
    .line 1833
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1843
    .end local p0    # "this":Landroid/widget/AbsHorizontalListView;
    :goto_0
    return-object p0

    .line 1840
    .restart local p0    # "this":Landroid/widget/AbsHorizontalListView;
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 1841
    const/4 p0, 0x0

    goto :goto_0

    .line 1843
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 7253
    new-instance v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsHorizontalListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 7259
    new-instance v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsHorizontalListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsHorizontalListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 7264
    new-instance v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsHorizontalListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 2852
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 7330
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1179
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 1243
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1244
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1255
    :cond_1
    return-object v3

    .line 1247
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1248
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1249
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1251
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1252
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1211
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1212
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1215
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1228
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1231
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1447
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 3456
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1909
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1910
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1913
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1914
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1919
    :goto_0
    return-void

    .line 1917
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 6453
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 6443
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalScrollbarHeight()I
    .locals 2

    .prologue
    .line 1655
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v1}, Landroid/widget/HorizontalFastScroller;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1658
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 2374
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2375
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 2376
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 2385
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 2379
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 2380
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2383
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2384
    .local v3, "left":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2385
    .local v2, "fadeLength":F
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 2837
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2548
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2560
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2572
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2536
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2391
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2392
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    .line 2393
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 2403
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 2396
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 2397
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2400
    :cond_2
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2401
    .local v3, "right":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v4

    .line 2402
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 2403
    .local v2, "fadeLength":F
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le v3, v5, :cond_0

    sub-int v5, v3, v4

    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 2847
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2520
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2521
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2523
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2978
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 7298
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2235
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2236
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2238
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 2842
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 964
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 7293
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 6702
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    .line 6703
    .local v1, "count":I
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mLastHandledItemCount:I

    .line 6704
    .local v3, "lastHandledItemCount":I
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsHorizontalListView;->mLastHandledItemCount:I

    .line 6707
    iget-boolean v10, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    if-ne v10, v9, :cond_0

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    iget v11, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    if-eq v10, v11, :cond_0

    .line 6709
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    new-array v10, v10, [I

    iput-object v10, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    .line 6710
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    .line 6711
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    .line 6715
    :cond_0
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 6716
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->confirmCheckedPositionsById()V

    .line 6720
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsHorizontalListView$RecycleBin;->clearTransientStateViews()V

    .line 6722
    if-lez v1, :cond_f

    .line 6727
    iget-boolean v10, p0, Landroid/widget/AbsHorizontalListView;->mNeedSync:Z

    if-eqz v10, :cond_8

    .line 6729
    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mNeedSync:Z

    .line 6730
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 6732
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 6733
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 6849
    :cond_2
    :goto_0
    return-void

    .line 6735
    :cond_3
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_7

    .line 6736
    iget-boolean v10, p0, Landroid/widget/AbsHorizontalListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_4

    .line 6737
    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mForceTranscriptScroll:Z

    .line 6738
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    goto :goto_0

    .line 6741
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 6742
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getPaddingRight()I

    move-result v11

    sub-int v5, v10, v11

    .line 6743
    .local v5, "listRight":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6744
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 6745
    .local v4, "lastRight":I
    :goto_1
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v3, :cond_6

    if-gt v4, v5, :cond_6

    .line 6747
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    goto :goto_0

    .end local v4    # "lastRight":I
    :cond_5
    move v4, v5

    .line 6744
    goto :goto_1

    .line 6752
    .restart local v4    # "lastRight":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->awakenScrollBars()Z

    .line 6755
    .end local v0    # "childCount":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v4    # "lastRight":I
    .end local v5    # "listRight":I
    :cond_7
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 6803
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_e

    .line 6805
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getSelectedItemPosition()I

    move-result v6

    .line 6808
    .local v6, "newPos":I
    if-lt v6, v1, :cond_9

    .line 6809
    add-int/lit8 v6, v1, -0x1

    .line 6811
    :cond_9
    if-gez v6, :cond_a

    .line 6812
    const/4 v6, 0x0

    .line 6816
    :cond_a
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6818
    .local v7, "selectablePos":I
    if-ltz v7, :cond_d

    .line 6819
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 6757
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 6762
    iput v14, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 6763
    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mSyncPosition:I

    goto :goto_0

    .line 6769
    :cond_b
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->findSyncPosition()I

    move-result v6

    .line 6770
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_8

    .line 6772
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6773
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_8

    .line 6775
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mSyncPosition:I

    .line 6777
    iget-wide v8, p0, Landroid/widget/AbsHorizontalListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 6780
    iput v14, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 6788
    :goto_2
    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 6784
    :cond_c
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    goto :goto_2

    .line 6796
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    iput v14, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 6797
    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mSyncPosition:I

    goto/16 :goto_0

    .line 6823
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_d
    invoke-virtual {p0, v6, v12}, Landroid/widget/AbsHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6824
    if-ltz v7, :cond_f

    .line 6825
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 6832
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_e
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    if-gez v10, :cond_2

    .line 6840
    :cond_f
    iget-boolean v10, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    if-eqz v10, :cond_10

    :goto_3
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 6841
    iput v13, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    .line 6842
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsHorizontalListView;->mSelectedRowId:J

    .line 6843
    iput v13, p0, Landroid/widget/AbsHorizontalListView;->mNextSelectedPosition:I

    .line 6844
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsHorizontalListView;->mNextSelectedRowId:J

    .line 6845
    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mNeedSync:Z

    .line 6846
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 6847
    iput v13, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 6848
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_10
    move v8, v9

    .line 6840
    goto :goto_3

    .line 6755
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 7175
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 6467
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 6468
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 6469
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 6471
    :cond_0
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 6472
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 6474
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->setSelectedPositionInt(I)V

    .line 6475
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 6476
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    .line 6478
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 6523
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    .line 6524
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->rememberSyncState()V

    .line 6525
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    .line 6526
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 6527
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1756
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1757
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalFastScroller;->onScroll(III)V

    .line 1759
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1760
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScroll(Landroid/widget/AbsHorizontalListView;III)V

    .line 1762
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/AbsHorizontalListView;->onScrollChanged(IIII)V

    .line 1763
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1646
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-nez v2, :cond_2

    .line 1647
    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollAlwaysVisible:Z

    if-eqz v2, :cond_1

    .line 1649
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1647
    goto :goto_0

    .line 1649
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v2}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v2}, Landroid/widget/HorizontalFastScroller;->isAlwaysShowEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1669
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-nez v0, :cond_0

    .line 1670
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    .line 1672
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 6963
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1194
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLockScreenMode()Z
    .locals 7

    .prologue
    .line 3971
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 3972
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 3973
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 3975
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 3976
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 3987
    .local v0, "isCoverOpen":Z
    const/4 v1, 0x0

    .line 3988
    .local v1, "isLockScreenAndCoverOpen":Z
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3990
    :goto_0
    return v1

    .line 3988
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMultiFocusEnabled()Z
    .locals 1

    .prologue
    .line 8300
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method public isMultiWindows()Z
    .locals 2

    .prologue
    .line 1727
    const-string v0, "1"

    const-string/jumbo v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 2832
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1857
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1739
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1934
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1904
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isTwHorizontalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1698
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method protected isTwShowingScrollbar()Z
    .locals 1

    .prologue
    .line 6066
    invoke-super {p0}, Landroid/widget/AdapterView;->isTwShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTwUsingAdapterView()Z
    .locals 1

    .prologue
    .line 6077
    const/4 v0, 0x1

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 3096
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 3097
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3098
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2986
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3021
    :cond_0
    :goto_0
    return-void

    .line 2990
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2991
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2992
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2995
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2997
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 2998
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2999
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3001
    :cond_3
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    .line 3003
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isLongClickable()Z

    move-result v1

    .line 3004
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3005
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 3006
    if-eqz v1, :cond_6

    .line 3007
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3013
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 3014
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 3015
    new-instance v5, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    .line 3017
    :cond_5
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3018
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3010
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2481
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    const-wide/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2588
    const-string/jumbo v4, "obtainView"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2590
    aput-boolean v5, p2, v5

    .line 2593
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v4, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v2

    .line 2594
    .local v2, "scrapView":Landroid/view/View;
    if-nez v2, :cond_0

    .line 2595
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v4, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v2

    .line 2599
    :cond_0
    if-eqz v2, :cond_8

    .line 2600
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2602
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2603
    invoke-virtual {v0, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2606
    :cond_1
    if-eq v0, v2, :cond_6

    .line 2607
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v4, v2, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2608
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    if-eqz v4, :cond_2

    .line 2609
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2634
    :cond_2
    :goto_0
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_3

    .line 2635
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2637
    .local v3, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_a

    .line 2638
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 2644
    .local v1, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :goto_1
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/widget/AbsHorizontalListView$LayoutParams;->itemId:J

    .line 2645
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2648
    .end local v1    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v3    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2649
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    if-nez v4, :cond_4

    .line 2650
    new-instance v4, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    invoke-direct {v4, p0}, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    .line 2652
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v4

    if-nez v4, :cond_5

    .line 2653
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2657
    :cond_5
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2659
    return-object v0

    .line 2612
    :cond_6
    aput-boolean v6, p2, v5

    .line 2616
    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2617
    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2620
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_0

    .line 2623
    .end local v0    # "child":Landroid/view/View;
    :cond_8
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2625
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_9

    .line 2626
    invoke-virtual {v0, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2629
    :cond_9
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    if-eqz v4, :cond_2

    .line 2630
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0

    .line 2639
    .restart local v3    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_a
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2640
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    goto :goto_1

    .end local v1    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_b
    move-object v1, v3

    .line 2642
    check-cast v1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 3102
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 3104
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3105
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3107
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_0

    .line 3108
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3111
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_1

    .line 3112
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3115
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-nez v1, :cond_2

    .line 3116
    new-instance v1, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    .line 3117
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3120
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    .line 3121
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mOldItemCount:I

    .line 3122
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    .line 3125
    :cond_2
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 3281
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 3282
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    if-eqz v0, :cond_0

    .line 3283
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3285
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    if-eqz v0, :cond_1

    .line 3286
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Landroid/widget/AbsHorizontalListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3288
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 3289
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3291
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 3292
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3294
    :cond_3
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 3058
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 3060
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3086
    :cond_0
    :goto_0
    return-object v3

    .line 3066
    :cond_1
    sget-object v4, Landroid/widget/AbsHorizontalListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 3071
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3072
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3073
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 3074
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3075
    move v0, v2

    .line 3081
    :cond_2
    if-ltz v0, :cond_0

    .line 3082
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0

    .line 3073
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v1, 0x0

    .line 7058
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7062
    invoke-direct {p0, v1}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    .line 7063
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 7064
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 7065
    new-instance v0, Landroid/widget/AbsHorizontalListView$5;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/AbsHorizontalListView$5;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 7099
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7101
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7102
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 7104
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 3129
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3130
    const-string v1, "AbsHorizontalListView"

    const-string/jumbo v2, "onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    .line 3136
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->clear()V

    .line 3138
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3139
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3140
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3141
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3142
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3145
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 3146
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3147
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    .line 3150
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 3151
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3152
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3155
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3156
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3157
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3160
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3161
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3164
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 3165
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 3168
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3169
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3172
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    if-eqz v1, :cond_7

    .line 3173
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3176
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3177
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3178
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3181
    :cond_8
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    if-eq v1, v4, :cond_9

    .line 3182
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3185
    :cond_9
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_a

    .line 3186
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3189
    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->releaseAllBoosters()V

    .line 3190
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 6853
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 6854
    sparse-switch p1, :sswitch_data_0

    .line 6866
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mPopupHidden:Z

    .line 6867
    return-void

    .line 6856
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6857
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    goto :goto_0

    .line 6861
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6862
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->showPopup()V

    goto :goto_0

    .line 6866
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 6854
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 7245
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 7246
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 7247
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelection()Z

    .line 7249
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2243
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2244
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2245
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2248
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    .line 2249
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mOldItemCount:I

    .line 2250
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    .line 2252
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelection()Z

    .line 2255
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-ltz v0, :cond_2

    .line 2262
    :cond_2
    if-nez p1, :cond_3

    .line 2263
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->releaseAllBoosters()V

    .line 2265
    :cond_3
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4978
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 4979
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4993
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 4981
    :pswitch_0
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 4982
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 4983
    .local v1, "hscroll":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 4984
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getHorizontalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 4985
    .local v0, "delta":I
    invoke-virtual {p0, v0, v0}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4986
    const/4 v2, 0x1

    goto :goto_0

    .line 4979
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 7180
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7182
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 7183
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->showPopup()V

    .line 7192
    :cond_0
    :goto_0
    return-void

    .line 7187
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7188
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1786
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1787
    const-class v0, Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1788
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 1792
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1793
    const-class v0, Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1794
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1795
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 1796
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1797
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1799
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1800
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1801
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1804
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 2743
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2744
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_1

    .line 2770
    :cond_0
    :goto_0
    return-void

    .line 2749
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2750
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_0

    .line 2754
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 2755
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2756
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2761
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2762
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2763
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2766
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2767
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2768
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_0

    .line 2758
    :cond_5
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5079
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5080
    const/4 v0, 0x1

    .line 5083
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5088
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5091
    .local v0, "action":I
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v9, :cond_0

    .line 5092
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v9}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 5095
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isAttachedToWindow()Z

    move-result v9

    if-nez v9, :cond_2

    .line 5174
    :cond_1
    :goto_0
    return v7

    .line 5103
    :cond_2
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v9, p1}, Landroid/widget/HorizontalFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v7, v8

    .line 5104
    goto :goto_0

    .line 5107
    :cond_3
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 5109
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5110
    .local v3, "touchMode":I
    const/4 v9, 0x6

    if-eq v3, v9, :cond_4

    const/4 v9, 0x5

    if-ne v3, v9, :cond_5

    .line 5111
    :cond_4
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    move v7, v8

    .line 5112
    goto :goto_0

    .line 5115
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 5116
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 5117
    .local v6, "y":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 5119
    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->findMotionRow(I)I

    move-result v1

    .line 5120
    .local v1, "motionPosition":I
    if-eq v3, v11, :cond_6

    if-ltz v1, :cond_6

    .line 5123
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5124
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 5125
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 5126
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 5127
    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 5128
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5129
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    .line 5131
    .end local v4    # "v":Landroid/view/View;
    :cond_6
    const/high16 v9, -0x80000000

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 5132
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initOrResetVelocityTracker()V

    .line 5133
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5134
    if-ne v3, v11, :cond_1

    move v7, v8

    .line 5135
    goto :goto_0

    .line 5141
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    .line 5143
    :pswitch_3
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 5144
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_7

    .line 5145
    const/4 v2, 0x0

    .line 5146
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 5148
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v5, v9

    .line 5149
    .restart local v5    # "x":I
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initVelocityTrackerIfNotExists()V

    .line 5150
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5151
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-direct {p0, v5, v9, v10}, Landroid/widget/AbsHorizontalListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    .line 5152
    goto/16 :goto_0

    .line 5161
    .end local v2    # "pointerIndex":I
    .end local v5    # "x":I
    :pswitch_4
    iput v10, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5162
    iput v10, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 5163
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->recycleVelocityTracker()V

    .line 5164
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 5169
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 5107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 5141
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 3501
    sparse-switch p1, :sswitch_data_0

    .line 3512
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 3504
    :sswitch_0
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    .line 3508
    :sswitch_1
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 3501
    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 3517
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3518
    .local v1, "selectedview":Landroid/view/View;
    const/4 v0, 0x0

    .line 3520
    .local v0, "currentview":Landroid/view/View;
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3521
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3597
    :goto_0
    return v3

    .line 3524
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-ltz v4, :cond_2

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 3528
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3529
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3530
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget-wide v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v4, v6, v7}, Landroid/widget/AbsHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3531
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3533
    :cond_1
    invoke-virtual {p0, v8}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    goto :goto_0

    .line 3538
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 3597
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 3544
    :sswitch_0
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_4

    .line 3545
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    if-nez v4, :cond_6

    .line 3546
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    .line 3552
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-ltz v4, :cond_3

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 3556
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3558
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_5

    if-eqz v1, :cond_5

    .line 3559
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    if-nez v3, :cond_7

    .line 3560
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    iget-wide v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3561
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3562
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V

    .line 3563
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    .line 3571
    :cond_5
    :goto_3
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    if-eqz v3, :cond_3

    .line 3572
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    goto :goto_1

    .line 3548
    :cond_6
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    goto :goto_2

    .line 3565
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    .line 3566
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3567
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V

    goto :goto_3

    .line 3579
    :sswitch_1
    iput-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto :goto_1

    .line 3583
    :sswitch_2
    iput-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    .line 3584
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    .line 3585
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    .line 3586
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    .line 3587
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mSecondPressedPoint:I

    goto :goto_1

    .line 3590
    :sswitch_3
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    if-ne v4, v3, :cond_3

    .line 3591
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    goto/16 :goto_1

    .line 3538
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1f -> :sswitch_3
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x71 -> :sswitch_1
        0x72 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2437
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2438
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mInLayout:Z

    .line 2439
    if-eqz p1, :cond_1

    .line 2440
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2441
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2442
    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2444
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView$RecycleBin;->markChildrenDirty()V

    .line 2447
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mOldItemCount:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-eqz v2, :cond_3

    .line 2448
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalFastScroller;->onItemCountChanged(I)V

    .line 2451
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 2452
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mInLayout:Z

    .line 2454
    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mOverscrollMax:I

    .line 2455
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 2410
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 2411
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->useDefaultSelector()V

    .line 2413
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 2414
    .local v3, "listPadding":Landroid/graphics/Rect;
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 2415
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 2416
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 2417
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 2420
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    .line 2421
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2422
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 2423
    .local v4, "listRight":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2424
    .local v1, "lastChild":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2425
    .local v2, "lastRight":I
    :goto_0
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v2, v4, :cond_3

    :goto_1
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mForceTranscriptScroll:Z

    .line 2429
    .end local v0    # "childCount":I
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastRight":I
    .end local v4    # "listRight":I
    :cond_1
    return-void

    .restart local v0    # "childCount":I
    .restart local v1    # "lastChild":Landroid/view/View;
    .restart local v4    # "listRight":I
    :cond_2
    move v2, v4

    .line 2424
    goto :goto_0

    .line 2425
    .restart local v2    # "lastRight":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 4967
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    if-eq v0, p1, :cond_0

    .line 4968
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollY:I

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mScrollY:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->onScrollChanged(IIII)V

    .line 4969
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    .line 4970
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidateParentIfNeeded()V

    .line 4972
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->awakenScrollBars()Z

    .line 4974
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7422
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_1

    .line 7423
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7424
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    .line 7425
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 7426
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    .line 7433
    :cond_0
    :goto_0
    return v0

    .line 7429
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 7430
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 7431
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 7446
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 2150
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsHorizontalListView$SavedState;

    .line 2152
    .local v0, "ss":Landroid/widget/AbsHorizontalListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2153
    iput-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    .line 2155
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    int-to-long v2, v1

    iput-wide v2, p0, Landroid/widget/AbsHorizontalListView;->mSyncHeight:J

    .line 2157
    iget-wide v2, v0, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_4

    .line 2158
    iput-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mNeedSync:Z

    .line 2159
    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 2160
    iget-wide v2, v0, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AbsHorizontalListView;->mSyncRowId:J

    .line 2161
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSyncPosition:I

    .line 2162
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSpecificTop:I

    .line 2163
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSyncMode:I

    .line 2177
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setFilterText(Ljava/lang/String;)V

    .line 2179
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 2180
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2183
    :cond_1
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 2184
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2187
    :cond_2
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 2189
    iget-boolean v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 2191
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2194
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    .line 2195
    return-void

    .line 2164
    :cond_4
    iget-wide v2, v0, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 2165
    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->setSelectedPositionInt(I)V

    .line 2167
    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2168
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 2169
    iput-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mNeedSync:Z

    .line 2170
    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 2171
    iget-wide v2, v0, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsHorizontalListView;->mSyncRowId:J

    .line 2172
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSyncPosition:I

    .line 2173
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSpecificTop:I

    .line 2174
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3258
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 3259
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 3260
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getTwHorizontalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalFastScroller;->setScrollbarPosition(I)V

    .line 3262
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    .line 2058
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    .line 2060
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 2062
    .local v9, "superState":Landroid/os/Parcelable;
    new-instance v8, Landroid/widget/AbsHorizontalListView$SavedState;

    invoke-direct {v8, v9}, Landroid/widget/AbsHorizontalListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2064
    .local v8, "ss":Landroid/widget/AbsHorizontalListView$SavedState;
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    if-eqz v12, :cond_1

    .line 2066
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    .line 2067
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    .line 2068
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    .line 2069
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    .line 2070
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    .line 2071
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    .line 2072
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-boolean v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    iput-boolean v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    .line 2073
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    .line 2074
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2075
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2145
    :cond_0
    :goto_0
    return-object v8

    .line 2079
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_4

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-lez v12, :cond_4

    const/4 v3, 0x1

    .line 2080
    .local v3, "haveChildren":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getSelectedItemId()J

    move-result-wide v6

    .line 2081
    .local v6, "selectedId":J
    iput-wide v6, v8, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    .line 2082
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    .line 2084
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_5

    .line 2086
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    .line 2087
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getSelectedItemPosition()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    .line 2088
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    .line 2115
    :goto_2
    const/4 v12, 0x0

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    .line 2116
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v12, :cond_2

    .line 2117
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    .line 2118
    .local v10, "textFilter":Landroid/widget/EditText;
    if-eqz v10, :cond_2

    .line 2119
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2120
    .local v1, "filterText":Landroid/text/Editable;
    if-eqz v1, :cond_2

    .line 2121
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    .line 2126
    .end local v1    # "filterText":Landroid/text/Editable;
    .end local v10    # "textFilter":Landroid/widget/EditText;
    :cond_2
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_3
    iput-boolean v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    .line 2128
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_3

    .line 2129
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2131
    :cond_3
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v12, :cond_a

    .line 2132
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 2133
    .local v5, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2134
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v0, :cond_9

    .line 2135
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v14, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2134
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2079
    .end local v0    # "count":I
    .end local v3    # "haveChildren":Z
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6    # "selectedId":J
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 2090
    .restart local v3    # "haveChildren":Z
    .restart local v6    # "selectedId":J
    :cond_5
    if-eqz v3, :cond_7

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    if-lez v12, :cond_7

    .line 2100
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2101
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    .line 2102
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 2103
    .local v2, "firstPos":I
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-lt v2, v12, :cond_6

    .line 2104
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v12, -0x1

    .line 2106
    :cond_6
    iput v2, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    .line 2107
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    goto :goto_2

    .line 2109
    .end local v2    # "firstPos":I
    .end local v11    # "v":Landroid/view/View;
    :cond_7
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    .line 2110
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    .line 2111
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    goto/16 :goto_2

    .line 2126
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 2137
    .restart local v0    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    iput-object v5, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2139
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_a
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    .line 2141
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v12, :cond_0

    .line 2142
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v12}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2857
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2858
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    .line 2859
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->rememberSyncState()V

    .line 2862
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_1

    .line 2863
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/HorizontalFastScroller;->onSizeChanged(IIII)V

    .line 2865
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    .line 7209
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7210
    invoke-direct {p0, v4}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    .line 7211
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7212
    .local v1, "length":I
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 7213
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 7215
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->showPopup()V

    .line 7216
    iput-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    .line 7222
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 7223
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 7225
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 7226
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 7233
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 7217
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 7219
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    .line 7220
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    goto :goto_0

    .line 7228
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 4419
    iget-boolean v11, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    if-eqz v11, :cond_0

    .line 4420
    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Lcom/samsung/android/motion/MRListener;

    if-eqz v11, :cond_0

    .line 4421
    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Lcom/samsung/android/motion/MRListener;

    invoke-virtual {v11, v12, v10}, Lcom/samsung/android/motion/MotionRecognitionManager;->setMotionAngle(Lcom/samsung/android/motion/MRListener;I)V

    .line 4425
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_3

    .line 4428
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isClickable()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isLongClickable()Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    move v9, v10

    .line 4516
    :cond_2
    :goto_0
    return v9

    .line 4431
    :cond_3
    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v11, :cond_4

    .line 4432
    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v11}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 4435
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isAttachedToWindow()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4443
    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v11, :cond_5

    .line 4444
    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v11, p1}, Landroid/widget/HorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 4445
    .local v4, "intercepted":Z
    if-eqz v4, :cond_5

    move v9, v10

    .line 4446
    goto :goto_0

    .line 4450
    .end local v4    # "intercepted":Z
    :cond_5
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 4451
    .local v6, "vtev":Landroid/view/MotionEvent;
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initVelocityTrackerIfNotExists()V

    .line 4452
    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4454
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 4455
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 4515
    :goto_1
    :pswitch_0
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    move v9, v10

    .line 4516
    goto :goto_0

    .line 4457
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 4462
    :pswitch_2
    invoke-direct {p0, p1, v6}, Landroid/widget/AbsHorizontalListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 4467
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 4472
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->onTouchCancel()V

    goto :goto_1

    .line 4477
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4478
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 4479
    .local v7, "x":I
    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 4480
    .local v8, "y":I
    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v5

    .line 4481
    .local v5, "motionPosition":I
    if-ltz v5, :cond_6

    .line 4483
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4484
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 4485
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 4487
    .end local v1    # "child":Landroid/view/View;
    :cond_6
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 4488
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    goto :goto_1

    .line 4494
    .end local v5    # "motionPosition":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 4495
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 4496
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v7, v11

    .line 4497
    .restart local v7    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v8, v11

    .line 4498
    .restart local v8    # "y":I
    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 4499
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 4500
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 4501
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 4502
    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v5

    .line 4503
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_7

    .line 4505
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4506
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 4507
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 4509
    .end local v1    # "child":Landroid/view/View;
    :cond_7
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 4510
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    goto :goto_1

    .line 4455
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 3935
    if-eqz p1, :cond_2

    .line 3937
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->hideSelector()V

    .line 3941
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3944
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 3946
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 3965
    :cond_1
    :goto_0
    return-void

    .line 3948
    :cond_2
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3949
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 3950
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3951
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 3953
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 3954
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 3957
    :cond_5
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    if-eqz v1, :cond_1

    .line 3958
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollX:I

    .line 3959
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidateParentCaches()V

    .line 3960
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->finishGlows()V

    .line 3961
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 8163
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 8164
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    .line 8166
    if-nez p2, :cond_0

    .line 8171
    :goto_0
    return-void

    .line 8169
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->releaseAllBoosters()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3194
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 3199
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z

    .line 3201
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 3203
    .local v0, "touchMode":I
    :goto_0
    if-nez p1, :cond_5

    .line 3204
    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3205
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 3206
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3209
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 3210
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v3, :cond_0

    .line 3211
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 3213
    :cond_0
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mScrollY:I

    if-eqz v3, :cond_1

    .line 3214
    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollY:I

    .line 3215
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidateParentCaches()V

    .line 3216
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->finishGlows()V

    .line 3217
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 3221
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    .line 3223
    if-ne v0, v2, :cond_2

    .line 3225
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 3249
    :cond_2
    :goto_1
    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    .line 3251
    if-nez p1, :cond_3

    .line 3252
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->releaseAllBoosters()V

    .line 3254
    :cond_3
    return-void

    .end local v0    # "touchMode":I
    :cond_4
    move v0, v2

    .line 3201
    goto :goto_0

    .line 3228
    .restart local v0    # "touchMode":I
    :cond_5
    iget-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mPopupHidden:Z

    if-nez v3, :cond_6

    .line 3230
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->showPopup()V

    .line 3234
    :cond_6
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 3236
    if-ne v0, v2, :cond_7

    .line 3238
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelection()Z

    goto :goto_1

    .line 3242
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->hideSelector()V

    .line 3243
    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 3244
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1808
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1827
    :goto_0
    return v1

    .line 1811
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 1827
    goto :goto_0

    .line 1813
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 1814
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 1815
    .local v0, "viewportWidth":I
    invoke-virtual {p0, v0, v5}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportWidth":I
    :cond_1
    move v1, v2

    .line 1818
    goto :goto_0

    .line 1820
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    if-lez v3, :cond_2

    .line 1821
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 1822
    .restart local v0    # "viewportWidth":I
    neg-int v2, v0

    invoke-virtual {p0, v2, v5}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportWidth":I
    :cond_2
    move v1, v2

    .line 1825
    goto :goto_0

    .line 1811
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1351
    const/4 v8, 0x0

    .line 1352
    .local v8, "handled":Z
    const/4 v9, 0x0

    .line 1353
    .local v9, "handledNotifykeyPress":Z
    const/4 v7, 0x1

    .line 1355
    .local v7, "dispatchItemClick":Z
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v3, :cond_4

    .line 1356
    const/4 v8, 0x1

    .line 1357
    const/4 v0, 0x0

    .line 1359
    .local v0, "checkedStateChanged":Z
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_9

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_9

    .line 1361
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_6

    move v6, v1

    .line 1362
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1363
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1364
    if-eqz v6, :cond_7

    .line 1365
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1370
    :cond_1
    :goto_1
    if-eqz v6, :cond_8

    .line 1371
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 1375
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1376
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1378
    const/4 v7, 0x0

    .line 1380
    :cond_2
    const/4 v0, 0x1

    .line 1397
    .end local v6    # "checked":Z
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 1398
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->updateOnScreenCheckedViews()V

    .line 1402
    .end local v0    # "checkedStateChanged":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 1403
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .line 1406
    :cond_5
    return v8

    .restart local v0    # "checkedStateChanged":Z
    :cond_6
    move v6, v2

    .line 1361
    goto :goto_0

    .line 1367
    .restart local v6    # "checked":Z
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1373
    :cond_8
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1381
    .end local v6    # "checked":Z
    :cond_9
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-ne v3, v1, :cond_3

    .line 1382
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_c

    move v6, v1

    .line 1383
    .restart local v6    # "checked":Z
    :goto_4
    if-eqz v6, :cond_d

    .line 1384
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1385
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1386
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1387
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1388
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1390
    :cond_a
    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 1394
    :cond_b
    :goto_5
    const/4 v0, 0x1

    goto :goto_3

    .end local v6    # "checked":Z
    :cond_c
    move v6, v2

    .line 1382
    goto :goto_4

    .line 1391
    .restart local v6    # "checked":Z
    :cond_d
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1392
    :cond_e
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_5
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const v7, 0xc369

    const/4 v6, 0x1

    .line 3429
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3430
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 3432
    invoke-virtual {p0, p2, v6}, Landroid/widget/AbsHorizontalListView;->setItemChecked(IZ)V

    .line 3433
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->performHapticFeedback(I)Z

    .line 3451
    :cond_0
    :goto_0
    return v6

    .line 3439
    :cond_1
    const/4 v6, 0x0

    .line 3440
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 3441
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3444
    :cond_2
    if-nez v6, :cond_3

    .line 3445
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3446
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3448
    :cond_3
    if-eqz v6, :cond_0

    .line 3449
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3615
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3616
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3617
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3618
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3621
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v1

    .line 3622
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3623
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3624
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3625
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3626
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3627
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 3631
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .line 3622
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3631
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3644
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v0

    .line 3645
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 3646
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3648
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 2773
    if-eq p1, v6, :cond_0

    .line 2774
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 2777
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2778
    .local v1, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2779
    instance-of v2, p2, Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 2780
    check-cast v2, Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2782
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->positionSelector(IIII)V

    .line 2785
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z

    .line 2786
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 2787
    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z

    .line 2788
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 2789
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->refreshDrawableState()V

    .line 2792
    :cond_2
    return-void

    .line 2787
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7341
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v1

    .line 7342
    .local v1, "childCount":I
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    # getter for: Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView$RecycleBin;->access$4600(Landroid/widget/AbsHorizontalListView$RecycleBin;)Landroid/widget/AbsHorizontalListView$RecyclerListener;

    move-result-object v3

    .line 7345
    .local v3, "listener":Landroid/widget/AbsHorizontalListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7346
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7347
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 7349
    .local v4, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7350
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7351
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7352
    if-eqz v3, :cond_0

    .line 7354
    invoke-interface {v3, v0}, Landroid/widget/AbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7345
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7358
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 7359
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->removeAllViewsInLayout()V

    .line 7360
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 6486
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    .line 6487
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 6488
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 6490
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6491
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6492
    return v0
.end method

.method public registerDoubleTapMotion()V
    .locals 1

    .prologue
    .line 940
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->registerMotionListener()V

    .line 941
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setMotionEvent(Z)V

    .line 942
    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 5229
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 5230
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    .line 5231
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_0

    .line 5233
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsHorizontalListView;I)V

    .line 5236
    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 5071
    if-eqz p1, :cond_0

    .line 5072
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->recycleVelocityTracker()V

    .line 5074
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 5075
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2269
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2270
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 2272
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 1952
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1953
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetList()V

    .line 1954
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    .line 1955
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 1957
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2278
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->removeAllViewsInLayout()V

    .line 2279
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 2281
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 2282
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    .line 2285
    :cond_0
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    .line 2286
    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2287
    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mNeedSync:Z

    .line 2288
    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 2289
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mOldSelectedPosition:I

    .line 2290
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AbsHorizontalListView;->mOldSelectedRowId:J

    .line 2291
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->setSelectedPositionInt(I)V

    .line 2292
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2293
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    .line 2294
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 2295
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2296
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 2297
    return-void
.end method

.method public resetPressItemListArray()V
    .locals 4

    .prologue
    .line 8390
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 8404
    :cond_0
    :goto_0
    return-void

    .line 8393
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 8395
    .local v0, "checkCount":I
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    if-eqz v2, :cond_0

    .line 8398
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 8399
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 8398
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8402
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 8403
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    goto :goto_0
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 6554
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v2

    .line 6556
    .local v2, "childCount":I
    if-gtz v2, :cond_0

    .line 6557
    const/16 v17, 0x0

    .line 6652
    :goto_0
    return v17

    .line 6560
    :cond_0
    const/4 v12, 0x0

    .line 6562
    .local v12, "selectedLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 6563
    .local v3, "childrenLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 6564
    .local v4, "childrenRight":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 6565
    .local v5, "firstPosition":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 6566
    .local v15, "toPosition":I
    const/4 v10, 0x1

    .line 6568
    .local v10, "rightSide":Z
    if-lt v15, v5, :cond_4

    add-int v17, v5, v2

    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    .line 6569
    move v13, v15

    .line 6571
    .local v13, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 6572
    .local v11, "selected":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 6573
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    .line 6576
    .local v14, "selectedRight":I
    if-ge v12, v3, :cond_3

    .line 6577
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v12, v3, v17

    .line 6633
    .end local v11    # "selected":Landroid/view/View;
    .end local v14    # "selectedRight":I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 6634
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6635
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 6636
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 6638
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 6639
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    .line 6640
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AbsHorizontalListView;->mSpecificTop:I

    .line 6641
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Landroid/widget/AbsHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 6642
    if-lt v13, v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v13, v0, :cond_c

    .line 6643
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 6644
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 6645
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsHorizontalListView;->setSelectionInt(I)V

    .line 6646
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 6650
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 6652
    if-ltz v13, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 6578
    .restart local v11    # "selected":Landroid/view/View;
    .restart local v14    # "selectedRight":I
    :cond_3
    if-le v14, v4, :cond_1

    .line 6579
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v18

    sub-int v12, v17, v18

    goto :goto_1

    .line 6583
    .end local v11    # "selected":Landroid/view/View;
    .end local v13    # "selectedPos":I
    .end local v14    # "selectedRight":I
    :cond_4
    if-ge v15, v5, :cond_8

    .line 6585
    move v13, v5

    .line 6586
    .restart local v13    # "selectedPos":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v2, :cond_1

    .line 6587
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 6588
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 6590
    .local v8, "left":I
    if-nez v6, :cond_6

    .line 6592
    move v12, v8

    .line 6594
    if-gtz v5, :cond_5

    if-ge v8, v3, :cond_6

    .line 6597
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v3, v3, v17

    .line 6600
    :cond_6
    if-lt v8, v3, :cond_7

    .line 6602
    add-int v13, v5, v6

    .line 6603
    move v12, v8

    .line 6604
    goto/16 :goto_1

    .line 6586
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 6608
    .end local v6    # "i":I
    .end local v8    # "left":I
    .end local v13    # "selectedPos":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    .line 6609
    .local v7, "itemCount":I
    const/4 v10, 0x0

    .line 6610
    add-int v17, v5, v2

    add-int/lit8 v13, v17, -0x1

    .line 6612
    .restart local v13    # "selectedPos":I
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "i":I
    :goto_4
    if-ltz v6, :cond_1

    .line 6613
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 6614
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 6615
    .restart local v8    # "left":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v9

    .line 6617
    .local v9, "right":I
    add-int/lit8 v17, v2, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_a

    .line 6618
    move v12, v8

    .line 6619
    add-int v17, v5, v2

    move/from16 v0, v17

    if-lt v0, v7, :cond_9

    if-le v9, v4, :cond_a

    .line 6620
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 6624
    :cond_a
    if-gt v9, v4, :cond_b

    .line 6625
    add-int v13, v5, v6

    .line 6626
    move v12, v8

    .line 6627
    goto/16 :goto_1

    .line 6612
    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 6648
    .end local v6    # "i":I
    .end local v7    # "itemCount":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    const/4 v13, -0x1

    goto :goto_2

    .line 6652
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 6534
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6535
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 6536
    const/4 v0, 0x1

    .line 6538
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollListBy(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 6215
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    .line 6216
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 1770
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1771
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1772
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getLastVisiblePosition()I

    move-result v1

    .line 1773
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1782
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :goto_0
    return-void

    .line 1777
    .restart local v0    # "firstVisiblePosition":I
    .restart local v1    # "lastVisiblePosition":I
    :cond_0
    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1778
    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1781
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x3b

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 6975
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 7050
    :cond_0
    :goto_0
    return v2

    .line 6979
    :cond_1
    const/4 v2, 0x0

    .line 6980
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 6981
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 7013
    :goto_1
    if-eqz v3, :cond_0

    .line 7014
    invoke-direct {p0, v8}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    .line 7016
    move-object v1, p3

    .line 7017
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 7018
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 7021
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 7022
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7024
    :pswitch_0
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7025
    if-eq p1, v10, :cond_3

    if-ne p1, v11, :cond_7

    .line 7026
    :cond_3
    iput-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 6988
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 6989
    goto :goto_1

    .line 6991
    :sswitch_1
    iget-boolean v6, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 6992
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_6

    .line 6994
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 6995
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_4

    .line 6996
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 6998
    :cond_4
    const/4 v2, 0x1

    .line 7005
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    :goto_2
    const/4 v3, 0x0

    .line 7006
    goto :goto_1

    .line 6999
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 7001
    const/4 v2, 0x1

    .line 7002
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 7009
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    goto :goto_1

    .line 7027
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :cond_7
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8

    const/16 v5, 0x72

    if-ne p1, v5, :cond_0

    .line 7028
    :cond_8
    iput-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 7033
    :pswitch_1
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v6, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7034
    if-eq p1, v10, :cond_9

    if-ne p1, v11, :cond_a

    .line 7035
    :cond_9
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    .line 7036
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    .line 7037
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    .line 7038
    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    .line 7039
    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSecondPressedPoint:I

    goto/16 :goto_0

    .line 7040
    :cond_a
    const/16 v6, 0x71

    if-eq p1, v6, :cond_b

    const/16 v6, 0x72

    if-ne p1, v6, :cond_0

    .line 7041
    :cond_b
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 7046
    :pswitch_2
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 6981
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 7022
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 126
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1140
    if-eqz p1, :cond_0

    .line 1141
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    .line 1142
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1144
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1148
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 1149
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1152
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 1153
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1157
    :cond_2
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 1158
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    .line 1159
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    .line 1160
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    .line 1163
    :cond_3
    return-void
.end method

.method public setAlwaysDisableHoverHighlight(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 4847
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    .line 4848
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 7312
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 7313
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    .line 7314
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 7315
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7316
    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7318
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->setCacheColorHint(I)V

    .line 7320
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 1460
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    .line 1461
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1463
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1465
    :cond_0
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1466
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1467
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1469
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1470
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1473
    :cond_2
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1474
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->clearChoices()V

    .line 1475
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setLongClickable(Z)V

    .line 1478
    :cond_3
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 2941
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 2942
    return-void
.end method

.method public setEnableMultiFocus(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 8296
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    .line 8297
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1606
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 1607
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1608
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setFastScrollEnabled(Z)V

    .line 1611
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollAlwaysVisible:Z

    .line 1613
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1614
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1624
    :cond_1
    :goto_0
    return-void

    .line 1616
    :cond_2
    new-instance v0, Landroid/widget/AbsHorizontalListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsHorizontalListView$2;-><init>(Landroid/widget/AbsHorizontalListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1560
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1561
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    .line 1563
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1564
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1574
    :cond_0
    :goto_0
    return-void

    .line 1566
    :cond_1
    new-instance v0, Landroid/widget/AbsHorizontalListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsHorizontalListView$1;-><init>(Landroid/widget/AbsHorizontalListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 2210
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2211
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    .line 2214
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2215
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2216
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 2218
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 2219
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2220
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2224
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    .line 2225
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2228
    :cond_1
    return-void
.end method

.method public setForcedClick(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 3322
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    .line 3323
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2462
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2464
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 2468
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2469
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2470
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->positionPopup()V

    .line 2474
    .end local v1    # "visible":Z
    :cond_0
    return v0

    .line 2468
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 5953
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 5954
    new-instance v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 5956
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    # getter for: Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->access$1900(Landroid/widget/AbsHorizontalListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 5957
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .prologue
    .line 4016
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I

    .line 4017
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 3998
    if-eqz p1, :cond_0

    .line 3999
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    .line 4003
    :goto_0
    return-void

    .line 4001
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 0
    .param p1, "hoverspeed"    # I

    .prologue
    .line 4009
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I

    .line 4010
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 1280
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-nez v2, :cond_1

    .line 1347
    :cond_0
    :goto_0
    return-void

    .line 1285
    :cond_1
    if-eqz p2, :cond_4

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_4

    .line 1286
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1288
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AbsHorizontalListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1292
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1295
    :cond_4
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-ne v2, v6, :cond_c

    .line 1296
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1297
    .local v0, "oldValue":Z
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1298
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1299
    if-eqz p2, :cond_a

    .line 1300
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1305
    :cond_6
    :goto_1
    if-eq v0, p2, :cond_7

    .line 1306
    if-eqz p2, :cond_b

    .line 1307
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 1312
    :cond_7
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 1313
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1314
    .local v4, "id":J
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1341
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_8
    :goto_3
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mInLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mBlockLayoutRequests:Z

    if-nez v1, :cond_0

    .line 1342
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    if-nez v1, :cond_9

    .line 1343
    iput-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    .line 1344
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->rememberSyncState()V

    .line 1345
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    goto/16 :goto_0

    .line 1302
    .restart local v0    # "oldValue":Z
    :cond_a
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1309
    :cond_b
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1318
    .end local v0    # "oldValue":Z
    :cond_c
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_10

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_10

    move v7, v8

    .line 1321
    .local v7, "updateIds":Z
    :goto_4
    if-nez p2, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1322
    :cond_d
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1323
    if-eqz v7, :cond_e

    .line 1324
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1329
    :cond_e
    if-eqz p2, :cond_11

    .line 1330
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1331
    if-eqz v7, :cond_f

    .line 1332
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1334
    :cond_f
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7    # "updateIds":Z
    :cond_10
    move v7, v1

    .line 1318
    goto :goto_4

    .line 1335
    .restart local v7    # "updateIds":Z
    :cond_11
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1336
    :cond_12
    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMotionEvent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 957
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    .line 958
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    .prologue
    .line 1490
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1491
    new-instance v0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    .line 1493
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;)V

    .line 1494
    return-void
.end method

.method public setMultiFocusListItem(II)V
    .locals 1
    .param p1, "startitem"    # I
    .param p2, "enditem"    # I

    .prologue
    .line 8408
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    if-nez v0, :cond_0

    .line 8414
    :goto_0
    return-void

    .line 8411
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    .line 8412
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsHorizontalListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsHorizontalListView$OnScrollListener;

    .prologue
    .line 1748
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    .line 1749
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 1750
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "topPadding"    # I
    .param p2, "bottomPadding"    # I

    .prologue
    .line 5044
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingTop:I

    .line 5045
    iput p2, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingBottom:I

    .line 5046
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1122
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1123
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1124
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1125
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1126
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 1132
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 1133
    return-void

    .line 1129
    :cond_1
    iput-object v2, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1130
    iput-object v2, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/AbsHorizontalListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsHorizontalListView$RecyclerListener;

    .prologue
    .line 7470
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    # setter for: Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;
    invoke-static {v0, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->access$4602(Landroid/widget/AbsHorizontalListView$RecycleBin;Landroid/widget/AbsHorizontalListView$RecyclerListener;)Landroid/widget/AbsHorizontalListView$RecyclerListener;

    .line 7471
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7377
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_1

    .line 7378
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7379
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7381
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7391
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    :goto_0
    return-void

    .line 7385
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    .line 7387
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 7388
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7389
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 7403
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 7404
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 7406
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1686
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1687
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setScrollBarStyle(I)V

    .line 1690
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "left"    # Landroid/view/View;
    .param p2, "right"    # Landroid/view/View;

    .prologue
    .line 3024
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mScrollLeft:Landroid/view/View;

    .line 3025
    iput-object p2, p0, Landroid/widget/AbsHorizontalListView;->mScrollRight:Landroid/view/View;

    .line 3026
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1874
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1875
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    .line 1877
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mScrollingCacheEnabled:Z

    .line 1878
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 2952
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2953
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2956
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2957
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2958
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2960
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2961
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2962
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2963
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    .line 2964
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    .line 2965
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    .line 2966
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    .line 2967
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2968
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 2969
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1720
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    .line 1721
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 1945
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 1946
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    .line 1947
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayoutIfNecessary()V

    .line 1949
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 1891
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    .line 1892
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 971
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    .line 972
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 7283
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    .line 7284
    return-void
.end method

.method public setTwHorizontalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1678
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setTwHorizontalScrollbarPosition(I)V

    .line 1679
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setScrollbarPosition(I)V

    .line 1682
    :cond_0
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 5966
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mVelocityScale:F

    .line 5967
    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 7453
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 7454
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 7456
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2890
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v0, v2

    .line 2891
    .local v0, "isFingerAirView":Z
    :goto_0
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_information_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_5

    move v1, v2

    .line 2896
    .local v1, "isFingerAirViewPreview":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isPressed()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isHovered()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isFingerHovered()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    return v3

    .end local v0    # "isFingerAirView":Z
    .end local v1    # "isFingerAirViewPreview":Z
    :cond_4
    move v0, v3

    .line 2890
    goto :goto_0

    .restart local v0    # "isFingerAirView":Z
    :cond_5
    move v1, v3

    .line 2891
    goto :goto_1
.end method

.method shouldShowSelectorDefault()Z
    .locals 1

    .prologue
    .line 2901
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isPressed()Z

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

.method public showContextMenu(FFI)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 3462
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v1

    .line 3463
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 3464
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3465
    .local v2, "id":J
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3466
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3467
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3468
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 3473
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :goto_0
    return v4

    .line 3471
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3473
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 3478
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3479
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 3480
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3481
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 3483
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 3484
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3487
    :cond_0
    if-nez v6, :cond_1

    .line 3488
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3491
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3496
    .end local v4    # "longPressId":J
    .end local v6    # "handled":Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 6040
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 6041
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 7
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    .line 6116
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 6117
    new-instance v5, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 6121
    :cond_0
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 6122
    .local v1, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 6123
    .local v0, "childCount":I
    add-int v2, v1, v0

    .line 6124
    .local v2, "lastPos":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getPaddingLeft()I

    move-result v3

    .line 6125
    .local v3, "leftLimit":I
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 6127
    .local v4, "rightLimit":I
    if-eqz p1, :cond_2

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v5, v3, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-ne v2, v5, :cond_4

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-ne v5, v4, :cond_4

    if-lez p1, :cond_4

    .line 6131
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 6132
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v5, :cond_3

    .line 6133
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 6139
    :cond_3
    :goto_0
    return-void

    .line 6136
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 6137
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/high16 v9, 0x3f400000    # 0.75f

    .line 6145
    const/4 v2, -0x1

    .line 6146
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 6147
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v2

    .line 6152
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 6153
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6154
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 6155
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6156
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6158
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 6159
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 6160
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 6161
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 6162
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 6165
    add-int/lit8 v2, v2, 0x1

    .line 6172
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->smoothScrollToPosition(I)V

    .line 6175
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 6148
    :cond_3
    if-lez p1, :cond_0

    .line 6149
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 6166
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v9

    if-gez v7, :cond_1

    .line 6169
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 5975
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_0

    .line 5976
    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    .line 5978
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsHorizontalListView$PositionScroller;->start(I)V

    .line 5979
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 6028
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6029
    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    .line 6031
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsHorizontalListView$PositionScroller;->start(II)V

    .line 6032
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 6012
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6013
    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    .line 6015
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsHorizontalListView$PositionScroller;->startWithOffset(II)V

    .line 6016
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 5994
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_0

    .line 5995
    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    .line 5997
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsHorizontalListView$PositionScroller;->startWithOffset(III)V

    .line 5998
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 2873
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2878
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2876
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2873
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 32
    .param p1, "deltaX"    # I
    .param p2, "incrementalDeltaX"    # I

    .prologue
    .line 6254
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v7

    .line 6255
    .local v7, "childCount":I
    if-nez v7, :cond_0

    .line 6256
    const/16 v30, 0x1

    .line 6433
    :goto_0
    return v30

    .line 6259
    :cond_0
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 6260
    .local v13, "firstLeft":I
    add-int/lit8 v30, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getRight()I

    move-result v19

    .line 6262
    .local v19, "lastRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 6267
    .local v21, "listPadding":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 6268
    .local v10, "effectivePaddingLeft":I
    const/4 v11, 0x0

    .line 6269
    .local v11, "effectivePaddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 6270
    move-object/from16 v0, v21

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 6271
    move-object/from16 v0, v21

    iget v11, v0, Landroid/graphics/Rect;->right:I

    .line 6275
    :cond_1
    sub-int v26, v10, v13

    .line 6276
    .local v26, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v30

    sub-int v12, v30, v11

    .line 6277
    .local v12, "end":I
    sub-int v27, v19, v12

    .line 6279
    .local v27, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mPaddingRight:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I

    move/from16 v31, v0

    sub-int v29, v30, v31

    .line 6280
    .local v29, "width":I
    if-gez p1, :cond_3

    .line 6281
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6286
    :goto_1
    if-gez p2, :cond_4

    .line 6287
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6292
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 6295
    .local v14, "firstPosition":I
    if-nez v14, :cond_5

    .line 6296
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    sub-int v30, v13, v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mFirstPositionDistanceGuess:I

    .line 6300
    :goto_3
    add-int v30, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 6301
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    add-int v30, v30, v19

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastPositionDistanceGuess:I

    .line 6306
    :goto_4
    if-nez v14, :cond_7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-lt v13, v0, :cond_7

    if-ltz p2, :cond_7

    const/4 v5, 0x1

    .line 6308
    .local v5, "cannotScrollRight":Z
    :goto_5
    add-int v30, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v30

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v19

    move/from16 v1, v30

    if-gt v0, v1, :cond_8

    if-gtz p2, :cond_8

    const/4 v4, 0x1

    .line 6311
    .local v4, "cannotScrollLeft":Z
    :goto_6
    if-nez v5, :cond_2

    if-eqz v4, :cond_a

    .line 6312
    :cond_2
    if-eqz p2, :cond_9

    const/16 v30, 0x1

    goto/16 :goto_0

    .line 6283
    .end local v4    # "cannotScrollLeft":Z
    .end local v5    # "cannotScrollRight":Z
    .end local v14    # "firstPosition":I
    :cond_3
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 6289
    :cond_4
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 6298
    .restart local v14    # "firstPosition":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 6303
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mLastPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 6306
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 6308
    .restart local v5    # "cannotScrollRight":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .line 6312
    .restart local v4    # "cannotScrollLeft":Z
    :cond_9
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 6315
    :cond_a
    if-gez p2, :cond_14

    const/16 v25, 0x1

    .line 6317
    .local v25, "rightSide":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->isInTouchMode()Z

    move-result v18

    .line 6318
    .local v18, "inTouchMode":Z
    if-eqz v18, :cond_b

    .line 6319
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->hideSelector()V

    .line 6322
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeaderViewsCount()I

    move-result v16

    .line 6323
    .local v16, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getFooterViewsCount()I

    move-result v31

    sub-int v15, v30, v31

    .line 6325
    .local v15, "footerViewsStart":I
    const/16 v28, 0x0

    .line 6326
    .local v28, "start":I
    const/4 v9, 0x0

    .line 6328
    .local v9, "count":I
    const/16 v22, 0x1

    .line 6330
    .local v22, "performHaptic":Z
    if-eqz v25, :cond_19

    .line 6331
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v20, v0

    .line 6332
    .local v20, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    .line 6333
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    add-int v20, v20, v30

    .line 6335
    :cond_c
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_8
    move/from16 v0, v17

    if-ge v0, v7, :cond_d

    .line 6336
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6337
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v20

    if-lt v0, v1, :cond_15

    .line 6389
    .end local v6    # "child":Landroid/view/View;
    .end local v20    # "left":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    move/from16 v30, v0

    add-int v30, v30, p1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mMotionViewNewLeft:I

    .line 6391
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mBlockLayoutRequests:Z

    .line 6393
    if-lez v9, :cond_e

    .line 6394
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Landroid/widget/AbsHorizontalListView;->detachViewsFromParent(II)V

    .line 6395
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/AbsHorizontalListView$RecycleBin;->removeSkippedScrap()V

    .line 6400
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->awakenScrollBars()Z

    move-result v30

    if-nez v30, :cond_f

    .line 6401
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 6404
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    .line 6406
    if-eqz v25, :cond_10

    .line 6407
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v30, v0

    add-int v30, v30, v9

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    .line 6410
    :cond_10
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 6411
    .local v3, "absIncrementalDeltaX":I
    move/from16 v0, v26

    if-lt v0, v3, :cond_11

    move/from16 v0, v27

    if-ge v0, v3, :cond_12

    .line 6412
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->fillGap(Z)V

    .line 6415
    :cond_12
    if-nez v18, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1e

    .line 6416
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v8, v30, v31

    .line 6417
    .local v8, "childIndex":I
    if-ltz v8, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v8, v0, :cond_13

    .line 6418
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 6429
    .end local v8    # "childIndex":I
    :cond_13
    :goto_9
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mBlockLayoutRequests:Z

    .line 6431
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 6433
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 6315
    .end local v3    # "absIncrementalDeltaX":I
    .end local v9    # "count":I
    .end local v15    # "footerViewsStart":I
    .end local v16    # "headerViewsCount":I
    .end local v17    # "i":I
    .end local v18    # "inTouchMode":Z
    .end local v22    # "performHaptic":Z
    .end local v25    # "rightSide":Z
    .end local v28    # "start":I
    :cond_14
    const/16 v25, 0x0

    goto/16 :goto_7

    .line 6340
    .restart local v6    # "child":Landroid/view/View;
    .restart local v9    # "count":I
    .restart local v15    # "footerViewsStart":I
    .restart local v16    # "headerViewsCount":I
    .restart local v17    # "i":I
    .restart local v18    # "inTouchMode":Z
    .restart local v20    # "left":I
    .restart local v22    # "performHaptic":Z
    .restart local v25    # "rightSide":Z
    .restart local v28    # "start":I
    :cond_15
    add-int/lit8 v9, v9, 0x1

    .line 6341
    add-int v23, v14, v17

    .line 6342
    .local v23, "position":I
    move/from16 v0, v23

    move/from16 v1, v16

    if-lt v0, v1, :cond_18

    move/from16 v0, v23

    if-ge v0, v15, :cond_18

    .line 6345
    invoke-virtual {v6}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_16

    .line 6346
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6349
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v30, v0

    if-eqz v30, :cond_17

    .line 6350
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v23

    if-eq v0, v1, :cond_17

    .line 6351
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    .line 6354
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6335
    :cond_18
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8

    .line 6359
    .end local v6    # "child":Landroid/view/View;
    .end local v17    # "i":I
    .end local v20    # "left":I
    .end local v23    # "position":I
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v30

    sub-int v24, v30, p2

    .line 6360
    .local v24, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1a

    .line 6361
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    sub-int v24, v24, v30

    .line 6363
    :cond_1a
    add-int/lit8 v17, v7, -0x1

    .restart local v17    # "i":I
    :goto_a
    if-ltz v17, :cond_d

    .line 6364
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6365
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v24

    if-le v0, v1, :cond_d

    .line 6368
    move/from16 v28, v17

    .line 6369
    add-int/lit8 v9, v9, 0x1

    .line 6370
    add-int v23, v14, v17

    .line 6371
    .restart local v23    # "position":I
    move/from16 v0, v23

    move/from16 v1, v16

    if-lt v0, v1, :cond_1d

    move/from16 v0, v23

    if-ge v0, v15, :cond_1d

    .line 6374
    invoke-virtual {v6}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_1b

    .line 6375
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6378
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1c

    .line 6379
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v23

    if-eq v0, v1, :cond_1c

    .line 6380
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    .line 6383
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6363
    :cond_1d
    add-int/lit8 v17, v17, -0x1

    goto :goto_a

    .line 6420
    .end local v6    # "child":Landroid/view/View;
    .end local v23    # "position":I
    .end local v24    # "right":I
    .restart local v3    # "absIncrementalDeltaX":I
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1f

    .line 6421
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v8, v30, v31

    .line 6422
    .restart local v8    # "childIndex":I
    if-ltz v8, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v8, v0, :cond_13

    .line 6423
    const/16 v30, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 6426
    .end local v8    # "childIndex":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method protected twGetItemCount()I
    .locals 2

    .prologue
    .line 6071
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 6072
    .local v0, "adapter":Landroid/widget/Adapter;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method public twIsSetCustomMultiChoiceMode()Z
    .locals 1

    .prologue
    .line 1529
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method public twNotifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1411
    const/4 v0, 0x0

    .line 1416
    .local v0, "handledNotifyKeyPress":Z
    return v0
.end method

.method public twSetCustomMultiChoiceMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1520
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    .line 1521
    return-void
.end method

.method public twSetSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 6082
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->setSelection(I)V

    .line 6083
    return-void
.end method

.method public twShowMultiChoiceMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1502
    if-eqz p1, :cond_1

    .line 1503
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1512
    :cond_0
    :goto_0
    return-void

    .line 1507
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1509
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public twSmoothScrollBy(I)V
    .locals 6
    .param p1, "distance"    # I

    .prologue
    const/16 v5, -0x1f4

    const/16 v4, 0x1f4

    .line 6087
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 6088
    new-instance v1, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 6091
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 6092
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6093
    new-instance v1, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    .line 6096
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    monitor-enter v2

    .line 6097
    :try_start_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 6098
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v4, :cond_3

    .line 6099
    if-lez p1, :cond_2

    .line 6100
    :goto_0
    if-le p1, v4, :cond_3

    .line 6101
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    const/16 v3, 0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6100
    add-int/lit16 p1, p1, -0x1f4

    goto :goto_0

    .line 6104
    :cond_2
    :goto_1
    if-ge p1, v5, :cond_3

    .line 6105
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    const/16 v3, -0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6104
    add-int/lit16 p1, p1, 0x1f4

    goto :goto_1

    .line 6109
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6110
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 6111
    :cond_4
    monitor-exit v2

    .line 6112
    return-void

    .line 6111
    .end local v0    # "isEmpty":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterDoubleTapMotion()V
    .locals 1

    .prologue
    .line 948
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterMotionListener()V

    .line 949
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setMotionEvent(Z)V

    .line 950
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 978
    return-void
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2484
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mScrollLeft:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2487
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v0, v4

    .line 2490
    .local v0, "canScrollLeft":Z
    :goto_0
    if-nez v0, :cond_0

    .line 2491
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 2492
    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2493
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v6, v8, :cond_5

    move v0, v4

    .line 2497
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mScrollLeft:Landroid/view/View;

    if-eqz v0, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2500
    .end local v0    # "canScrollLeft":Z
    :cond_1
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mScrollRight:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 2502
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v3

    .line 2505
    .local v3, "count":I
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v1, v4

    .line 2508
    .local v1, "canScrollRight":Z
    :goto_3
    if-nez v1, :cond_2

    if-lez v3, :cond_2

    .line 2509
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2510
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mRight:I

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v1, v4

    .line 2513
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mScrollRight:Landroid/view/View;

    if-eqz v1, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2515
    .end local v1    # "canScrollRight":Z
    .end local v3    # "count":I
    :cond_3
    return-void

    :cond_4
    move v0, v5

    .line 2487
    goto :goto_0

    .restart local v0    # "canScrollLeft":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_5
    move v0, v5

    .line 2493
    goto :goto_1

    .end local v2    # "child":Landroid/view/View;
    :cond_6
    move v6, v7

    .line 2497
    goto :goto_2

    .end local v0    # "canScrollLeft":Z
    .restart local v3    # "count":I
    :cond_7
    move v1, v5

    .line 2505
    goto :goto_3

    .restart local v1    # "canScrollRight":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_8
    move v1, v5

    .line 2510
    goto :goto_4

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v5, v7

    .line 2513
    goto :goto_5
.end method

.method updateSelectorState()V
    .locals 4

    .prologue
    .line 3029
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 3030
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3031
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    if-lt v2, v3, :cond_3

    .line 3032
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3033
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    .line 3034
    .local v1, "ellipsized":Z
    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3035
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3036
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3047
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_1
    :goto_0
    return-void

    .line 3038
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "ellipsized":Z
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3041
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3044
    :cond_4
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3091
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
