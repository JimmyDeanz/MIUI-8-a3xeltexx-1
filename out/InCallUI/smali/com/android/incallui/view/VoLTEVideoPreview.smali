.class public Lcom/android/incallui/view/VoLTEVideoPreview;
.super Landroid/view/TextureView;
.source "VoLTEVideoPreview.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mCallButtonHeight:F

.field private mCallButtonPaddingBottom:F

.field private mCallToolsMarginBottom:F

.field private mCurrentPosition:I

.field private mIsFullScreen:Z

.field private mIsTouched:Z

.field private mPreviewAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPreviewBottomExtraHeight:F

.field private mPreviewBottomMargin:F

.field private mPreviewHeight:F

.field private mPreviewLeftMargin:F

.field private mPreviewRightMargin:F

.field private mPreviewTopMargin:F

.field private mPreviewWidth:F

.field private mScreenHeight:F

.field private mScreenWidth:F

.field private mXDelta:F

.field private mYDelta:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/view/VoLTEVideoPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mCurrentPosition:I

    .line 73
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewAnimatorSet:Landroid/animation/AnimatorSet;

    .line 85
    invoke-virtual {p0}, Lcom/android/incallui/view/VoLTEVideoPreview;->init()V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/view/VoLTEVideoPreview;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/VoLTEVideoPreview;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewHeight:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/incallui/view/VoLTEVideoPreview;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/VoLTEVideoPreview;
    .param p1, "x1"    # F

    .prologue
    .line 18
    iput p1, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewHeight:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/incallui/view/VoLTEVideoPreview;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/VoLTEVideoPreview;
    .param p1, "x1"    # F

    .prologue
    .line 18
    iput p1, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewBottomMargin:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/view/VoLTEVideoPreview;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/VoLTEVideoPreview;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mScreenHeight:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/view/VoLTEVideoPreview;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/VoLTEVideoPreview;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewTopMargin:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/incallui/view/VoLTEVideoPreview;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/VoLTEVideoPreview;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/incallui/view/VoLTEVideoPreview;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/VoLTEVideoPreview;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/view/VoLTEVideoPreview;->movePreviewAnimator(II)V

    return-void
.end method

.method private getPreviewBottomExtraHeight()V
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getVideoBottomPanelHeight()F

    move-result v0

    iget v1, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mCallButtonHeight:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mCallButtonPaddingBottom:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mCallToolsMarginBottom:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewBottomExtraHeight:F

    .line 250
    return-void
.end method

