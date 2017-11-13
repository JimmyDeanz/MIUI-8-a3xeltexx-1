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
    .line 160
    const-string/jumbo v0, "ro.build.scafe.version"

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

    .line 176
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 78
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 79
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 80
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 81
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 95
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 101
    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 119
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 131
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    .line 132
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 134
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 135
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 141
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    .line 148
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/AbsSeekBar;->delayedFramesBeforeReduce:I

    .line 149
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/AbsSeekBar;->skipFrameWhenActionDown:I

    .line 155
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 157
    sget-object v0, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 158
    sget-object v0, Landroid/widget/AbsSeekBar$Status;->STOP:Landroid/widget/AbsSeekBar$Status;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    .line 159
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    .line 177
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

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 78
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 79
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 80
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 81
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 95
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 101
    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 119
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 131
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    .line 132
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 134
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 135
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 141
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    .line 148
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/AbsSeekBar;->delayedFramesBeforeReduce:I

    .line 149
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/AbsSeekBar;->skipFrameWhenActionDown:I

    .line 155
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 157
    sget-object v0, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 158
    sget-object v0, Landroid/widget/AbsSeekBar$Status;->STOP:Landroid/widget/AbsSeekBar$Status;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    .line 159
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 78
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 79
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 80
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 81
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 95
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 101
    const/4 v6, 0x1

    iput v6, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 119
    const/4 v6, 0x0

    iput v6, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 123
    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 131
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    .line 132
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 134
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 135
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 141
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    .line 148
    const/4 v6, 0x5

    iput v6, p0, Landroid/widget/AbsSeekBar;->delayedFramesBeforeReduce:I

    .line 149
    const/4 v6, 0x3

    iput v6, p0, Landroid/widget/AbsSeekBar;->skipFrameWhenActionDown:I

    .line 155
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 157
    sget-object v6, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 158
    sget-object v6, Landroid/widget/AbsSeekBar$Status;->STOP:Landroid/widget/AbsSeekBar$Status;

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    .line 159
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    .line 190
    sget-object v6, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 193
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 194
    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 196
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 197
    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iget-object v7, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 199
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 202
    :cond_0
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 203
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 204
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 207
    :cond_1
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 210
    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 211
    .local v4, "thumbOffset":I
    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 213
    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 214
    .local v5, "useDisabledAlpha":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    if-eqz v5, :cond_4

    .line 217
    sget-object v6, Lcom/android/internal/R$styleable;->Theme:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 218
    .local v2, "ta":Landroid/content/res/TypedArray;
    const/4 v6, 0x3

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 219
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 226
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060118

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->DEFAULT_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060119

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106011e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106011b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106011c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 239
    iget-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11200da

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    .line 242
    iget-boolean v6, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    if-eqz v6, :cond_2

    .line 243
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->initMuteAnimation()V

    .line 245
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 246
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->seekBarFluidInit()V

    .line 248
    :cond_3
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 249
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x11600bd

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v1, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 250
    iget v6, v1, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_1
    sput-boolean v6, Landroid/widget/AbsSeekBar;->mIsThemeDeviceDefaultFamily:Z

    .line 252
    return-void

    .line 221
    .end local v1    # "outValue":Landroid/util/TypedValue;
    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    goto/16 :goto_0

    .line 250
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/widget/AbsSeekBar;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsSeekBar;

    .prologue
    .line 72
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/AbsSeekBar;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsSeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    return p1
.end method

.method private applyThumbTint()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    .line 439
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 441
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 445
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 451
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 455
    :cond_3
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 1197
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1200
    :cond_0
    return-void
.end method

.method private cancelMuteAnimation()V
    .locals 1

    .prologue
    .line 1693
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1696
    :cond_0
    return-void
.end method

.method private checkInvalidatedDualColorMode()Z
    .locals 2

    .prologue
    .line 1634
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
    .line 630
    sget-object v0, Landroid/widget/AbsSeekBar$Status;->TAIL_CLOSE:Landroid/widget/AbsSeekBar$Status;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    .line 631
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1648
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 1649
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

    .line 928
    iget v2, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-gez v2, :cond_2

    iget v2, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    neg-int v1, v2

    .line 929
    .local v1, "tempIndex":I
    :goto_0
    iget v2, p0, Landroid/widget/AbsSeekBar;->animationTotalFrame:I

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    iget v2, p0, Landroid/widget/AbsSeekBar;->animationTotalFrame:I

    add-int/lit8 v1, v2, -0x1

    .line 930
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBarFluidPath;->getPath(I)Landroid/graphics/Path;

    move-result-object v0

    .line 932
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 933
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 934
    iget v2, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-gez v2, :cond_3

    .line 935
    const/high16 v2, 0x42b40000    # 90.0f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 947
    :cond_1
    :goto_1
    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 948
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 949
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 950
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/widget/AbsSeekBar;->invalidate(IIII)V

    .line 951
    return-void

    .line 928
    .end local v0    # "path":Landroid/graphics/Path;
    .end local v1    # "tempIndex":I
    :cond_2
    iget v1, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    goto :goto_0

    .line 937
    .restart local v0    # "path":Landroid/graphics/Path;
    .restart local v1    # "tempIndex":I
    :cond_3
    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 939
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_5

    .line 940
    iget v2, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-lez v2, :cond_1

    .line 941
    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 943
    :cond_5
    iget v2, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-gez v2, :cond_1

    .line 944
    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1
