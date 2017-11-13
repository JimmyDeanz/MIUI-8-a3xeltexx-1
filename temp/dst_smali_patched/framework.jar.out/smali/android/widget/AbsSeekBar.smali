.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSeekBar$Side;,
        Landroid/widget/AbsSeekBar$Status;
    }
.end annotation


# static fields
.field private static final IS_OVERLAY_THEMES_ENABLED:Z = true

.field private static final MUTE_VIB_DISTANCE_LVL:I = 0x190

.field private static final MUTE_VIB_DURATION:I = 0x1f4

.field private static final MUTE_VIB_TOTAL:I = 0x4

.field private static final NO_ALPHA:I = 0xff

.field private static final SCAFE_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "AbsSeekBar"

.field private static mIsThemeDeviceDefaultFamily:Z


# instance fields
.field private DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

.field private DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

.field private DEFAULT_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

.field private OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

.field private OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

.field private OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

.field private animationCurrnetFrame:I

.field private animationTotalFrame:I

.field private circleTotal:I

.field private currentSide:Landroid/widget/AbsSeekBar$Side;

.field private currentSkipFrameWhenActionDown:I

.field private currentStatus:Landroid/widget/AbsSeekBar$Status;

.field private delayedFramesBeforeReduce:I

.field private mAllowedSeeBarAnimation:Z

.field private mCurrentProgressLevel:I

.field private mDisabledAlpha:F

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHoveringLevel:I

.field private mIsDragging:Z

.field private mIsDraggingForSliding:Z

.field private mIsFirstSetProgress:Z

.field private mIsFluidEnabled:Z

.field private mIsMuteNow:Z

.field private mIsOpenTheme:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mLargeFont:Z

.field private mMuteAnimationSet:Landroid/animation/AnimatorSet;

.field private mOverlapBackground:Landroid/graphics/drawable/Drawable;

.field private mOverlapPoint:I

.field private mOverlapPrimary:Landroid/graphics/drawable/Drawable;

.field private mScaledTouchSlop:I

.field private mSplitProgress:Landroid/graphics/drawable/Drawable;

.field private mSplitTrack:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbPosX:I

.field private mThumbPosXfloat:F

.field private mThumbPosY:I

.field private mThumbPosYfloat:F

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTouchDownX:F

.field private mTouchDownY:F

.field mTouchProgressOffset:F

.field private mUseMuteAnimation:Z

.field private paint:Landroid/graphics/Paint;

.field private pressedThumbWidth:I

.field private previousProgress:I

.field private progressBarHeight:F

.field private progressBarWidth:F

.field private skipFrameWhenActionDown:I

.field private sliderPath:Landroid/widget/SeekBarFluidPath;

.field private tailWidthFromCircleCenter:F

.field private targetFrame:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "ro.build.scafe.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2016"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/widget/AbsSeekBar;->SCAFE_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/AbsSeekBar;->delayedFramesBeforeReduce:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/AbsSeekBar;->skipFrameWhenActionDown:I

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    sget-object v0, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v0, Landroid/widget/AbsSeekBar$Status;->STOP:Landroid/widget/AbsSeekBar$Status;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/AbsSeekBar;->delayedFramesBeforeReduce:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/AbsSeekBar;->skipFrameWhenActionDown:I

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    sget-object v0, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v0, Landroid/widget/AbsSeekBar$Status;->STOP:Landroid/widget/AbsSeekBar$Status;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    const/4 v6, 0x1

    iput v6, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    const/4 v6, 0x0

    iput v6, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    const/4 v6, 0x5

    iput v6, p0, Landroid/widget/AbsSeekBar;->delayedFramesBeforeReduce:I

    const/4 v6, 0x3

    iput v6, p0, Landroid/widget/AbsSeekBar;->skipFrameWhenActionDown:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    sget-object v6, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v6, Landroid/widget/AbsSeekBar$Status;->STOP:Landroid/widget/AbsSeekBar$Status;

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    sget-object v6, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iget-object v7, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    :cond_0
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    :cond_1
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .local v4, "thumbOffset":I
    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .local v5, "useDisabledAlpha":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v5, :cond_4

    sget-object v6, Lcom/android/internal/R$styleable;->Theme:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .local v2, "ta":Landroid/content/res/TypedArray;
    const/4 v6, 0x3

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .end local v2    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060118

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->DEFAULT_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060119

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106011e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106011b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106011c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    iget-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11200da

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    iget-boolean v6, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    if-eqz v6, :cond_2

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->initMuteAnimation()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->seekBarFluidInit()V

    :cond_3
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x11600bd

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v1, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v1, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_1
    sput-boolean v6, Landroid/widget/AbsSeekBar;->mIsThemeDeviceDefaultFamily:Z

    return-void

    .end local v1    # "outValue":Landroid/util/TypedValue;
    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    goto/16 :goto_0

    .restart local v1    # "outValue":Landroid/util/TypedValue;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/widget/AbsSeekBar;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsSeekBar;

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/AbsSeekBar;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsSeekBar;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    return p1
.end method

