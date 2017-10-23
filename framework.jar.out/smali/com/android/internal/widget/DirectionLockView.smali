.class public Lcom/android/internal/widget/DirectionLockView;
.super Landroid/widget/RelativeLayout;
.source "DirectionLockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/DirectionLockView$2;,
        Lcom/android/internal/widget/DirectionLockView$Direction;
    }
.end annotation


# static fields
.field public static DEFAULT_ARROW_SIZE:I

.field private static DIRECTION_TOLERANCE_ANGLE:D

.field public static FOUR_CONFIGURATION_MODE:Z


# instance fields
.field private ARROW_SIZE:I

.field private REFERENCE_SQUARE_DIMENSION:I

.field private SETTINGS_APP:Z

.field private TAG:Ljava/lang/String;

.field private final TTS_DEFAULT_RATE_STRING:Ljava/lang/String;

.field _TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private currentErrorResId:I

.field private isParentArrowSize:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAllow:Z

.field private mAllowDouble:Z

.field mBeepEast:Landroid/media/MediaPlayer;

.field mBeepNorth:Landroid/media/MediaPlayer;

.field mBeepSouth:Landroid/media/MediaPlayer;

.field mBeepWest:Landroid/media/MediaPlayer;

.field private mBlankBitmap:Landroid/graphics/Bitmap;

.field private mBottomY:D

.field private mCurBitmap:Landroid/graphics/Bitmap;

.field private mCurrentPassword:Ljava/lang/String;

.field private mCurrentPasswordNumbers:Ljava/lang/String;

.field private mDirectionBitmapDown:Landroid/graphics/Bitmap;

.field private mDirectionBitmapLeft:Landroid/graphics/Bitmap;

.field private mDirectionBitmapRight:Landroid/graphics/Bitmap;

.field private mDirectionBitmapUp:Landroid/graphics/Bitmap;

.field private mDirectionDetected:Z

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private mDownAnnounce:Ljava/lang/String;

.field private final mDownChar:C

.field private final mDownNumber:I

.field private mErrorBitmap:Landroid/graphics/Bitmap;

.field private mForceRestart:Z

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInsideReferenceSquare:Z

.field private mLeftAnnounce:Ljava/lang/String;

.field private final mLeftChar:C

.field private final mLeftNumber:I

.field private mLeftX:D

.field private mParentArrowSize:I

.field private mPlayBeep:Z

.field private mPlayVibration:Z

.field private mPlayVoice:Z

.field private mRightAnnounce:Ljava/lang/String;

.field private final mRightChar:C

.field private final mRightNumber:I

.field private mRightX:D

.field private mScreenHeight:D

.field private mScreenWidth:D

.field private mShowArrow:Z

.field private mSquare_size:D

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTopY:D

.field private mTradeSpace:D

.field private mUpAnnounce:Ljava/lang/String;

.field private final mUpChar:C

.field private final mUpNumber:I

.field private mVibratePattern:I

.field private final mVibration_pattern_down:I

.field private final mVibration_pattern_left:I

.field private final mVibration_pattern_right:I

.field private final mVibration_pattern_up:I

.field private mVibrator:Landroid/os/Vibrator;