.end method

.method private getScale()F
    .locals 3

    .prologue
    .line 720
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    .line 721
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

    .line 1667
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    .line 1669
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1670
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/16 v6, 0x8

    .line 1671
    .local v6, "total":I
    const/16 v9, 0x1f4

    div-int v1, v9, v6

    .line 1672
    .local v1, "duration":I
    const/16 v0, 0x190

    .line 1673
    .local v0, "distance":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_3

    .line 1674
    rem-int/lit8 v9, v2, 0x2

    if-nez v9, :cond_1

    move v3, v7

    .line 1675
    .local v3, "isGoingDirection":Z
    :goto_1
    if-eqz v3, :cond_2

    new-array v9, v14, [I

    aput v8, v9, v8

    aput v0, v9, v7

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 1676
    .local v5, "progressZeroAnimation":Landroid/animation/ValueAnimator;
    :goto_2
    int-to-long v10, v1

    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1677
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1678
    new-instance v9, Landroid/widget/AbsSeekBar$1;

    invoke-direct {v9, p0}, Landroid/widget/AbsSeekBar$1;-><init>(Landroid/widget/AbsSeekBar;)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1684
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1685
    if-eqz v3, :cond_0

    .line 1686
    int-to-double v10, v0

    const-wide v12, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v10, v12

    double-to-int v0, v10

    .line 1673
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "isGoingDirection":Z
    .end local v5    # "progressZeroAnimation":Landroid/animation/ValueAnimator;
    :cond_1
    move v3, v8

    .line 1674
    goto :goto_1

    .line 1675
    .restart local v3    # "isGoingDirection":Z
    :cond_2
    new-array v9, v14, [I

    aput v0, v9, v8

    aput v8, v9, v7

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    goto :goto_2

    .line 1689
    .end local v3    # "isGoingDirection":Z
    :cond_3
    iget-object v7, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 1690
    return-void
.end method

.method private openTail(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 598
    iget v0, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    if-ne v0, p1, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    iget v0, p0, Landroid/widget/AbsSeekBar;->currentSkipFrameWhenActionDown:I

    if-gtz v0, :cond_7

    .line 602
    iget v0, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    if-ge v0, p1, :cond_6

    .line 603
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 604
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

    .line 616
    :cond_2
    sget-object v0, Landroid/widget/AbsSeekBar$Side;->RIGHT:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 617
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationTotalFrame:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/widget/AbsSeekBar;->delayedFramesBeforeReduce:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    .line 622
    :cond_3
    :goto_1
    sget-object v0, Landroid/widget/AbsSeekBar$Status;->TAIL_OPEN:Landroid/widget/AbsSeekBar$Status;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    .line 626
    :goto_2
    iput p1, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    goto :goto_0

    .line 607
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v0, :cond_5

    .line 608
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

    .line 612
    :cond_5
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->tailWidthFromCircleCenter:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    goto :goto_0

    .line 618
    :cond_6
    iget v0, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    if-le v0, p1, :cond_3

    .line 619
    sget-object v0, Landroid/widget/AbsSeekBar$Side;->LEFT:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 620
    iget v0, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    neg-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    goto :goto_1

    .line 624
    :cond_7
    iget v0, p0, Landroid/widget/AbsSeekBar;->currentSkipFrameWhenActionDown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->currentSkipFrameWhenActionDown:I

    goto :goto_2
.end method

.method private seekBarFluidInit()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    .line 259
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 261
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    .line 263
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->pressedThumbWidth:I

    .line 266
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    if-nez v0, :cond_2

    .line 267
    new-instance v0, Landroid/widget/SeekBarFluidPath;

    iget v1, p0, Landroid/widget/AbsSeekBar;->pressedThumbWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v1}, Landroid/widget/SeekBarFluidPath;-><init>(F)V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    .line 268
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v0}, Landroid/widget/SeekBarFluidPath;->getPathTotal()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationTotalFrame:I

    .line 269
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v0}, Landroid/widget/SeekBarFluidPath;->getCircleTotal()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    .line 270
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    .line 271
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v0}, Landroid/widget/SeekBarFluidPath;->getTailWidthFromCircleCenter()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->tailWidthFromCircleCenter:F

    .line 273
    return-void