.method private applyThumbTint()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private cancelMuteAnimation()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private checkInvalidatedDualColorMode()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeTail()V
    .locals 1

    .prologue
    sget-object v0, Landroid/widget/AbsSeekBar$Status;->TAIL_CLOSE:Landroid/widget/AbsSeekBar$Status;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private drawFrame(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    iget v2, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-gez v2, :cond_2

    iget v2, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    neg-int v1, v2

    .local v1, "tempIndex":I
    :goto_0
    iget v2, p0, Landroid/widget/AbsSeekBar;->animationTotalFrame:I

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    iget v2, p0, Landroid/widget/AbsSeekBar;->animationTotalFrame:I

    add-int/lit8 v1, v2, -0x1

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBarFluidPath;->getPath(I)Landroid/graphics/Path;

    move-result-object v0

    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-gez v2, :cond_3

    const/high16 v2, 0x42b40000    # 90.0f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_1
    :goto_1
    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/widget/AbsSeekBar;->invalidate(IIII)V

    return-void

    .end local v0    # "path":Landroid/graphics/Path;
    .end local v1    # "tempIndex":I
    :cond_2
    iget v1, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    goto :goto_0

    .restart local v0    # "path":Landroid/graphics/Path;
    .restart local v1    # "tempIndex":I
    :cond_3
    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-lez v2, :cond_1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    :cond_5
    iget v2, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-gez v2, :cond_1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1
.end method

.method private getScale()F
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    .local v0, "max":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initMuteAnimation()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/16 v6, 0x8

    .local v6, "total":I
    const/16 v9, 0x1f4

    div-int v1, v9, v6

    .local v1, "duration":I
    const/16 v0, 0x190

    .local v0, "distance":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_3

    rem-int/lit8 v9, v2, 0x2

    if-nez v9, :cond_1

    move v3, v7

    .local v3, "isGoingDirection":Z
    :goto_1
    if-eqz v3, :cond_2

    new-array v9, v14, [I

    aput v8, v9, v8

    aput v0, v9, v7

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .local v5, "progressZeroAnimation":Landroid/animation/ValueAnimator;
    :goto_2
    int-to-long v10, v1

    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Landroid/widget/AbsSeekBar$1;

    invoke-direct {v9, p0}, Landroid/widget/AbsSeekBar$1;-><init>(Landroid/widget/AbsSeekBar;)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    int-to-double v10, v0

    const-wide v12, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v10, v12

    double-to-int v0, v10

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "isGoingDirection":Z
    .end local v5    # "progressZeroAnimation":Landroid/animation/ValueAnimator;
    :cond_1
    move v3, v8

    goto :goto_1

    .restart local v3    # "isGoingDirection":Z
    :cond_2
    new-array v9, v14, [I

    aput v0, v9, v8

    aput v8, v9, v7

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    goto :goto_2

    .end local v3    # "isGoingDirection":Z
    :cond_3
    iget-object v7, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-void
.end method

.method private openTail(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/widget/AbsSeekBar;->currentSkipFrameWhenActionDown:I

    if-gtz v0, :cond_7

    iget v0, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    if-ge v0, p1, :cond_6

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->tailWidthFromCircleCenter:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    :cond_2
    sget-object v0, Landroid/widget/AbsSeekBar$Side;->RIGHT:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    iget v0, p0, Landroid/widget/AbsSeekBar;->animationTotalFrame:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/widget/AbsSeekBar;->delayedFramesBeforeReduce:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    :cond_3
    :goto_1
    sget-object v0, Landroid/widget/AbsSeekBar$Status;->TAIL_OPEN:Landroid/widget/AbsSeekBar$Status;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    :goto_2
    iput p1, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->tailWidthFromCircleCenter:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->tailWidthFromCircleCenter:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    goto :goto_0

    :cond_6
    iget v0, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    if-le v0, p1, :cond_3

    sget-object v0, Landroid/widget/AbsSeekBar$Side;->LEFT:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    iget v0, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    neg-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    goto :goto_1

    :cond_7
    iget v0, p0, Landroid/widget/AbsSeekBar;->currentSkipFrameWhenActionDown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->currentSkipFrameWhenActionDown:I

    goto :goto_2
.end method

.method private seekBarFluidInit()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->pressedThumbWidth:I

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/SeekBarFluidPath;

    iget v1, p0, Landroid/widget/AbsSeekBar;->pressedThumbWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v1}, Landroid/widget/SeekBarFluidPath;-><init>(F)V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v0}, Landroid/widget/SeekBarFluidPath;->getPathTotal()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationTotalFrame:I

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v0}, Landroid/widget/SeekBarFluidPath;->getCircleTotal()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v0}, Landroid/widget/SeekBarFluidPath;->getTailWidthFromCircleCenter()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->tailWidthFromCircleCenter:F

    return-void