.method private movePreviewAnimator(II)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v8, 0x0

    .line 201
    iget v3, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewRightMargin:F

    .line 202
    .local v3, "xEnd":F
    iget v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewTopMargin:F

    .line 203
    .local v5, "yEnd":F
    packed-switch p1, :pswitch_data_0

    .line 230
    :goto_0
    :pswitch_0
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 231
    .local v2, "path":Landroid/graphics/Path;
    invoke-virtual {p0}, Lcom/android/incallui/view/VoLTEVideoPreview;->getX()F

    move-result v0

    .line 232
    .local v0, "currentX":F
    invoke-virtual {p0}, Lcom/android/incallui/view/VoLTEVideoPreview;->getY()F

    move-result v1

    .line 233
    .local v1, "currentY":F
    cmpg-float v6, v0, v8

    if-gez v6, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 236
    :cond_0
    cmpg-float v6, v1, v8

    if-gez v6, :cond_1

    .line 237
    const/4 v1, 0x0

    .line 239
    :cond_1
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 240
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 241
    sget-object v6, Landroid/view/View;->X:Landroid/util/Property;

    sget-object v7, Landroid/view/View;->Y:Landroid/util/Property;

    invoke-static {p0, v6, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 242
    .local v4, "xyObjectAnimator":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 243
    iget-object v6, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v8, p2

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 244
    iput p1, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mCurrentPosition:I

    .line 245
    return-void

    .line 205
    .end local v0    # "currentX":F
    .end local v1    # "currentY":F
    .end local v2    # "path":Landroid/graphics/Path;
    .end local v4    # "xyObjectAnimator":Landroid/animation/ObjectAnimator;
    :pswitch_1
    iget v3, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewLeftMargin:F

    .line 206
    goto :goto_0

    .line 208
    :pswitch_2
    iget v3, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewLeftMargin:F

    .line 209
    iget v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewBottomMargin:F

    .line 210
    goto :goto_0

    .line 214
    :pswitch_3
    iget v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewBottomMargin:F

    .line 215
    goto :goto_0

    .line 217
    :pswitch_4
    iget v3, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewLeftMargin:F

    .line 218
    iget v6, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewBottomMargin:F

    iget v7, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewBottomExtraHeight:F

    sub-float v5, v6, v7

    .line 219
    goto :goto_0

    .line 221
    :pswitch_5
    iget v6, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewBottomMargin:F

    iget v7, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewBottomExtraHeight:F

    sub-float v5, v6, v7

    .line 222
    goto :goto_0

    .line 224
    :pswitch_6
    const/4 v3, 0x0

    .line 225
    const/4 v5, 0x0

    .line 226
    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 89
    new-instance v2, Lcom/android/incallui/view/VoLTEVideoPreview$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/view/VoLTEVideoPreview$1;-><init>(Lcom/android/incallui/view/VoLTEVideoPreview;)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/view/VoLTEVideoPreview;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/incallui/view/VoLTEVideoPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 101
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 102
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mScreenWidth:F

    .line 103
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mScreenHeight:F

    .line 105
    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mCallToolsMarginBottom:F

    .line 107
    const v2, 0x7f0800ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mCallButtonPaddingBottom:F

    .line 110
    const v2, 0x7f08001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewWidth:F

    .line 112
    const v2, 0x7f08001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewTopMargin:F

    .line 113
    const v2, 0x7f08001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewLeftMargin:F

    .line 114
    iget v2, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mScreenWidth:F

    iget v3, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewLeftMargin:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewWidth:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewRightMargin:F

    .line 116
    const v2, 0x7f0800ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mCallButtonHeight:F

    .line 117
    return-void
.end method

.method public initPreviewPosition()V
    .locals 2

    .prologue
    .line 253
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/view/VoLTEVideoPreview;->movePreviewAnimator(II)V

    .line 254
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 122
    .local v1, "rawX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 123
    .local v2, "rawY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    return v7

    .line 125
    :pswitch_0
    iput-boolean v7, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mIsTouched:Z

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    sub-float v5, v1, v5

    iput v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mXDelta:F

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v5

    sub-float v5, v2, v5

    iput v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mYDelta:F

    .line 128
    iget-object v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    iget-object v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/view/VoLTEVideoPreview;->getPreviewBottomExtraHeight()V

    goto :goto_0

    .line 135
    :pswitch_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mIsTouched:Z

    .line 136
    const/4 v0, 0x3

    .line 137
    .local v0, "movePosition":I
    iget v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mScreenWidth:F

    div-float/2addr v5, v6

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_4

    .line 138
    iget v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mScreenHeight:F

    div-float/2addr v5, v6

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_3

    .line 139
    const/4 v0, 0x1

    .line 156
    :cond_2
    :goto_1
    const/16 v5, 0x15e

    invoke-direct {p0, v0, v5}, Lcom/android/incallui/view/VoLTEVideoPreview;->movePreviewAnimator(II)V

    goto :goto_0

    .line 141
    :cond_3
    const/4 v0, 0x2

    .line 142
    iget-boolean v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mIsFullScreen:Z

    if-nez v5, :cond_2

    .line 143
    const/4 v0, 0x5

    goto :goto_1

    .line 147
    :cond_4
    iget v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mScreenHeight:F

    div-float/2addr v5, v6

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_5

    .line 148
    const/4 v0, 0x3

    goto :goto_1

    .line 150
    :cond_5
    const/4 v0, 0x4

    .line 151
    iget-boolean v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mIsFullScreen:Z

    if-nez v5, :cond_2

    .line 152
    const/4 v0, 0x6

    goto :goto_1

    .line 159
    .end local v0    # "movePosition":I
    :pswitch_2
    iget v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mXDelta:F

    sub-float v3, v1, v5

    .line 160
    .local v3, "xFinal":F
    iget v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mYDelta:F

    sub-float v4, v2, v5

    .line 161
    .local v4, "yFinal":F
    iget v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewLeftMargin:F

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_6

    iget v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewRightMargin:F

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_6

    .line 162
    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 164
    :cond_6
    iget v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewTopMargin:F

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_0

    .line 165
    iget-boolean v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mIsFullScreen:Z

    if-nez v5, :cond_7

    iget v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewBottomMargin:F

    iget v6, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewBottomExtraHeight:F

    sub-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_7

    .line 167
    invoke-virtual {p1, v4}, Landroid/view/View;->setY(F)V

    goto/16 :goto_0

    .line 168
    :cond_7
    iget-boolean v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mIsFullScreen:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewBottomMargin:F

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_0

    .line 169
    invoke-virtual {p1, v4}, Landroid/view/View;->setY(F)V

    goto/16 :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setFullScreenMode(Z)V
    .locals 6
    .param p1, "isFullScreen"    # Z

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/16 v1, 0x96

    .line 180
    iput-boolean p1, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mIsFullScreen:Z

    .line 181
    iget-boolean v0, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mIsTouched:Z

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mIsFullScreen:Z

    if-eqz v0, :cond_3

    .line 185
    iget v0, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mCurrentPosition:I

    if-ne v0, v4, :cond_2

    .line 186
    invoke-direct {p0, v2, v1}, Lcom/android/incallui/view/VoLTEVideoPreview;->movePreviewAnimator(II)V

    goto :goto_0

    .line 187
    :cond_2
    iget v0, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mCurrentPosition:I

    if-ne v0, v5, :cond_0

    .line 188
    invoke-direct {p0, v3, v1}, Lcom/android/incallui/view/VoLTEVideoPreview;->movePreviewAnimator(II)V

    goto :goto_0

    .line 191
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/view/VoLTEVideoPreview;->getPreviewBottomExtraHeight()V

    .line 192
    iget v0, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mCurrentPosition:I

    if-ne v0, v2, :cond_4

    .line 193
    invoke-direct {p0, v4, v1}, Lcom/android/incallui/view/VoLTEVideoPreview;->movePreviewAnimator(II)V

    goto :goto_0

    .line 194
    :cond_4
    iget v0, p0, Lcom/android/incallui/view/VoLTEVideoPreview;->mCurrentPosition:I

    if-ne v0, v3, :cond_0

    .line 195
    invoke-direct {p0, v5, v1}, Lcom/android/incallui/view/VoLTEVideoPreview;->movePreviewAnimator(II)V

    goto :goto_0
.end method

.method public setFullScreenPreviewPosition()V
    .locals 2

    .prologue
    .line 257
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/view/VoLTEVideoPreview;->movePreviewAnimator(II)V

    .line 258
    return-void
.end method

.method public setOnTouchListener(Z)V
    .locals 1
    .param p1, "isSet"    # Z

    .prologue
    .line 261
    if-eqz p1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/view/VoLTEVideoPreview;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 262
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