.end method

.method private setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1119
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1120
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1123
    :cond_0
    return-void
.end method

.method private setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1822
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1823
    return-void
.end method

.method private setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1801
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 1802
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 1804
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 1806
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1807
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 1808
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    .line 1812
    :cond_0
    :goto_0
    return-void

    .line 1810
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
    .line 734
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    .line 781
    :goto_0
    return-void

    .line 739
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, p1, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    .line 740
    .local v5, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 741
    .local v15, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 742
    .local v13, "thumbHeight":I
    sub-int/2addr v5, v15

    .line 745
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int v5, v5, v17

    .line 747
    int-to-float v0, v5

    move/from16 v17, v0

    mul-float v17, v17, p3

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 750
    .local v14, "thumbPos":I
    const/high16 v17, -0x80000000

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 752
    .local v11, "oldBounds":Landroid/graphics/Rect;
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 753
    .local v16, "top":I
    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    .line 759
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

    .line 760
    .local v8, "left":I
    :goto_2
    add-int v12, v8, v15

    .line 762
    .local v12, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 763
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 764
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    .line 765
    .local v9, "offsetX":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    .line 766
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

    .line 771
    .end local v9    # "offsetX":I
    .end local v10    # "offsetY":I
    :cond_1
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1, v12, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 774
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    add-int v17, v17, v8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    .line 775
    div-int/lit8 v17, v13, 0x2

    add-int v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    .line 777
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

    .line 778
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

    .line 780
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    goto/16 :goto_0

    .line 755
    .end local v6    # "background":Landroid/graphics/drawable/Drawable;
    .end local v7    # "bottom":I
    .end local v8    # "left":I
    .end local v12    # "right":I
    .end local v16    # "top":I
    :cond_2
    move/from16 v16, p4

    .line 756
    .restart local v16    # "top":I
    add-int v7, p4, v13

    .restart local v7    # "bottom":I
    goto/16 :goto_1

    :cond_3
    move v8, v14

    .line 759
    goto/16 :goto_2
.end method

.method private setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 21
    .param p1, "h"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .prologue
    .line 784
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v17, v0

    sub-int v17, p1, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 785
    .local v4, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 786
    .local v15, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 787
    .local v13, "thumbHeight":I
    sub-int/2addr v4, v13

    .line 790
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int v4, v4, v17

    .line 792
    int-to-float v0, v4

    move/from16 v17, v0

    mul-float v17, v17, p3

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 795
    .local v14, "thumbPos":I
    const/high16 v17, -0x80000000

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 797
    .local v11, "oldBounds":Landroid/graphics/Rect;
    iget v8, v11, Landroid/graphics/Rect;->left:I

    .line 798
    .local v8, "left":I
    iget v12, v11, Landroid/graphics/Rect;->right:I

    .line 804
    .end local v11    # "oldBounds":Landroid/graphics/Rect;
    .local v12, "right":I
    :goto_0
    sub-int v16, v4, v14

    .line 805
    .local v16, "top":I
    add-int v6, v16, v13

    .line 807
    .local v6, "bottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 808
    .local v5, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 809
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 810
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    .line 811
    .local v9, "offsetX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    sub-int v10, v17, v18

    .line 813
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

    .line 818
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "offsetX":I
    .end local v10    # "offsetY":I
    :cond_0
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1, v12, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 821
    div-int/lit8 v17, v15, 0x2

    add-int v17, v17, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    .line 822
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v17, v0

    add-int v17, v17, v16

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    .line 824
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

    .line 825
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    .line 826
    return-void

    .line 800
    .end local v5    # "background":Landroid/graphics/drawable/Drawable;
    .end local v6    # "bottom":I
    .end local v8    # "left":I
    .end local v12    # "right":I
    .end local v16    # "top":I
    :cond_1
    move/from16 v8, p4

    .line 801
    .restart local v8    # "left":I
    add-int v12, p4, v15

    .restart local v12    # "right":I
    goto/16 :goto_0
.end method

.method private startMuteAnimation()V
    .locals 1

    .prologue
    .line 1699
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelMuteAnimation()V

    .line 1701
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1702
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1704
    :cond_0
    return-void
.end method

