.class public Lcom/android/incallui/view/VerticalSlideLayout;
.super Landroid/view/ViewGroup;
.source "VerticalSlideLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/view/VerticalSlideLayout$OnEndCallSlideListener;,
        Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnswerFinalTop:I

.field private mAnswerIndicator:Landroid/view/View;

.field private mAnswerIndicatorMarginTop:I

.field private mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private mIncomingOperator:Landroid/view/View;

.field private mIndicatorH:I

.field private mIndicatorSpace:I

.field private mIndicatorW:I

.field private mIndicatorX:I

.field private mMinFlingVelocity:I

.field private mOnEndCallSlideListener:Lcom/android/incallui/view/VerticalSlideLayout$OnEndCallSlideListener;

.field private mOnSlideFinishListener:Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;

.field private mOperatorInitBottom:I

.field private mOperatorInitTop:I

.field private mPhoneName:Landroid/widget/TextView;

.field private mPhoneNameH:I

.field private mPhoneNameMarginTop:I

.field private mPhoneNameTextSize:I

.field private mRejectFinalTop:I

.field private mRejectIndicator:Landroid/view/View;

.field private mShowEndCallState:Z

.field private mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/android/incallui/view/VerticalSlideLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/view/VerticalSlideLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/view/VerticalSlideLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/view/VerticalSlideLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mMinFlingVelocity:I

    .line 47
    iput-object v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mOnSlideFinishListener:Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;

    .line 48
    iput-object v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mOnEndCallSlideListener:Lcom/android/incallui/view/VerticalSlideLayout$OnEndCallSlideListener;

    .line 166
    new-instance v0, Lcom/android/incallui/view/VerticalSlideLayout$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/view/VerticalSlideLayout$1;-><init>(Lcom/android/incallui/view/VerticalSlideLayout;)V

    iput-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 60
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 61
    invoke-virtual {p0}, Lcom/android/incallui/view/VerticalSlideLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mPhoneNameTextSize:I

    .line 62
    invoke-virtual {p0}, Lcom/android/incallui/view/VerticalSlideLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorSpace:I

    .line 63
    invoke-virtual {p0}, Lcom/android/incallui/view/VerticalSlideLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mPhoneNameMarginTop:I

    .line 64
    invoke-virtual {p0}, Lcom/android/incallui/view/VerticalSlideLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerIndicatorMarginTop:I

    .line 65
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/incallui/view/VerticalSlideLayout;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/view/VerticalSlideLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/VerticalSlideLayout;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIncomingOperator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/view/VerticalSlideLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/VerticalSlideLayout;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/incallui/view/VerticalSlideLayout;->internalInitAnswer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/incallui/view/VerticalSlideLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/VerticalSlideLayout;

    .prologue
    .line 19
    iget v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorH:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/view/VerticalSlideLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/VerticalSlideLayout;

    .prologue
    .line 19
    iget v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mOperatorInitBottom:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/view/VerticalSlideLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/VerticalSlideLayout;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/incallui/view/VerticalSlideLayout;->internalDoRejectOrEndCall()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/incallui/view/VerticalSlideLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/VerticalSlideLayout;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/incallui/view/VerticalSlideLayout;->internalInitRejectOrEndCall()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/view/VerticalSlideLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/VerticalSlideLayout;

    .prologue
    .line 19
    iget v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mRejectFinalTop:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/view/VerticalSlideLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/VerticalSlideLayout;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mShowEndCallState:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/incallui/view/VerticalSlideLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/VerticalSlideLayout;

    .prologue
    .line 19
    iget v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerFinalTop:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/incallui/view/VerticalSlideLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/VerticalSlideLayout;

    .prologue
    .line 19
    iget v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mOperatorInitTop:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/incallui/view/VerticalSlideLayout;)Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/VerticalSlideLayout;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mOnSlideFinishListener:Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/view/VerticalSlideLayout;)Lcom/android/incallui/view/VerticalSlideLayout$OnEndCallSlideListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/VerticalSlideLayout;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mOnEndCallSlideListener:Lcom/android/incallui/view/VerticalSlideLayout$OnEndCallSlideListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/view/VerticalSlideLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/view/VerticalSlideLayout;

    .prologue
    .line 19
    iget v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mMinFlingVelocity:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/incallui/view/VerticalSlideLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/view/VerticalSlideLayout;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/incallui/view/VerticalSlideLayout;->internalDoAnswer()V

    return-void