.end method

.method private setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method private setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    goto :goto_0
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 21
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .prologue
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, p1, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    .local v5, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .local v15, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .local v13, "thumbHeight":I
    sub-int/2addr v5, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int v5, v5, v17

    int-to-float v0, v5

    move/from16 v17, v0

    mul-float v17, v17, p3

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .local v14, "thumbPos":I
    const/high16 v17, -0x80000000

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .local v11, "oldBounds":Landroid/graphics/Rect;
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .local v16, "top":I
    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    .end local v11    # "oldBounds":Landroid/graphics/Rect;
    .local v7, "bottom":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    sub-int v8, v5, v14

    .local v8, "left":I
    :goto_2
    add-int v12, v8, v15

    .local v12, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    .local v9, "offsetX":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    .local v10, "offsetY":I
    add-int v17, v8, v9

    add-int v18, v16, v10

    add-int v19, v12, v9

    add-int v20, v7, v10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .end local v9    # "offsetX":I
    .end local v10    # "offsetY":I
    :cond_1
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1, v12, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    add-int v17, v17, v8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    div-int/lit8 v17, v13, 0x2

    add-int v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v13

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    goto/16 :goto_0

    .end local v6    # "background":Landroid/graphics/drawable/Drawable;
    .end local v7    # "bottom":I
    .end local v8    # "left":I
    .end local v12    # "right":I
    .end local v16    # "top":I
    :cond_2
    move/from16 v16, p4

    .restart local v16    # "top":I
    add-int v7, p4, v13

    .restart local v7    # "bottom":I
    goto/16 :goto_1

    :cond_3
    move v8, v14

    goto/16 :goto_2
.end method

.method private setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 21
    .param p1, "h"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .prologue
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v17, v0

    sub-int v17, p1, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .local v4, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .local v15, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .local v13, "thumbHeight":I
    sub-int/2addr v4, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int v4, v4, v17

    int-to-float v0, v4

    move/from16 v17, v0

    mul-float v17, v17, p3

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .local v14, "thumbPos":I
    const/high16 v17, -0x80000000

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .local v11, "oldBounds":Landroid/graphics/Rect;
    iget v8, v11, Landroid/graphics/Rect;->left:I

    .local v8, "left":I
    iget v12, v11, Landroid/graphics/Rect;->right:I

    .end local v11    # "oldBounds":Landroid/graphics/Rect;
    .local v12, "right":I
    :goto_0
    sub-int v16, v4, v14

    .local v16, "top":I
    add-int v6, v16, v13

    .local v6, "bottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    .local v9, "offsetX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    sub-int v10, v17, v18

    .local v10, "offsetY":I
    add-int v17, v8, v9

    add-int v18, v16, v10

    add-int v19, v12, v9

    add-int v20, v6, v10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "offsetX":I
    .end local v10    # "offsetY":I
    :cond_0
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1, v12, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    div-int/lit8 v17, v15, 0x2

    add-int v17, v17, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v17, v0

    add-int v17, v17, v16

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    int-to-float v0, v8

    move/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    return-void

    .end local v5    # "background":Landroid/graphics/drawable/Drawable;
    .end local v6    # "bottom":I
    .end local v8    # "left":I
    .end local v12    # "right":I
    .end local v16    # "top":I
    :cond_1
    move/from16 v8, p4

    .restart local v8    # "left":I
    add-int v12, p4, v15

    .restart local v12    # "right":I
    goto/16 :goto_0