.method private trackHoverEvent(II)V
    .locals 7
    .param p1, "posX"    # I
    .param p2, "posY"    # I

    .prologue
    .line 1367
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .line 1368
    .local v4, "width":I
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v5, v4, v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1370
    .local v0, "available":I
    const/4 v1, 0x0

    .line 1372
    .local v1, "hoverLevel":F
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge p1, v5, :cond_0

    .line 1373
    const/4 v3, 0x0

    .line 1381
    .local v3, "scale":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    .line 1382
    .local v2, "max":I
    int-to-float v5, v2

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    .line 1383
    float-to-int v5, v1

    iput v5, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 1384
    return-void

    .line 1374
    .end local v2    # "max":I
    .end local v3    # "scale":F
    :cond_0
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le p1, v5, :cond_1

    .line 1375
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 1377
    .end local v3    # "scale":F
    :cond_1
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v3, v5, v6

    .line 1378
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

    .line 1126
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1127
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEventInVertical(Landroid/view/MotionEvent;)V

    .line 1169
    :goto_0
    return-void

    .line 1131
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v6

    .line 1132
    .local v6, "width":I
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v8, v6, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 1133
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v7, v8

    .line 1135
    .local v7, "x":I
    const/4 v3, 0x0

    .line 1136
    .local v3, "progress":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v8, :cond_4

    .line 1137
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v8, v6, v8

    if-le v7, v8, :cond_2

    .line 1138
    const/4 v5, 0x0

    .line 1155
    .local v5, "scale":F
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    .line 1156
    .local v2, "max":I
    int-to-float v8, v2

    div-float v1, v10, v8

    .line 1158
    .local v1, "basicWidth":F
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-lez v8, :cond_1

    cmpg-float v8, v5, v10

    if-gez v8, :cond_1

    .line 1159
    rem-float v4, v5, v1

    .line 1160
    .local v4, "remainder":F
    div-float v8, v1, v11

    cmpl-float v8, v4, v8

    if-lez v8, :cond_1

    .line 1161
    div-float v8, v1, v11

    add-float/2addr v5, v8

    .line 1165
    .end local v4    # "remainder":F
    :cond_1
    int-to-float v8, v2

    mul-float/2addr v8, v5

    add-float/2addr v3, v8

    .line 1167
    int-to-float v8, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-direct {p0, v8, v9}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    .line 1168
    float-to-int v8, v3

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    goto :goto_0

    .line 1139
    .end local v1    # "basicWidth":F
    .end local v2    # "max":I
    .end local v5    # "scale":F
    :cond_2
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v7, v8, :cond_3

    .line 1140
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_1

    .line 1142
    .end local v5    # "scale":F
    :cond_3
    sub-int v8, v0, v7

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v5, v8, v9

    .line 1143
    .restart local v5    # "scale":F
    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1

    .line 1146
    .end local v5    # "scale":F
    :cond_4
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v7, v8, :cond_5

    .line 1147
    const/4 v5, 0x0

    .restart local v5    # "scale":F
    goto :goto_1

    .line 1148
    .end local v5    # "scale":F
    :cond_5
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v8, v6, v8

    if-le v7, v8, :cond_6

    .line 1149
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_1

    .line 1151
    .end local v5    # "scale":F
    :cond_6
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v8, v7, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v5, v8, v9

    .line 1152
    .restart local v5    # "scale":F
    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1
.end method