.field myContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    const-wide v0, 0x4056800000000000L    # 90.0

    sput-wide v0, Lcom/android/internal/widget/DirectionLockView;->DIRECTION_TOLERANCE_ANGLE:D

    .line 94
    const/16 v0, 0xb6

    sput v0, Lcom/android/internal/widget/DirectionLockView;->DEFAULT_ARROW_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/DirectionLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/DirectionLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v4, 0xc36f

    const v3, 0xc36b

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const-string v0, "DirectionLockView"

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    .line 64
    iput-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->SETTINGS_APP:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mAllowDouble:Z

    .line 72
    iput v2, p0, Lcom/android/internal/widget/DirectionLockView;->mParentArrowSize:I

    iput v2, p0, Lcom/android/internal/widget/DirectionLockView;->currentErrorResId:I

    .line 73
    const-string/jumbo v0, "tts_default_rate"

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TTS_DEFAULT_RATE_STRING:Ljava/lang/String;

    .line 76
    const/16 v0, 0x55

    iput-char v0, p0, Lcom/android/internal/widget/DirectionLockView;->mUpChar:C

    .line 77
    const/16 v0, 0x44

    iput-char v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDownChar:C

    .line 78
    const/16 v0, 0x4c

    iput-char v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftChar:C

    .line 79
    const/16 v0, 0x52

    iput-char v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightChar:C

    .line 80
    const/16 v0, 0x31

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mUpNumber:I

    .line 81
    const/16 v0, 0x39

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftNumber:I

    .line 82
    const/16 v0, 0x33

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightNumber:I

    .line 83
    const/16 v0, 0x37

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDownNumber:I

    .line 93
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->REFERENCE_SQUARE_DIMENSION:I

    .line 106
    iput v3, p0, Lcom/android/internal/widget/DirectionLockView;->mVibration_pattern_up:I

    iput v3, p0, Lcom/android/internal/widget/DirectionLockView;->mVibration_pattern_down:I

    iput v4, p0, Lcom/android/internal/widget/DirectionLockView;->mVibration_pattern_right:I

    iput v4, p0, Lcom/android/internal/widget/DirectionLockView;->mVibration_pattern_left:I

    .line 309
    new-instance v0, Lcom/android/internal/widget/DirectionLockView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DirectionLockView$1;-><init>(Lcom/android/internal/widget/DirectionLockView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 149
    iput-object p1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    .line 150
    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->initDirectionLockView()V

    .line 151
    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 1174
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1175
    .local v2, "height":I
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1176
    .local v4, "width":I
    const/4 v3, 0x1

    .line 1178
    .local v3, "inSampleSize":I
    if-gt v2, p3, :cond_0

    if-le v4, p2, :cond_1

    .line 1180
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 1181
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 1186
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p3, :cond_1

    div-int v5, v1, v3

    if-le v5, p2, :cond_1

    .line 1187
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1191
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method private calculateTradeSpace(DD)D
    .locals 7
    .param p1, "sqaure_size"    # D
    .param p3, "toleranceAngle"    # D

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 702
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in calculateTradeSpace()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    .line 704
    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_0

    .line 705
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    .line 706
    const-wide/16 v0, 0x0

    .line 708
    :goto_0
    return-wide v0

    :cond_0
    div-double v0, p1, v4

    div-double v2, p3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double v4, p1, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    goto :goto_0
.end method

.method private createReferenceSquare(DDZ)V
    .locals 9
    .param p1, "eventX"    # D
    .param p3, "eventY"    # D
    .param p5, "doScreenCorrection"    # Z

    .prologue
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/16 v6, 0x0

    .line 748
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in createReferenceSquare()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    div-double/2addr v0, v2

    sub-double v0, p1, v0

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    .line 750
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    div-double/2addr v0, v2

    sub-double v0, p3, v0

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    .line 751
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    div-double/2addr v0, v2

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    .line 752
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    div-double/2addr v0, v2

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    .line 754
    if-eqz p5, :cond_1

    .line 755
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpg-double v0, v0, v6

    if-gez v0, :cond_2

    .line 756
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    .line 757
    iput-wide v6, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    .line 763
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpg-double v0, v0, v6

    if-gez v0, :cond_3

    .line 764
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    .line 765
    iput-wide v6, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    .line 772
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " eventY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLeftX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mRightX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBottomY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTopY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return-void

    .line 758
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 759
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    sub-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    .line 760
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    goto/16 :goto_0

    .line 766
    :cond_3
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 767
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    sub-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    .line 768
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    goto/16 :goto_1
.end method

.method private dipToPixels(D)D
    .locals 5
    .param p1, "dipValue"    # D

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/internal/widget/DirectionLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 228
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    double-to-float v2, p1

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-double v2, v1

    return-wide v2
.end method

.method private freeBitmapMemory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1113
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in freeBitmapMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1117
    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    .line 1120
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->releaseDirectionBitmaps()V

    .line 1122
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1123
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1124
    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    .line 1127
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1128
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1129
    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    .line 1131
    :cond_2
    return-void
.end method

.method private getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "reqWidth"    # I
    .param p4, "reqHeight"    # I

    .prologue
    const/4 v7, 0x1

    .line 1136
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBitmapFromResource start  reqWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reqHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  resid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1139
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1140
    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1143
    invoke-direct {p0, v1, p3, p4}, Lcom/android/internal/widget/DirectionLockView;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1146
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1148
    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1151
    .local v3, "tempBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 1152
    .local v2, "returnBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 1154
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v3, p3, p4, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1160
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1161
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v5, "getBitmapFromResource recycle"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1163
    const/4 v3, 0x0

    .line 1167
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v5, "getBitmapFromResource End"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    return-object v2

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1160
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1161
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v5, "getBitmapFromResource recycle"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1163
    const/4 v3, 0x0

    goto :goto_0

    .line 1160
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1161
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v6, "getBitmapFromResource recycle"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1163
    const/4 v3, 0x0

    :cond_1
    throw v4
.end method

.method private getDirectionImageView(IIZI)Landroid/widget/ImageView;
    .locals 4
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I
    .param p3, "useMargins"    # Z
    .param p4, "arrowSize"    # I

    .prologue
    const/4 v3, -0x2

    .line 666
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v2, "in getDirectionImageView()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    if-eqz v1, :cond_0

    .line 668
    iput p4, p0, Lcom/android/internal/widget/DirectionLockView;->mParentArrowSize:I

    .line 670
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 671
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DirectionLockView;->removeView(Landroid/view/View;)V

    .line 672
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    .line 675
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 677
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p3, :cond_2

    .line 678
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 679
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 680
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 685
    :goto_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    .line 686
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/DirectionLockView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 687
    invoke-virtual {p0}, Lcom/android/internal/widget/DirectionLockView;->invalidate()V

    .line 689
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    return-object v1

    .line 682
    :cond_2
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private initDirectionLockView()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    .line 532
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v2, "in initDirectinLockView()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    .line 535
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    const-string v2, "com.samsung.SMT.KEY_PARAM"

    const-string v3, "DISABLE_NOTICE_POPUP"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->refreshScreenDimensions()V

    .line 538
    invoke-virtual {p0}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView()Landroid/widget/ImageView;

    .line 540
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    .line 541
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    .line 547
    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    .line 553
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    .line 556
    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mAllow:Z

    .line 558
    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    .line 559
    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    .line 560
    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    .line 561
    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    .line 564
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x11000b2

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    .line 565
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x11000af

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    .line 566
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x11000b1

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    .line 567
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x11000b0

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    .line 569
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 572
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tts_default_rate"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 574
    .local v0, "mDefaultRate":I
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTextToSpeech Rate - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    int-to-float v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 577
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1040a56

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mUpAnnounce:Ljava/lang/String;

    .line 578
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1040a59

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDownAnnounce:Ljava/lang/String;

    .line 579
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1040a58

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftAnnounce:Ljava/lang/String;

    .line 580
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1040a57

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mRightAnnounce:Ljava/lang/String;

    .line 582
    iget v1, p0, Lcom/android/internal/widget/DirectionLockView;->REFERENCE_SQUARE_DIMENSION:I

    int-to-double v2, v1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/DirectionLockView;->dipToPixels(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    .line 583
    iput-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    .line 584
    iput-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    .line 585
    iput-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    .line 586
    iput-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    .line 589
    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    sget-wide v4, Lcom/android/internal/widget/DirectionLockView;->DIRECTION_TOLERANCE_ANGLE:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/internal/widget/DirectionLockView;->calculateTradeSpace(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    .line 591
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tradeSpace ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mVibrator:Landroid/os/Vibrator;

    .line 596
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 599
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/DirectionLockView;->setImportantForAccessibility(I)V

    .line 600
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1040a5b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DirectionLockView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 602
    return-void
.end method

.method private loadDirectionBitmaps(I)V
    .locals 7
    .param p1, "arrowSize"    # I

    .prologue
    .line 1079
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v5, "in loadDirectionBitmaps()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const/4 v1, 0x0

    .local v1, "resIDLeft":I
    const/4 v0, 0x0

    .local v0, "resIDDown":I
    const/4 v3, 0x0

    .local v3, "resIDUp":I
    const/4 v2, 0x0

    .line 1082
    .local v2, "resIDRight":I
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    if-eqz v4, :cond_0

    .end local p1    # "arrowSize":I
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    .line 1084
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->SETTINGS_APP:Z

    if-nez v4, :cond_1

    .line 1086
    const v1, 0x10802dd

    .line 1087
    const v2, 0x10802de

    .line 1088
    const v3, 0x10802df

    .line 1089
    const v0, 0x10802dc

    .line 1098
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v6, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    invoke-direct {p0, v4, v1, v5, v6}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    .line 1100
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v6, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    invoke-direct {p0, v4, v2, v5, v6}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    .line 1102
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v6, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    .line 1104
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v6, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    .line 1106
    return-void

    .line 1082
    .restart local p1    # "arrowSize":I
    :cond_0
    int-to-double v4, p1

    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/DirectionLockView;->dipToPixels(D)D

    move-result-wide v4

    double-to-int p1, v4

    goto :goto_0

    .line 1092
    .end local p1    # "arrowSize":I
    :cond_1
    const v1, 0x10802e2

    .line 1093
    const v2, 0x10802e4

    .line 1094
    const v3, 0x10802e6

    .line 1095
    const v0, 0x10802e0

    goto :goto_1
.end method

.method private refreshScreenDimensions()V
    .locals 6

    .prologue
    .line 717
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v2, "in refreshScreenDimensions()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 719
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DirectionLockView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 721
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v2, v1

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    .line 722
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v2, v1

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    .line 723
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in refreshScreenDimensions() mScreenWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void
.end method

.method private releaseDirectionBitmaps()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1196
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1198
    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1202
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1203
    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    .line 1206
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1207
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1208
    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    .line 1211
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1212
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1213
    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    .line 1215
    :cond_3
    return-void
.end method


# virtual methods
.method public clearScreen()V
    .locals 4

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 163
    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    double-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/widget/DirectionLockView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPasswordNumbers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    return-object v0
.end method

.method getDirection(DDDDDD)Lcom/android/internal/widget/DirectionLockView$Direction;
    .locals 7
    .param p1, "curX"    # D
    .param p3, "curY"    # D
    .param p5, "leftX"    # D
    .param p7, "rightX"    # D
    .param p9, "topY"    # D
    .param p11, "bottomY"    # D

    .prologue
    .line 794
    iget-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDirection() curX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " curY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " leftX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rightX ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " topY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p9

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bottomY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    .line 799
    .local v2, "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_2

    cmpl-double v3, p1, p7

    if-ltz v3, :cond_2

    cmpg-double v3, p3, p9

    if-gtz v3, :cond_2

    .line 800
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->UP_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    .line 827
    :cond_0
    :goto_0
    sget-object v3, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    if-eq v2, v3, :cond_1

    .line 828
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    .line 830
    :cond_1
    return-object v2

    .line 802
    :cond_2
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_3

    cmpg-double v3, p1, p5

    if-gtz v3, :cond_3

    cmpg-double v3, p3, p9

    if-gtz v3, :cond_3

    .line 803
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->UP_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    .line 805
    :cond_3
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_4

    cmpl-double v3, p1, p7

    if-ltz v3, :cond_4

    cmpl-double v3, p3, p11

    if-ltz v3, :cond_4

    .line 806
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    .line 808
    :cond_4
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_5

    cmpg-double v3, p1, p5

    if-gtz v3, :cond_5

    cmpl-double v3, p3, p11

    if-ltz v3, :cond_5

    .line 809
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    .line 811
    :cond_5
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_6

    cmpg-double v3, p1, p7

    if-gtz v3, :cond_7

    cmpl-double v3, p1, p5

    if-ltz v3, :cond_7

    :cond_6
    cmpg-double v3, p3, p9

    if-gez v3, :cond_7

    .line 813
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->UP:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    .line 815
    :cond_7
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_8

    cmpg-double v3, p1, p7

    if-gtz v3, :cond_9

    cmpl-double v3, p1, p5

    if-ltz v3, :cond_9

    :cond_8
    cmpl-double v3, p3, p11

    if-lez v3, :cond_9

    .line 817
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    .line 819
    :cond_9
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_a

    cmpg-double v3, p3, p11

    if-gtz v3, :cond_b

    cmpl-double v3, p3, p9

    if-ltz v3, :cond_b

    :cond_a
    cmpl-double v3, p1, p7

    if-lez v3, :cond_b

    .line 821
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    .line 823
    :cond_b
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_c

    cmpg-double v3, p3, p11

    if-gtz v3, :cond_0

    cmpl-double v3, p3, p9

    if-ltz v3, :cond_0

    :cond_c
    cmpg-double v3, p1, p5

    if-gez v3, :cond_0

    .line 825
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0
.end method

.method public getDirectionImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 616
    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    .line 617
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionImageView(I)Landroid/widget/ImageView;
    .locals 2
    .param p1, "arrowSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    .line 629
    invoke-direct {p0, v1, v1, v1, p1}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionImageView(II)Landroid/widget/ImageView;
    .locals 2
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    const/4 v1, 0x0

    .line 642
    iput-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    .line 643
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionImageView(III)Landroid/widget/ImageView;
    .locals 1
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I
    .param p3, "arrowSize"    # I

    .prologue
    const/4 v0, 0x1

    .line 656
    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    .line 657
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method handleDirectionEvent(Lcom/android/internal/widget/DirectionLockView$Direction;Z)V
    .locals 12
    .param p1, "direction"    # Lcom/android/internal/widget/DirectionLockView$Direction;
    .param p2, "allowDouble"    # Z

    .prologue
    const v11, 0xc36f

    const v10, 0xc36b

    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 854
    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v7, "in handleDirectionEvent()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iput-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    .line 862
    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    move v2, v5

    .line 869
    .local v2, "lengthCondition":Z
    :goto_0
    const/4 v1, 0x0

    .line 876
    .local v1, "lastDirectionCondition":Z
    if-eqz v2, :cond_6

    move v0, v4

    .line 879
    .local v0, "lastDirectionChar":C
    :goto_1
    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " detected"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    .line 881
    iput v9, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    .line 882
    const-string v3, ""

    .line 883
    .local v3, "mCurrentDirection":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/widget/DirectionLockView$2;->$SwitchMap$com$android$internal$widget$DirectionLockView$Direction:[I

    invoke-virtual {p1}, Lcom/android/internal/widget/DirectionLockView$Direction;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 997
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v5, "Invalid Direction !"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_0
    :goto_2
    if-nez v2, :cond_1

    if-nez p2, :cond_1

    if-eqz v1, :cond_1f

    .line 1003
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v4, :cond_2

    .line 1004
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1007
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    if-lez v4, :cond_3

    .line 1008
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mVibrator:Landroid/os/Vibrator;

    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    const/4 v6, 0x0

    sget-object v7, Landroid/os/Vibrator$MagnitudeTypes;->NotificationMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v4, v5, v9, v6, v7}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 1011
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v4, :cond_4

    .line 1012
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    invoke-interface {v4, v3, v5}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionDetected(Ljava/lang/String;Z)V

    .line 1017
    :cond_4
    :goto_3
    return-void

    .end local v0    # "lastDirectionChar":C
    .end local v1    # "lastDirectionCondition":Z
    .end local v2    # "lengthCondition":Z
    .end local v3    # "mCurrentDirection":Ljava/lang/String;
    :cond_5
    move v2, v4

    .line 862
    goto :goto_0

    .line 876
    .restart local v1    # "lastDirectionCondition":Z
    .restart local v2    # "lengthCondition":Z
    :cond_6
    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 885
    .restart local v0    # "lastDirectionChar":C
    .restart local v3    # "mCurrentDirection":Ljava/lang/String;
    :pswitch_0
    const/16 v6, 0x55

    if-eq v6, v0, :cond_c

    move v1, v5

    .line 886
    :goto_4
    if-nez v2, :cond_7

    if-nez p2, :cond_7

    if-eqz v1, :cond_0

    .line 888
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    .line 889
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    .line 891
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-eqz v5, :cond_8

    .line 892
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mUpAnnounce:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 896
    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    if-eqz v4, :cond_9

    .line 897
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 900
    :cond_9
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v4, :cond_a

    .line 901
    iput v10, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    .line 904
    :cond_a
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v4, :cond_b

    .line 905
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    .line 908
    :cond_b
    const-string v3, "UP"

    goto/16 :goto_2

    :cond_c
    move v1, v4

    .line 885
    goto :goto_4

    .line 913
    :pswitch_1
    const/16 v6, 0x52

    if-eq v6, v0, :cond_12

    move v1, v5

    .line 914
    :goto_5
    if-nez v2, :cond_d

    if-nez p2, :cond_d

    if-eqz v1, :cond_0

    .line 916
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "R"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    .line 917
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    .line 919
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-eqz v5, :cond_e

    .line 920
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mRightAnnounce:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 924
    :cond_e
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    if-eqz v4, :cond_f

    .line 925
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 928
    :cond_f
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v4, :cond_10

    .line 929
    iput v11, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    .line 932
    :cond_10
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v4, :cond_11

    .line 933
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    .line 936
    :cond_11
    const-string v3, "RIGHT"

    goto/16 :goto_2

    :cond_12
    move v1, v4

    .line 913
    goto :goto_5

    .line 941
    :pswitch_2
    const/16 v6, 0x44

    if-eq v6, v0, :cond_18

    move v1, v5

    .line 942
    :goto_6
    if-nez v2, :cond_13

    if-nez p2, :cond_13

    if-eqz v1, :cond_0

    .line 944
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "D"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    .line 945
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    .line 947
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-eqz v5, :cond_14

    .line 948
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mDownAnnounce:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 952
    :cond_14
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    if-eqz v4, :cond_15

    .line 953
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 956
    :cond_15
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v4, :cond_16

    .line 957
    iput v10, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    .line 960
    :cond_16
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v4, :cond_17

    .line 961
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    .line 964
    :cond_17
    const-string v3, "DOWN"

    goto/16 :goto_2

    :cond_18
    move v1, v4

    .line 941
    goto :goto_6

    .line 969
    :pswitch_3
    const/16 v6, 0x4c

    if-eq v6, v0, :cond_1e

    move v1, v5

    .line 970
    :goto_7
    if-nez v2, :cond_19

    if-nez p2, :cond_19

    if-eqz v1, :cond_0

    .line 972
    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    .line 973
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "9"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    .line 975
    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-eqz v5, :cond_1a

    .line 976
    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftAnnounce:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 980
    :cond_1a
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    if-eqz v4, :cond_1b

    .line 981
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 984
    :cond_1b
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v4, :cond_1c

    .line 985
    iput v11, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    .line 988
    :cond_1c
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v4, :cond_1d

    .line 989
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    .line 992
    :cond_1d
    const-string v3, "LEFT"

    goto/16 :goto_2

    :cond_1e
    move v1, v4

    .line 969
    goto :goto_7

    .line 1015
    :cond_1f
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ignored"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 883
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1242
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 1243
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v2, "in onAttached()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v1, :cond_0

    .line 1245
    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/DirectionLockView;->mParentArrowSize:I

    .line 1246
    .local v0, "arrowSize":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/DirectionLockView;->loadDirectionBitmaps(I)V

    .line 1248
    .end local v0    # "arrowSize":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "direction_lock_set"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1250
    return-void

    .line 1245
    :cond_1
    sget v0, Lcom/android/internal/widget/DirectionLockView;->DEFAULT_ARROW_SIZE:I

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->refreshScreenDimensions()V

    .line 840
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 841
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1260
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 1261
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in onDetached()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->freeBitmapMemory()V

    .line 1263
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direction_lock_set"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1267
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1269
    iput-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 1273
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1274
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1277
    iput-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    .line 1280
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    .line 1281
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1282
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1284
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1285
    iput-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    .line 1288
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    .line 1289
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1290
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1292
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1293
    iput-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    .line 1296
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_8

    .line 1297
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1298
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1300
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1301
    iput-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    .line 1303
    :cond_8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v8, "in onTouchEvent()"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DirectionLockView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 327
    const/4 v3, 0x0

    .line 520
    :goto_0
    return v3

    .line 329
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v8, 0x3

    if-eq v3, v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v8, 0x1

    if-ne v3, v8, :cond_3

    .line 332
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v8, "in onTouchEvent() ACTION_UP or ACTION_CANCEL called"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v3, :cond_2

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    const-string v8, "FINGER_LIFT"

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    invoke-interface {v3, v8, v9}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionDetected(Ljava/lang/String;Z)V

    .line 336
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    .line 337
    const/4 v3, 0x1

    goto :goto_0

    .line 340
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v3, :cond_4

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-interface {v3}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionStarted()V

    .line 343
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_5

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-double v4, v3

    .local v4, "curX":D
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-double v6, v3

    .line 347
    .local v6, "curY":D
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .line 520
    .end local v4    # "curX":D
    .end local v6    # "curY":D
    :cond_5
    :goto_1
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 356
    .restart local v4    # "curX":D
    .restart local v6    # "curY":D
    :pswitch_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mAllowDouble:Z

    .line 363
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    .line 369
    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/widget/DirectionLockView;->createReferenceSquare(DDZ)V

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v8, "in onTouchEvent() ACTION_DOWN called"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    .line 373
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    goto :goto_1

    .line 382
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    if-nez v3, :cond_5

    .line 383
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    if-eqz v3, :cond_13

    .line 389
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mAllow:Z

    if-eqz v3, :cond_5

    .line 391
    const/16 v16, 0x0

    .line 392
    .local v16, "insideTradeArea":Z
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_7

    .line 393
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_b

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    cmpg-double v3, v4, v8

    if-gez v3, :cond_b

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_b

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_b

    const/16 v19, 0x1

    .line 397
    .local v19, "isTradeNorthEast":Z
    :goto_2
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpl-double v3, v6, v8

    if-lez v3, :cond_c

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_c

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_c

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_c

    const/16 v17, 0x1

    .line 401
    .local v17, "isTradeEastNorth":Z
    :goto_3
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    cmpg-double v3, v6, v8

    if-gez v3, :cond_d

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_d

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_d

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_d

    const/16 v18, 0x1

    .line 405
    .local v18, "isTradeEastSouth":Z
    :goto_4
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_e

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    cmpg-double v3, v4, v8

    if-gez v3, :cond_e

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_e

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_e

    const/16 v21, 0x1

    .line 409
    .local v21, "isTradeSouthEast":Z
    :goto_5
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_f

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_f

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_f

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_f

    const/16 v22, 0x1

    .line 413
    .local v22, "isTradeSouthWest":Z
    :goto_6
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    cmpg-double v3, v6, v8

    if-gez v3, :cond_10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_10

    const/16 v24, 0x1

    .line 417
    .local v24, "isTradeWestSouth":Z
    :goto_7
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_11

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_11

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_11

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_11

    const/16 v23, 0x1

    .line 421
    .local v23, "isTradeWestNorth":Z
    :goto_8
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_12

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_12

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_12

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_12

    const/16 v20, 0x1

    .line 431
    .local v20, "isTradeNorthWest":Z
    :goto_9
    if-nez v19, :cond_6

    if-nez v17, :cond_6

    if-nez v18, :cond_6

    if-nez v21, :cond_6

    if-nez v22, :cond_6

    if-nez v24, :cond_6

    if-nez v23, :cond_6

    if-eqz v20, :cond_7

    .line 435
    :cond_6
    const/16 v16, 0x1

    .line 443
    .end local v17    # "isTradeEastNorth":Z
    .end local v18    # "isTradeEastSouth":Z
    .end local v19    # "isTradeNorthEast":Z
    .end local v20    # "isTradeNorthWest":Z
    .end local v21    # "isTradeSouthEast":Z
    .end local v22    # "isTradeSouthWest":Z
    .end local v23    # "isTradeWestNorth":Z
    .end local v24    # "isTradeWestSouth":Z
    :cond_7
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    .line 444
    .local v2, "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    if-nez v16, :cond_8

    .line 445
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v15}, Lcom/android/internal/widget/DirectionLockView;->getDirection(DDDDDD)Lcom/android/internal/widget/DirectionLockView$Direction;

    move-result-object v2

    .line 448
    :cond_8
    sget-object v3, Lcom/android/internal/widget/DirectionLockView$2;->$SwitchMap$com$android$internal$widget$DirectionLockView$Direction:[I

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView$Direction;->ordinal()I

    move-result v8

    aget v3, v3, v8

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_1

    .line 456
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v8, "in onTouchEvent() Diagonal Detected"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 467
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 468
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v9, 0x1040a5a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v8, v9, v10}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 474
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v3, :cond_5

    .line 476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    const-string v8, "DIAGONAL"

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    invoke-interface {v3, v8, v9}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionDetected(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 393
    .end local v2    # "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 397
    .restart local v19    # "isTradeNorthEast":Z
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 401
    .restart local v17    # "isTradeEastNorth":Z
    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 405
    .restart local v18    # "isTradeEastSouth":Z
    :cond_e
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 409
    .restart local v21    # "isTradeSouthEast":Z
    :cond_f
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 413
    .restart local v22    # "isTradeSouthWest":Z
    :cond_10
    const/16 v24, 0x0

    goto/16 :goto_7

    .line 417
    .restart local v24    # "isTradeWestSouth":Z
    :cond_11
    const/16 v23, 0x0

    goto/16 :goto_8

    .line 421
    .restart local v23    # "isTradeWestNorth":Z
    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_9

    .line 485
    .end local v17    # "isTradeEastNorth":Z
    .end local v18    # "isTradeEastSouth":Z
    .end local v19    # "isTradeNorthEast":Z
    .end local v21    # "isTradeSouthEast":Z
    .end local v22    # "isTradeSouthWest":Z
    .end local v23    # "isTradeWestNorth":Z
    .end local v24    # "isTradeWestSouth":Z
    .restart local v2    # "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mAllowDouble:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/DirectionLockView;->handleDirectionEvent(Lcom/android/internal/widget/DirectionLockView$Direction;Z)V

    .line 491
    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/widget/DirectionLockView;->createReferenceSquare(DDZ)V

    .line 501
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mAllowDouble:Z

    goto/16 :goto_1

    .line 514
    .end local v2    # "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    .end local v16    # "insideTradeArea":Z
    :cond_13
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    goto/16 :goto_1

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 448
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public reloadBitmap()V
    .locals 3

    .prologue
    .line 1224
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v2, "in reloadBitmap()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->releaseDirectionBitmaps()V

    .line 1228
    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v1, :cond_0

    .line 1229
    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/DirectionLockView;->mParentArrowSize:I

    .line 1230
    .local v0, "arrowSize":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/DirectionLockView;->loadDirectionBitmaps(I)V

    .line 1232
    .end local v0    # "arrowSize":I
    :cond_0
    return-void

    .line 1229
    :cond_1
    sget v0, Lcom/android/internal/widget/DirectionLockView;->DEFAULT_ARROW_SIZE:I

    goto :goto_0
.end method

.method public resetPassword()V
    .locals 1

    .prologue
    .line 239
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    .line 240
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setAllow(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in setAllow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mAllow:Z

    .line 735
    return-void
.end method

.method public setCurrentPassword(Ljava/lang/String;)V
    .locals 3
    .param p1, "givenPassword"    # Ljava/lang/String;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    .line 274
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 276
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_1

    .line 282
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x37

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_1

    .line 285
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x39

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_1

    .line 288
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_1

    .line 294
    :cond_0
    return-void

    .line 277
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x4c -> :sswitch_2
        0x52 -> :sswitch_3
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method public setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/DirectionLockTouchListener;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    .line 306
    return-void
.end method

.method public setPlayBeep(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    .line 216
    return-void
.end method

.method public setPlayVibration(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    .line 194
    return-void
.end method

.method public setPlayVoice(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    .line 205
    return-void
.end method

.method public setSettingsMode()V
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->SETTINGS_APP:Z

    .line 606
    return-void
.end method

.method public setShowArrow(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    .line 183
    return-void
.end method

.method public showDirectionArrow(C)V
    .locals 2
    .param p1, "direction"    # C

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in showDirectionArrow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/16 v0, 0x55

    if-ne p1, v0, :cond_1

    .line 1024
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1025
    :cond_1
    const/16 v0, 0x4c

    if-ne p1, v0, :cond_2

    .line 1026
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1027
    :cond_2
    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    .line 1028
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1029
    :cond_3
    const/16 v0, 0x44

    if-ne p1, v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public showErrorImage()V
    .locals 4

    .prologue
    .line 1041
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v2, "in showErrorImage()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    .line 1043
    const/4 v0, 0x0

    .line 1045
    .local v0, "resIDError":I
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v1, :cond_4

    .line 1047
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1048
    const v0, 0x10802e3

    .line 1057
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/widget/DirectionLockView;->currentErrorResId:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 1058
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1059
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1060
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    .line 1063
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v3, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    .line 1066
    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->currentErrorResId:I

    .line 1070
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1072
    :cond_4
    return-void

    .line 1049
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1050
    const v0, 0x10802e5

    goto :goto_0

    .line 1051
    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1052
    const v0, 0x10802e7

    goto :goto_0

    .line 1053
    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    const v0, 0x10802e1

    goto :goto_0
.end method