.end method

.method private startMuteAnimation()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelMuteAnimation()V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private trackHoverEvent(II)V
    .locals 7
    .param p1, "posX"    # I
    .param p2, "posY"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .local v4, "width":I
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v5, v4, v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v5, v6

    .local v0, "available":I
    const/4 v1, 0x0

    .local v1, "hoverLevel":F
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge p1, v5, :cond_0

    const/4 v3, 0x0

    .local v3, "scale":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    .local v2, "max":I
    int-to-float v5, v2

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    float-to-int v5, v1

    iput v5, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    return-void

    .end local v2    # "max":I
    .end local v3    # "scale":F
    :cond_0
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le p1, v5, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .end local v3    # "scale":F
    :cond_1
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v3, v5, v6

    .restart local v3    # "scale":F
    iget v1, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEventInVertical(Landroid/view/MotionEvent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v6

    .local v6, "width":I
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v8, v6, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v8, v9

    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v7, v8

    .local v7, "x":I
    const/4 v3, 0x0

    .local v3, "progress":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v8, :cond_4

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v8, v6, v8

    if-le v7, v8, :cond_2

    const/4 v5, 0x0

    .local v5, "scale":F
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    .local v2, "max":I
    int-to-float v8, v2

    div-float v1, v10, v8

    .local v1, "basicWidth":F
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-lez v8, :cond_1

    cmpg-float v8, v5, v10

    if-gez v8, :cond_1

    rem-float v4, v5, v1

    .local v4, "remainder":F
    div-float v8, v1, v11

    cmpl-float v8, v4, v8

    if-lez v8, :cond_1

    div-float v8, v1, v11

    add-float/2addr v5, v8

    .end local v4    # "remainder":F
    :cond_1
    int-to-float v8, v2

    mul-float/2addr v8, v5

    add-float/2addr v3, v8

    int-to-float v8, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-direct {p0, v8, v9}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    float-to-int v8, v3

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    goto :goto_0

    .end local v1    # "basicWidth":F
    .end local v2    # "max":I
    .end local v5    # "scale":F
    :cond_2
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v7, v8, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_1

    .end local v5    # "scale":F
    :cond_3
    sub-int v8, v0, v7

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v5, v8, v9

    .restart local v5    # "scale":F
    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1

    .end local v5    # "scale":F
    :cond_4
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v7, v8, :cond_5

    const/4 v5, 0x0

    .restart local v5    # "scale":F
    goto :goto_1

    .end local v5    # "scale":F
    :cond_5
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v8, v6, v8

    if-le v7, v8, :cond_6

    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_1

    .end local v5    # "scale":F
    :cond_6
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v8, v7, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v5, v8, v9

    .restart local v5    # "scale":F
    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1
.end method

.method private trackTouchEventInVertical(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v1

    .local v1, "height":I
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v6, v1, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v0, v6, v7

    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int v5, v1, v6

    .local v5, "y":I
    const/4 v3, 0x0

    .local v3, "progress":F
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    if-ge v5, v6, :cond_0

    const/4 v4, 0x0

    .local v4, "scale":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    .local v2, "max":I
    int-to-float v6, v2

    mul-float/2addr v6, v4

    add-float/2addr v3, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-direct {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    float-to-int v6, v3

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    return-void

    .end local v2    # "max":I
    .end local v4    # "scale":F
    :cond_0
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v6, v1, v6

    if-le v5, v6, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "scale":F
    goto :goto_0

    .end local v4    # "scale":F
    :cond_1
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v4, v6, v7

    .restart local v4    # "scale":F
    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateBoundsForDualColor()V
    .locals 13

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "base":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v5

    .local v5, "maxProgress":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v2

    .local v2, "curProgress":I
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    sub-int v8, v9, v10

    .local v8, "width":I
    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    int-to-float v10, v8

    iget v11, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v4, v9

    .local v4, "left":I
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v4, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    int-to-float v10, v8

    int-to-float v11, v2

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v6, v9

    .local v6, "right":I
    iget v9, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v4, v10, v6, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .end local v4    # "left":I
    .end local v6    # "right":I
    .end local v8    # "width":I
    :cond_2
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v9, v10

    .local v3, "height":I
    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    int-to-float v10, v3

    iget v11, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    sub-int v11, v5, v11

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v1, v9

    .local v1, "bottom":I
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->top:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10, v11, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    int-to-float v10, v3

    sub-int v11, v5, v2

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v7, v9

    .local v7, "top":I
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10, v7, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0
.end method

.method private updateDualColorMode()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method private updateSplitProgress()V
    .locals 12

    .prologue
    const/high16 v11, 0x41b00000    # 22.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "base":Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    .local v3, "w":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v2

    .local v2, "h":I
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v6, v9

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v7, v11

    div-float/2addr v7, v10

    sub-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    iget v8, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v8, v9

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v9, v11

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .end local v2    # "h":I
    .end local v3    # "w":I
    :cond_3
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private updateThumbAndTrackPos(II)V
    .locals 13
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPosInVertical(II)V

    :goto_0
    return-void

    :cond_0
    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v11, p2, v11

    iget v12, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v2, v11, v12

    .local v2, "paddedHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .local v6, "track":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    iget v11, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .local v7, "trackHeight":I
    if-nez v3, :cond_4

    move v4, v10

    .local v4, "thumbHeight":I
    :goto_1
    const/4 v0, 0x0

    .local v0, "fluidOffset":I
    if-le v4, v7, :cond_5

    sub-int v11, v2, v4

    div-int/lit8 v1, v11, 0x2

    .local v1, "offsetHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    sub-int v11, v4, v7

    rem-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_1

    const/4 v0, 0x1

    :cond_1
    sub-int v11, v4, v7

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v1

    add-int v8, v11, v0

    .local v8, "trackOffset":I
    add-int/lit8 v5, v1, 0x0

    .local v5, "thumbOffset":I
    :goto_2
    if-eqz v6, :cond_2

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v11, p1, v11

    iget v12, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v9, v11, v12

    .local v9, "trackWidth":I
    add-int v11, v8, v7

    invoke-virtual {v6, v10, v8, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .end local v9    # "trackWidth":I
    :cond_2
    if-eqz v3, :cond_3

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v10

    invoke-direct {p0, p1, v3, v10, v5}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_3
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    goto :goto_0

    .end local v0    # "fluidOffset":I
    .end local v1    # "offsetHeight":I
    .end local v4    # "thumbHeight":I
    .end local v5    # "thumbOffset":I
    .end local v8    # "trackOffset":I
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_1

    .restart local v0    # "fluidOffset":I
    .restart local v4    # "thumbHeight":I
    :cond_5
    sub-int v11, v2, v7

    div-int/lit8 v1, v11, 0x2

    .restart local v1    # "offsetHeight":I
    add-int/lit8 v8, v1, 0x0

    .restart local v8    # "trackOffset":I
    sub-int v11, v7, v4

    div-int/lit8 v11, v11, 0x2

    add-int v5, v1, v11

    .restart local v5    # "thumbOffset":I
    goto :goto_2
.end method

.method private updateThumbAndTrackPosInVertical(II)V
    .locals 12
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v9, 0x0

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v10, p1, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v1, v10, v11

    .local v1, "paddedWidth":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, "track":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    iget v10, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .local v8, "trackWidth":I
    if-nez v2, :cond_2

    move v4, v9

    .local v4, "thumbWidth":I
    :goto_0
    if-le v4, v8, :cond_3

    sub-int v10, v1, v4

    div-int/lit8 v0, v10, 0x2

    .local v0, "offsetWidth":I
    sub-int v10, v4, v8

    div-int/lit8 v10, v10, 0x2

    add-int v7, v0, v10

    .local v7, "trackOffset":I
    add-int/lit8 v3, v0, 0x0

    .local v3, "thumbOffset":I
    :goto_1
    if-eqz v5, :cond_0

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v6, v10, v11

    .local v6, "trackHeight":I
    sub-int v10, v1, v7

    invoke-virtual {v5, v7, v9, v10, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .end local v6    # "trackHeight":I
    :cond_0
    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v9

    invoke-direct {p0, p2, v2, v9, v3}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_1
    return-void

    .end local v0    # "offsetWidth":I
    .end local v3    # "thumbOffset":I
    .end local v4    # "thumbWidth":I
    .end local v7    # "trackOffset":I
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    goto :goto_0

    .restart local v4    # "thumbWidth":I
    :cond_3
    sub-int v10, v1, v8

    div-int/lit8 v0, v10, 0x2

    .restart local v0    # "offsetWidth":I
    add-int/lit8 v7, v0, 0x0

    .restart local v7    # "trackOffset":I
    sub-int v10, v8, v4

    div-int/lit8 v10, v10, 0x2

    add-int v3, v0, v10

    .restart local v3    # "thumbOffset":I
    goto :goto_1
.end method

.method private updateWarningMode(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ne p1, v1, :cond_1

    .local v0, "isMax":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    .end local v0    # "isMax":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "isMax":Z
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method


# virtual methods
.method drawThumb(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .local v3, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .local v2, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .local v1, "saveCount":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "saveCount":I
    .end local v2    # "tempRect":Landroid/graphics/Rect;
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    if-le v4, v5, :cond_0

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    :cond_4
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget v2, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void

    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbCentralX()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    return v0
.end method

.method public getThumbCentralY()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    return v0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getThumbWith()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public isFluidEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    sget-object v1, Landroid/widget/AbsSeekBar$Status;->TAIL_CLOSE:Landroid/widget/AbsSeekBar$Status;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->RIGHT:Landroid/widget/AbsSeekBar$Side;

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-nez v0, :cond_2

    sget-object v0, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->LEFT:Landroid/widget/AbsSeekBar$Side;

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    sget-object v1, Landroid/widget/AbsSeekBar$Status;->TAIL_OPEN:Landroid/widget/AbsSeekBar$Status;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->RIGHT:Landroid/widget/AbsSeekBar$Side;

    if-ne v0, v1, :cond_7

    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    :cond_5
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    if-lt v0, v1, :cond_6

    iget v0, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->closeTail()V

    :cond_6
    :goto_2
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->LEFT:Landroid/widget/AbsSeekBar$Side;

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    neg-int v1, v1

    if-le v0, v1, :cond_8

    iget v0, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    neg-int v0, v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    :cond_8
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    if-gt v0, v1, :cond_6

    iget v0, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->closeTail()V

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->closeTail()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method onHoverChanged(III)V
    .locals 0
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    if-ne v5, v4, :cond_1

    :cond_0
    move v1, v4

    .local v1, "isPossibleTooltype":Z
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .local v3, "y":I
    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/AbsSeekBar;->onStartTrackingHover(III)V

    .end local v0    # "action":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .restart local v0    # "action":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_3
    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/AbsSeekBar;->onHoverChanged(III)V

    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoverPopupType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    goto :goto_0

    :cond_4
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingHover()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .local v0, "progress":I
    if-lez v0, :cond_0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .local v0, "increment":I
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    packed-switch p1, :pswitch_data_0

    .end local v0    # "increment":I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .restart local v0    # "increment":I
    :pswitch_0
    neg-int v0, v0

    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    neg-int v0, v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_1

    :cond_2
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    neg-int v0, v0

    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    neg-int v0, v0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "dw":I
    const/4 v1, 0x0

    .local v1, "dh":I
    if-eqz v0, :cond_0

    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    move v4, v3

    .local v4, "thumbWidth":I
    :goto_0
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .end local v4    # "thumbWidth":I
    :cond_0
    :goto_1
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    const/4 v5, 0x0

    invoke-static {v2, p1, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v1, p2, v6}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_3

    .local v3, "thumbHeight":I
    :goto_2
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .end local v3    # "thumbHeight":I
    :cond_3
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_2

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method onProgressRefresh(FZI)V
    .locals 5
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .prologue
    const/4 v3, 0x0

    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v4, p1

    float-to-int v1, v4

    .local v1, "targetLevel":I
    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .local v0, "isMuteAnimationNeeded":Z
    :goto_0
    if-eqz v0, :cond_2

    iget v4, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->startMuteAnimation()V

    :cond_0
    :goto_1
    return-void

    .end local v0    # "isMuteAnimationNeeded":Z
    :cond_1
    move v0, v3

    goto :goto_0

    .restart local v0    # "isMuteAnimationNeeded":Z
    :cond_2
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelMuteAnimation()V

    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    iput v1, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-direct {p0, v3, v2, p1, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/AbsSeekBar;->openTail(I)V

    goto :goto_1
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    return-void
.end method

.method protected onSlidingRefresh(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onSlidingRefresh(I)V

    int-to-float v2, p1

    const v3, 0x461c4000    # 10000.0f

    div-float v0, v2, v3

    .local v0, "scale":F
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v2, v1, v0, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 0
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method onStopTrackingHover()V
    .locals 0

    .prologue
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    const/16 v5, 0x64

    if-lt v2, v5, :cond_4

    iget v2, p0, Landroid/widget/AbsSeekBar;->skipFrameWhenActionDown:I

    :goto_1
    iput v2, p0, Landroid/widget/AbsSeekBar;->currentSkipFrameWhenActionDown:I

    iput v4, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    sget-object v2, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownY:F

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_7

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .local v1, "y":F
    invoke-virtual {p0, v6}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_9

    :cond_8
    invoke-virtual {p0, v6}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownY:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    :cond_9
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    :cond_a
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto/16 :goto_0

    .end local v0    # "x":F
    .end local v1    # "y":F
    :pswitch_2
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-eqz v2, :cond_b

    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    :cond_b
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_c

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_2

    :pswitch_3
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x2000

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/16 v3, 0x1000

    if-eq p1, v3, :cond_2

    if-ne p1, v5, :cond_6

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "increment":I
    sget-boolean v3, Landroid/widget/AbsSeekBar;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41f00000    # 30.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_3
    if-ne p1, v5, :cond_4

    neg-int v0, v0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "increment":I
    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method public setDefaultColorForVolumePanel(Z)V
    .locals 3
    .param p1, "isClearCoverOpened"    # Z

    .prologue
    const v2, 0x106011c

    if-eqz p1, :cond_0

    const-string v0, "#ffe3e0e0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    const-string v0, "#ff56c0e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    const-string v0, "#ff56c0e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    const-string v0, "#fff7cdbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    const-string v0, "#fff1662f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    const-string v0, "#fff1662f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setFluidColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setFluidEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_active_themepackage"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    :goto_0
    sget-boolean v1, Landroid/widget/AbsSeekBar;->SCAFE_ENABLED:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    if-nez v1, :cond_2

    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    :goto_1
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->seekBarFluidInit()V

    :cond_0
    return-void

    :cond_1
    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    goto :goto_1
.end method

.method public setHoverPopupType(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x3231

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMeasuredHeight()I

    move-result v0

    .local v0, "contentHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .end local v0    # "contentHeight":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setHoverPopupType(I)V

    goto :goto_0
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .param p1, "increment"    # I

    .prologue
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1    # "increment":I
    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMode(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void

    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x10809fe

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v0    # "thumb":Landroid/graphics/drawable/Drawable;
    :pswitch_3
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x1080a18

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x1080a19

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setMuteAnimation(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    :cond_0
    return-void
.end method

.method public setOverlapBackgroundForDualColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .local v0, "mOverlapColor":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    return-void
.end method

.method public setOverlapPointForDualColor(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const v2, 0x1080a04

    const v1, 0x1080a02

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    iput p1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput p1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public setProgress(IZ)Z
    .locals 1
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->setProgress(IZ)Z

    move-result v0

    .local v0, "superRet":Z
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    return v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgressDrawableForAutoBrightness(Z)V
    .locals 0
    .param p1, "auto"    # Z

    .prologue
    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setSplitProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    .local v0, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    :cond_2
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .end local v1    # "state":[I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->pressedThumbWidth:I

    :cond_4
    return-void

    .end local v0    # "needUpdate":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "needUpdate":Z
    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    goto :goto_1
.end method

.method public setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    .prologue
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setThumbTintColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .local v0, "mOverlapColor":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    goto :goto_0
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    return-void
.end method

.method protected updateDrawableBounds(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