.method private trackTouchEventInVertical(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1172
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v1

    .line 1173
    .local v1, "height":I
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v6, v1, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v0, v6, v7

    .line 1174
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int v5, v1, v6

    .line 1176
    .local v5, "y":I
    const/4 v3, 0x0

    .line 1177
    .local v3, "progress":F
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    if-ge v5, v6, :cond_0

    .line 1178
    const/4 v4, 0x0

    .line 1185
    .local v4, "scale":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    .line 1186
    .local v2, "max":I
    int-to-float v6, v2

    mul-float/2addr v6, v4

    add-float/2addr v3, v6

    .line 1188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-direct {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    .line 1189
    float-to-int v6, v3

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    .line 1190
    return-void

    .line 1179
    .end local v2    # "max":I
    .end local v4    # "scale":F
    :cond_0
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v6, v1, v6

    if-le v5, v6, :cond_1

    .line 1180
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "scale":F
    goto :goto_0

    .line 1182
    .end local v4    # "scale":F
    :cond_1
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v4, v6, v7

    .line 1183
    .restart local v4    # "scale":F
    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateBoundsForDualColor()V
    .locals 13

    .prologue
    .line 1606
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1629
    :cond_0
    :goto_0
    return-void

    .line 1610
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1611
    .local v0, "base":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v5

    .line 1612
    .local v5, "maxProgress":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v2

    .line 1613
    .local v2, "curProgress":I
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1614
    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    sub-int v8, v9, v10

    .line 1615
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

    .line 1616
    .local v4, "left":I
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v4, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1618
    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    int-to-float v10, v8

    int-to-float v11, v2

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v6, v9

    .line 1619
    .local v6, "right":I
    iget v9, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1620
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v4, v10, v6, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 1621
    .end local v4    # "left":I
    .end local v6    # "right":I
    .end local v8    # "width":I
    :cond_2
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1622
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v9, v10

    .line 1623
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

    .line 1624
    .local v1, "bottom":I
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->top:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10, v11, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1626
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

    .line 1627
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
    .line 1585
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1603
    :goto_0
    return-void

    .line 1589
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1590
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1592
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    if-nez v0, :cond_1

    .line 1593
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    if-le v0, v1, :cond_2

    .line 1594
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1595
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1602
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    goto :goto_0

    .line 1597
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1598
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

    .line 832
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 835
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 836
    .local v0, "base":Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    .line 847
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_3

    .line 848
    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 855
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    .line 856
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v2

    .line 858
    .local v2, "h":I
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 859
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

    .line 851
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

    .line 642
    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 643
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPosInVertical(II)V

    .line 684
    :goto_0
    return-void

    .line 647
    :cond_0
    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v11, p2, v11

    iget v12, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v2, v11, v12

    .line 648
    .local v2, "paddedHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 649
    .local v6, "track":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 653
    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    iget v11, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 654
    .local v7, "trackHeight":I
    if-nez v3, :cond_4

    move v4, v10

    .line 660
    .local v4, "thumbHeight":I
    :goto_1
    const/4 v0, 0x0

    .line 662
    .local v0, "fluidOffset":I
    if-le v4, v7, :cond_5

    .line 663
    sub-int v11, v2, v4

    div-int/lit8 v1, v11, 0x2

    .line 664
    .local v1, "offsetHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    sub-int v11, v4, v7

    rem-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_1

    .line 665
    const/4 v0, 0x1

    .line 666
    :cond_1
    sub-int v11, v4, v7

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v1

    add-int v8, v11, v0

    .line 667
    .local v8, "trackOffset":I
    add-int/lit8 v5, v1, 0x0

    .line 674
    .local v5, "thumbOffset":I
    :goto_2
    if-eqz v6, :cond_2

    .line 675
    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v11, p1, v11

    iget v12, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v9, v11, v12

    .line 676
    .local v9, "trackWidth":I
    add-int v11, v8, v7

    invoke-virtual {v6, v10, v8, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 679
    .end local v9    # "trackWidth":I
    :cond_2
    if-eqz v3, :cond_3

    .line 680
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v10

    invoke-direct {p0, p1, v3, v10, v5}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 683
    :cond_3
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    goto :goto_0

    .line 654
    .end local v0    # "fluidOffset":I
    .end local v1    # "offsetHeight":I
    .end local v4    # "thumbHeight":I
    .end local v5    # "thumbOffset":I
    .end local v8    # "trackOffset":I
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_1

    .line 669
    .restart local v0    # "fluidOffset":I
    .restart local v4    # "thumbHeight":I
    :cond_5
    sub-int v11, v2, v7

    div-int/lit8 v1, v11, 0x2

    .line 670
    .restart local v1    # "offsetHeight":I
    add-int/lit8 v8, v1, 0x0

    .line 671
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

    .line 687
    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v10, p1, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v1, v10, v11

    .line 688
    .local v1, "paddedWidth":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 689
    .local v5, "track":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 693
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    iget v10, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 694
    .local v8, "trackWidth":I
    if-nez v2, :cond_2

    move v4, v9

    .line 699
    .local v4, "thumbWidth":I
    :goto_0
    if-le v4, v8, :cond_3

    .line 700
    sub-int v10, v1, v4

    div-int/lit8 v0, v10, 0x2

    .line 701
    .local v0, "offsetWidth":I
    sub-int v10, v4, v8

    div-int/lit8 v10, v10, 0x2

    add-int v7, v0, v10

    .line 702
    .local v7, "trackOffset":I
    add-int/lit8 v3, v0, 0x0

    .line 709
    .local v3, "thumbOffset":I
    :goto_1
    if-eqz v5, :cond_0

    .line 710
    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v6, v10, v11

    .line 711
    .local v6, "trackHeight":I
    sub-int v10, v1, v7

    invoke-virtual {v5, v7, v9, v10, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 714
    .end local v6    # "trackHeight":I
    :cond_0
    if-eqz v2, :cond_1

    .line 715
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v9

    invoke-direct {p0, p2, v2, v9, v3}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    .line 717
    :cond_1
    return-void

    .line 694
    .end local v0    # "offsetWidth":I
    .end local v3    # "thumbOffset":I
    .end local v4    # "thumbWidth":I
    .end local v7    # "trackOffset":I
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    goto :goto_0

    .line 704
    .restart local v4    # "thumbWidth":I
    :cond_3
    sub-int v10, v1, v8

    div-int/lit8 v0, v10, 0x2

    .line 705
    .restart local v0    # "offsetWidth":I
    add-int/lit8 v7, v0, 0x0

    .line 706
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

    .line 1653
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1654
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1656
    .local v0, "isMax":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1657
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1658
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1664
    .end local v0    # "isMax":Z
    :cond_0
    :goto_1
    return-void

    .line 1654
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1660
    .restart local v0    # "isMax":Z
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1661
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method


# virtual methods
.method drawThumb(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 996
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1000
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1001
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1005
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1006
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1008
    :cond_0
    return-void

    .line 1003
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
    .line 955
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 956
    .local v3, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    if-eqz v4, :cond_2

    .line 957
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 958
    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 959
    .local v2, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 960
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 961
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 962
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 964
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 965
    .local v1, "saveCount":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 966
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 967
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 972
    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "saveCount":I
    .end local v2    # "tempRect":Landroid/graphics/Rect;
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 973
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 974
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 975
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 984
    :goto_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 985
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    if-le v4, v5, :cond_0

    .line 986
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 988
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 990
    :cond_1
    return-void

    .line 969
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 977
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_4

    .line 978
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 979
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 981
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
    .line 559
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    .line 561
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 564
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 544
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 546
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 547
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget v2, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 548
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 551
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 552
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 555
    :cond_1
    return-void

    .line 548
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
    .line 1276
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbCentralX()I
    .locals 1

    .prologue
    .line 1454
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    return v0
.end method

.method public getThumbCentralY()I
    .locals 1

    .prologue
    .line 1464
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    return v0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getThumbWith()I
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public isFluidEnabled()Z
    .locals 1

    .prologue
    .line 1789
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 535
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 537
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 540
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 881
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 882
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 884
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 886
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V

    .line 888
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 890
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    sget-object v1, Landroid/widget/AbsSeekBar$Status;->TAIL_CLOSE:Landroid/widget/AbsSeekBar$Status;

    if-ne v0, v1, :cond_4

    .line 892
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->RIGHT:Landroid/widget/AbsSeekBar$Side;

    if-ne v0, v1, :cond_3

    .line 893
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 894
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V

    .line 899
    :cond_1
    :goto_0
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-nez v0, :cond_2

    .line 900
    sget-object v0, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 895
    :cond_3
    :try_start_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->LEFT:Landroid/widget/AbsSeekBar$Side;

    if-ne v0, v1, :cond_1

    .line 896
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 897
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 881
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 903
    :cond_4
    :try_start_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    sget-object v1, Landroid/widget/AbsSeekBar$Status;->TAIL_OPEN:Landroid/widget/AbsSeekBar$Status;

    if-ne v0, v1, :cond_2

    .line 905
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->RIGHT:Landroid/widget/AbsSeekBar$Side;

    if-ne v0, v1, :cond_7

    .line 906
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 907
    :cond_5
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 908
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    if-lt v0, v1, :cond_6

    .line 909
    iget v0, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 910
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->closeTail()V

    .line 922
    :cond_6
    :goto_2
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 912
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->LEFT:Landroid/widget/AbsSeekBar$Side;

    if-ne v0, v1, :cond_9

    .line 913
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    neg-int v1, v1

    if-le v0, v1, :cond_8

    iget v0, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    neg-int v0, v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 914
    :cond_8
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 915
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    if-gt v0, v1, :cond_6

    .line 916
    iget v0, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 917
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->closeTail()V

    goto :goto_2

    .line 920
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
    .line 1364
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1410
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    if-ne v5, v4, :cond_1

    :cond_0
    move v1, v4

    .line 1413
    .local v1, "isPossibleTooltype":Z
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 1414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1415
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 1416
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 1417
    .local v3, "y":I
    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    .line 1419
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    .line 1420
    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/AbsSeekBar;->onStartTrackingHover(III)V

    .line 1436
    .end local v0    # "action":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 1421
    .restart local v0    # "action":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_3
    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    .line 1422
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    .line 1423
    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/AbsSeekBar;->onHoverChanged(III)V

    .line 1425
    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoverPopupType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1429
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    goto :goto_0

    .line 1431
    :cond_4
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    .line 1432
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingHover()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1282
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1284
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1285
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 1286
    .local v0, "progress":I
    if-lez v0, :cond_0

    .line 1287
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1289
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1290
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1293
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 1221
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1225
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1226
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 1227
    .local v0, "increment":I
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1228
    packed-switch p1, :pswitch_data_0

    .line 1260
    .end local v0    # "increment":I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 1230
    .restart local v0    # "increment":I
    :pswitch_0
    neg-int v0, v0

    .line 1233
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    neg-int v0, v0

    .line 1236
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1237
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_1

    .line 1243
    :cond_2
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1245
    :pswitch_2
    neg-int v0, v0

    .line 1248
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    neg-int v0, v0

    .line 1251
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1252
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_1

    .line 1228
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1243
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

    .line 1012
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1014
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 1015
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 1016
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 1017
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1018
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    move v4, v3

    .line 1019
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

    .line 1020
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1021
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1029
    .end local v4    # "thumbWidth":I
    :cond_0
    :goto_1
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 1030
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 1032
    const/4 v5, 0x0

    invoke-static {v2, p1, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v1, p2, v6}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    monitor-exit p0

    return-void

    .line 1018
    :cond_1
    :try_start_1
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_0

    .line 1023
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_3

    .line 1024
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

    .line 1025
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1026
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 1023
    .end local v3    # "thumbHeight":I
    :cond_3
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_2

    .line 1012
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

    .line 568
    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v4, p1

    float-to-int v1, v4

    .line 570
    .local v1, "targetLevel":I
    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 572
    .local v0, "isMuteAnimationNeeded":Z
    :goto_0
    if-eqz v0, :cond_2

    iget v4, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    .line 573
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->startMuteAnimation()V

    .line 595
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isMuteAnimationNeeded":Z
    :cond_1
    move v0, v3

    .line 570
    goto :goto_0

    .line 575
    .restart local v0    # "isMuteAnimationNeeded":Z
    :cond_2
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelMuteAnimation()V

    .line 577
    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 578
    iput v1, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    .line 580
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V

    .line 582
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 583
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_3

    .line 584
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-direct {p0, v3, v2, p1, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 589
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 592
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 593
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/AbsSeekBar;->openTail(I)V

    goto :goto_1
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 872
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    .line 874
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 877
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1332
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    .line 1334
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1335
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1336
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1341
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1343
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
    .line 635
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 639
    return-void
.end method

.method protected onSlidingRefresh(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 1719
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onSlidingRefresh(I)V

    .line 1721
    int-to-float v2, p1

    const v3, 0x461c4000    # 10000.0f

    div-float v0, v2, v3

    .line 1722
    .local v0, "scale":F
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1723
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 1724
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v2, v1, v0, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1729
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1731
    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 0
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 1350
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 1206
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 1207
    return-void
.end method

.method onStopTrackingHover()V
    .locals 0

    .prologue
    .line 1357
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 1214
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 1215
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1038
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v3, v4

    .line 1115
    :cond_1
    :goto_0
    return v3

    .line 1042
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 1043
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    const/16 v5, 0x64

    if-lt v2, v5, :cond_4

    iget v2, p0, Landroid/widget/AbsSeekBar;->skipFrameWhenActionDown:I

    :goto_1
    iput v2, p0, Landroid/widget/AbsSeekBar;->currentSkipFrameWhenActionDown:I

    .line 1044
    iput v4, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 1045
    sget-object v2, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 1048
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1050
    :pswitch_0
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1051
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1052
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    .line 1053
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownY:F

    goto :goto_0

    :cond_4
    move v2, v3

    .line 1043
    goto :goto_1

    .line 1055
    :cond_5
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 1056
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 1057
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 1059
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 1060
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1061
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 1066
    :pswitch_1
    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1067
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_7

    .line 1068
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1070
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1071
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1072
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

    .line 1074
    :cond_9
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 1075
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    .line 1076
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 1078
    :cond_a
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 1079
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1080
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto/16 :goto_0

    .line 1086
    .end local v0    # "x":F
    .end local v1    # "y":F
    :pswitch_2
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-eqz v2, :cond_b

    .line 1087
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1089
    :cond_b
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_c

    .line 1090
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1091
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 1092
    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 1103
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 1096
    :cond_c
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 1097
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1098
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_2

    .line 1107
    :pswitch_3
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1108
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_d

    .line 1109
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 1110
    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 1112
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 1048
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

    .line 1298
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1327
    :goto_0
    return v1

    .line 1302
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 1303
    goto :goto_0

    .line 1306
    :cond_1
    const/16 v3, 0x1000

    if-eq p1, v3, :cond_2

    if-ne p1, v5, :cond_6

    .line 1308
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

    .line 1311
    .local v0, "increment":I
    sget-boolean v3, Landroid/widget/AbsSeekBar;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_3

    .line 1312
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41f00000    # 30.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1315
    :cond_3
    if-ne p1, v5, :cond_4

    .line 1316
    neg-int v0, v0

    .line 1320
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1321
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 1324
    goto :goto_0

    .end local v0    # "increment":I
    :cond_6
    move v1, v2

    .line 1327
    goto :goto_0
.end method

.method public setDefaultColorForVolumePanel(Z)V
    .locals 3
    .param p1, "isClearCoverOpened"    # Z

    .prologue
    const v2, 0x106011c

    .line 1737
    if-eqz p1, :cond_0

    .line 1738
    const-string v0, "#ffe3e0e0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1739
    const-string v0, "#ff56c0e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1740
    const-string v0, "#ff56c0e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 1741
    const-string v0, "#fff7cdbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1742
    const-string v0, "#fff1662f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1743
    const-string v0, "#fff1662f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 1752
    :goto_0
    return-void

    .line 1745
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

    .line 1746
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1747
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 1748
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1749
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1750
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
    .line 1529
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1531
    :goto_0
    return-void

    .line 1530
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setFluidColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1794
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1795
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    .line 1797
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1798
    return-void
.end method

.method public setFluidEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1764
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_active_themepackage"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1765
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1766
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    .line 1772
    :goto_0
    sget-boolean v1, Landroid/widget/AbsSeekBar;->SCAFE_ENABLED:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    if-nez v1, :cond_2

    .line 1773
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    .line 1777
    :goto_1
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    if-eqz v1, :cond_0

    .line 1778
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->seekBarFluidInit()V

    .line 1779
    :cond_0
    return-void

    .line 1768
    :cond_1
    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    goto :goto_0

    .line 1775
    :cond_2
    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    goto :goto_1
.end method

.method public setHoverPopupType(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1391
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1403
    :goto_0
    return-void

    .line 1395
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1396
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x3231

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 1398
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMeasuredHeight()I

    move-result v0

    .line 1399
    .local v0, "contentHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 1400
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 1402
    .end local v0    # "contentHeight":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setHoverPopupType(I)V

    goto :goto_0
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .param p1, "increment"    # I

    .prologue
    .line 501
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1    # "increment":I
    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 502
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 521
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 524
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

    .line 526
    :cond_1
    monitor-exit p0

    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1495
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMode(I)V

    .line 1496
    packed-switch p1, :pswitch_data_0

    .line 1514
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1515
    return-void

    .line 1498
    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1499
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1502
    :pswitch_2
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x10809fe

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1503
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1506
    .end local v0    # "thumb":Landroid/graphics/drawable/Drawable;
    :pswitch_3
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x1080a18

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 1507
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x1080a19

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1508
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    goto :goto_0

    .line 1511
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    goto :goto_0

    .line 1496
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
    .line 1711
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    if-eqz v0, :cond_0

    .line 1712
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 1714
    :cond_0
    return-void
.end method

.method public setOverlapBackgroundForDualColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 1540
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1543
    .local v0, "mOverlapColor":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1544
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1547
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1549
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 1550
    return-void
.end method

.method public setOverlapPointForDualColor(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const v2, 0x1080a04

    const v1, 0x1080a02

    .line 1559
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 1582
    :cond_0
    :goto_0
    return-void

    .line 1563
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 1564
    iput p1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 1565
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1566
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1581
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto :goto_0

    .line 1568
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1569
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    .line 1570
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    .line 1578
    :goto_2
    iput p1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 1579
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    goto :goto_1

    .line 1571
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1572
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    .line 1573
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
    .line 1268
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->setProgress(IZ)Z

    move-result v0

    .line 1269
    .local v0, "superRet":Z
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    .line 1270
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    .line 1271
    return v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1444
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1445
    return-void
.end method

.method public setProgressDrawableForAutoBrightness(Z)V
    .locals 0
    .param p1, "auto"    # Z

    .prologue
    .line 1491
    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1816
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1818
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1819
    return-void
.end method

.method public setSplitProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1521
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1523
    :goto_0
    return-void

    .line 1522
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .prologue
    .line 483
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 484
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 485
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 288
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_5

    .line 289
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 290
    const/4 v0, 0x1

    .line 295
    .local v0, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_2

    .line 296
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 297
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 304
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 305
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 311
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

    .line 314
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    .line 318
    :cond_2
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 320
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 321
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 323
    if-eqz v0, :cond_3

    .line 324
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 325
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 328
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 329
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 333
    .end local v1    # "state":[I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 334
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->pressedThumbWidth:I

    .line 335
    :cond_4
    return-void

    .line 292
    .end local v0    # "needUpdate":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "needUpdate":Z
    goto :goto_0

    .line 307
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
    .line 471
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 472
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 473
    return-void
.end method

.method public setThumbTintColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 356
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 358
    .local v0, "mOverlapColor":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 361
    :cond_0
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 378
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 381
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 383
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    .line 390
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 391
    return-void

    .line 387
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
    .line 418
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 421
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 422
    return-void
.end method

.method protected updateDrawableBounds(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1641
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 1643
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 1644
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    .line 1645
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 530
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