.end method

.method private internalDoAnswer()V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIncomingOperator:Landroid/view/View;

    iget v2, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorX:I

    iget v3, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerFinalTop:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 266
    :cond_0
    return-void
.end method

.method private internalDoRejectOrEndCall()V
    .locals 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIncomingOperator:Landroid/view/View;

    iget v2, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorX:I

    iget v3, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mRejectFinalTop:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 278
    :cond_0
    return-void
.end method

.method private internalInitAnswer()V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIncomingOperator:Landroid/view/View;

    iget v2, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorX:I

    iget v3, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mOperatorInitTop:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 272
    :cond_0
    return-void
.end method

.method private internalInitRejectOrEndCall()V
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIncomingOperator:Landroid/view/View;

    iget v2, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorX:I

    iget v3, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mOperatorInitTop:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 284
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 164
    :cond_0
    return-void
.end method

.method public hideAnswerIndicator()V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mShowEndCallState:Z

    .line 100
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/incallui/view/VerticalSlideLayout;->requestLayout()V

    .line 102
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 89
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/VerticalSlideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mPhoneName:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/VerticalSlideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mRejectIndicator:Landroid/view/View;

    .line 91
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/VerticalSlideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    .line 92
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/android/incallui/view/VerticalSlideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIncomingOperator:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIncomingOperator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIncomingOperator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 96
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 132
    iget v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorW:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorX:I

    .line 133
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mPhoneName:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mPhoneNameMarginTop:I

    iget v3, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mViewWidth:I

    iget v4, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mPhoneNameH:I

    iget v5, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mPhoneNameMarginTop:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 134
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    iget v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorX:I

    iget v2, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerFinalTop:I

    iget v3, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorX:I

    iget v4, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorW:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerFinalTop:I

    iget v5, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorH:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 135
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIncomingOperator:Landroid/view/View;

    iget v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorX:I

    iget-object v2, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorSpace:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorX:I

    iget v4, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorW:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorSpace:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorH:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 137
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mRejectIndicator:Landroid/view/View;

    iget v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorX:I

    iget-object v2, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIncomingOperator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorSpace:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorX:I

    iget v4, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorW:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIncomingOperator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorSpace:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorH:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 139
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/view/VerticalSlideLayout;->measureChildren(II)V

    .line 113
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/view/VerticalSlideLayout;->setMeasuredDimension(II)V

    .line 114
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 118
    iget v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mPhoneNameTextSize:I

    iput v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mPhoneNameH:I

    .line 119
    iput p2, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mViewHeight:I

    .line 120
    iput p1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mViewWidth:I

    .line 122
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorW:I

    .line 123
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorH:I

    .line 124
    iget v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mPhoneNameMarginTop:I

    iget v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mPhoneNameH:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerIndicatorMarginTop:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerFinalTop:I

    .line 125
    iget v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerFinalTop:I

    iget v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorH:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorSpace:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mRejectFinalTop:I

    .line 126
    iget v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerFinalTop:I

    iget v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorH:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorSpace:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mOperatorInitTop:I

    .line 127
    iget v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mOperatorInitTop:I

    iget v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mIndicatorH:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mOperatorInitBottom:I

    .line 128
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOnSlideEndCallListener(Lcom/android/incallui/view/VerticalSlideLayout$OnEndCallSlideListener;)V
    .locals 0
    .param p1, "onEndCallSlideListener"    # Lcom/android/incallui/view/VerticalSlideLayout$OnEndCallSlideListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mOnEndCallSlideListener:Lcom/android/incallui/view/VerticalSlideLayout$OnEndCallSlideListener;

    .line 73
    return-void
.end method

.method public setOnSlideFinishListener(Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;)V
    .locals 0
    .param p1, "onSlideFinishListener"    # Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mOnSlideFinishListener:Lcom/android/incallui/view/VerticalSlideLayout$OnSlideFinishListener;

    .line 69
    return-void
.end method

.method public setPhoneName(Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneName"    # Ljava/lang/String;

    .prologue
    .line 76
    if-nez p1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mPhoneName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mPhoneName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mPhoneName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mPhoneName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showAnswerIndicator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iput-boolean v1, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mShowEndCallState:Z

    .line 106
    iget-object v0, p0, Lcom/android/incallui/view/VerticalSlideLayout;->mAnswerIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void
.end method
