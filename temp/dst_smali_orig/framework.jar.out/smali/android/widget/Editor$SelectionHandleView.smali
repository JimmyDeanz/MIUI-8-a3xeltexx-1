.class Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private final mHandleType:I

.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 8
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I
    .param p5, "handleType"    # I

    .prologue
    const/4 v7, 0x0

    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView;)V

    iput-boolean v7, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    iput-boolean v7, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    iput p5, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    invoke-static {p1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .local v6, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    return-void
.end method

.method private getHorizontal(Landroid/text/Layout;IZ)F
    .locals 6
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "startHandle"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .local v2, "line":I
    if-eqz p3, :cond_1

    move v3, p2

    .local v3, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .local v0, "isRtlChar":Z
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v1, 0x1

    .local v1, "isRtlParagraph":Z
    :cond_0
    if-ne v0, v1, :cond_2

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    :goto_1
    return v4

    .end local v0    # "isRtlChar":Z
    .end local v1    # "isRtlParagraph":Z
    .end local v3    # "offsetToCheck":I
    :cond_1
    add-int/lit8 v4, p2, -0x1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .restart local v0    # "isRtlChar":Z
    .restart local v1    # "isRtlParagraph":Z
    .restart local v3    # "offsetToCheck":I
    :cond_2
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v4

    goto :goto_1
.end method

.method private isStartHandle()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .locals 13
    .param p1, "offset"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .local v1, "anotherHandleOffset":I
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_3

    if-lt p1, v1, :cond_3

    :cond_0
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .local v5, "layout":Landroid/text/Layout;
    if-eqz v5, :cond_7

    if-eq p1, v1, :cond_7

    invoke-virtual {p0, v5, p1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    .local v4, "horiz":F
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v10

    :goto_1
    invoke-direct {p0, v5, v1, v7}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v0

    .local v0, "anotherHandleHoriz":F
    iget v7, p0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {p0, v5, v7}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v2

    .local v2, "currentHoriz":F
    cmpg-float v7, v2, v0

    if-gez v7, :cond_6

    cmpg-float v7, v4, v0

    if-gez v7, :cond_6

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v3

    .local v3, "currentOffset":I
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_9

    move v6, v3

    .local v6, "offsetToGetRunRange":I
    :goto_2
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getRunRange(I)J

    move-result-wide v8

    .local v8, "range":J
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result p1

    :goto_3
    invoke-virtual {p0, p1, v10}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZ)V

    return-void

    .end local v0    # "anotherHandleHoriz":F
    .end local v1    # "anotherHandleOffset":I
    .end local v2    # "currentHoriz":F
    .end local v3    # "currentOffset":I
    .end local v4    # "horiz":F
    .end local v5    # "layout":Landroid/text/Layout;
    .end local v6    # "offsetToGetRunRange":I
    .end local v8    # "range":J
    :cond_2
    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .restart local v1    # "anotherHandleOffset":I
    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-nez v7, :cond_4

    if-le p1, v1, :cond_0

    :cond_4
    :goto_4
    invoke-virtual {p0, p1, v10}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZ)V

    return-void

    .restart local v4    # "horiz":F
    .restart local v5    # "layout":Landroid/text/Layout;
    :cond_5
    move v7, v11

    goto :goto_1

    .restart local v0    # "anotherHandleHoriz":F
    .restart local v2    # "currentHoriz":F
    :cond_6
    cmpl-float v7, v2, v0

    if-lez v7, :cond_7

    cmpl-float v7, v4, v0

    if-gtz v7, :cond_1

    .end local v0    # "anotherHandleHoriz":F
    .end local v2    # "currentHoriz":F
    .end local v4    # "horiz":F
    :cond_7
    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v12

    if-eqz v12, :cond_8

    move v11, v10

    :cond_8
    invoke-static {v7, v1, v11}, Landroid/widget/Editor;->-wrap14(Landroid/widget/Editor;IZ)I

    move-result p1

    goto :goto_4

    .restart local v0    # "anotherHandleHoriz":F
    .restart local v2    # "currentHoriz":F
    .restart local v3    # "currentOffset":I
    .restart local v4    # "horiz":F
    :cond_9
    add-int/lit8 v7, v3, -0x1

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_2

    .restart local v6    # "offsetToGetRunRange":I
    .restart local v8    # "range":J
    :cond_a
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p1

    goto :goto_3
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v3

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    sub-int v2, v3, v4

    .local v2, "rightEdge":I
    int-to-float v3, v2

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .end local v2    # "rightEdge":I
    .local v1, "nearEdge":Z
    :goto_0
    return v1

    .end local v1    # "nearEdge":Z
    .restart local v2    # "rightEdge":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "nearEdge":Z
    goto :goto_0

    .end local v1    # "nearEdge":Z
    .end local v2    # "rightEdge":I
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int v0, v3, v4

    .local v0, "leftEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    const/4 v1, 0x1

    .restart local v1    # "nearEdge":Z
    goto :goto_0

    .end local v1    # "nearEdge":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "nearEdge":Z
    goto :goto_0
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 12
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, p3}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v3

    .local v3, "localX":F
    invoke-virtual {p1, p2, v3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v6

    .local v6, "primaryOffset":I
    invoke-virtual {p1, v6}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v10

    if-nez v10, :cond_0

    return v6

    :cond_0
    invoke-virtual {p1, p2, v3, v9}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v8

    .local v8, "secondaryOffset":I
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v0

    .local v0, "currentOffset":I
    sub-int v10, v6, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .local v5, "primaryDiff":I
    sub-int v10, v8, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .local v7, "secondaryDiff":I
    if-ge v5, v7, :cond_1

    return v6

    :cond_1
    if-le v5, v7, :cond_2

    return v8

    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_3

    move v4, v0

    .local v4, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    .local v1, "isRtlChar":Z
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    .local v2, "isRtlParagraph":Z
    :goto_1
    if-ne v1, v2, :cond_5

    .end local v6    # "primaryOffset":I
    :goto_2
    return v6

    .end local v1    # "isRtlChar":Z
    .end local v2    # "isRtlParagraph":Z
    .end local v4    # "offsetToCheck":I
    .restart local v6    # "primaryOffset":I
    :cond_3
    add-int/lit8 v10, v0, -0x1

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    .restart local v1    # "isRtlChar":Z
    .restart local v4    # "offsetToCheck":I
    :cond_4
    move v2, v9

    goto :goto_1

    .restart local v2    # "isRtlParagraph":Z
    :cond_5
    move v6, v8

    goto :goto_2
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 3
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, p2

    .local v0, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    return v1

    .end local v0    # "offsetToCheck":I
    :cond_0
    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    :cond_0
    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 26
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v12

    .local v12, "layout":Landroid/text/Layout;
    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    :cond_1
    const/16 v16, 0x0

    .local v16, "positionCursor":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .local v5, "anotherHandleOffset":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, p2

    invoke-static {v0, v12, v1, v2}, Landroid/widget/Editor;->-wrap13(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v7

    .local v7, "currLine":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v12, v7, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v9

    .local v9, "initialOffset":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_7

    if-lt v9, v5, :cond_7

    :goto_1
    invoke-virtual {v12, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v12, v7, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v9

    :cond_2
    move v14, v9

    .local v14, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v14}, Landroid/widget/Editor;->-wrap15(Landroid/widget/Editor;I)I

    move-result v21

    .local v21, "wordEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v14}, Landroid/widget/Editor;->-wrap16(Landroid/widget/Editor;I)I

    move-result v22

    .local v22, "wordStart":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    move/from16 v24, v0

    const/high16 v25, -0x40800000    # -1.0f

    cmpl-float v24, v24, v25

    if-nez v24, :cond_3

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v8

    .local v8, "currentOffset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v17

    .local v17, "rtlAtCurrentOffset":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v6

    .local v6, "atRtl":Z
    invoke-virtual {v12, v14}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v11

    .local v11, "isLvlBoundary":Z
    if-nez v11, :cond_5

    if-eqz v17, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    if-nez v17, :cond_8

    if-eqz v6, :cond_8

    :cond_5
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    return-void

    .end local v5    # "anotherHandleOffset":I
    .end local v6    # "atRtl":Z
    .end local v7    # "currLine":I
    .end local v8    # "currentOffset":I
    .end local v9    # "initialOffset":I
    .end local v11    # "isLvlBoundary":Z
    .end local v14    # "offset":I
    .end local v17    # "rtlAtCurrentOffset":Z
    .end local v21    # "wordEnd":I
    .end local v22    # "wordStart":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .restart local v5    # "anotherHandleOffset":I
    goto/16 :goto_0

    .restart local v7    # "currLine":I
    .restart local v9    # "initialOffset":I
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_2

    if-gt v9, v5, :cond_2

    goto/16 :goto_1

    .restart local v6    # "atRtl":Z
    .restart local v8    # "currentOffset":I
    .restart local v11    # "isLvlBoundary":Z
    .restart local v14    # "offset":I
    .restart local v17    # "rtlAtCurrentOffset":Z
    .restart local v21    # "wordEnd":I
    .restart local v22    # "wordStart":I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    if-eqz v11, :cond_c

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    move/from16 v24, v0

    sub-float v23, p1, v24

    .local v23, "xDiff":F
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_d

    const/4 v10, 0x1

    .local v10, "isExpanding":Z
    :goto_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    move/from16 v0, v24

    if-ne v6, v0, :cond_11

    const/16 v24, 0x0

    cmpl-float v24, v23, v24

    if-lez v24, :cond_10

    const/16 v24, 0x1

    :goto_3
    or-int v10, v10, v24

    .local v10, "isExpanding":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v24

    if-eqz v24, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6}, Landroid/widget/Editor$SelectionHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v24

    if-eqz v24, :cond_14

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getScrollX()I

    move-result v24

    if-eqz v24, :cond_13

    :cond_a
    if-eqz v10, :cond_1e

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_1d

    if-ge v14, v8, :cond_1d

    :cond_b
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    move/from16 v0, v24

    if-ne v6, v0, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v13

    .local v13, "nextOffset":I
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    return-void

    .end local v10    # "isExpanding":Z
    .end local v13    # "nextOffset":I
    .end local v23    # "xDiff":F
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    return-void

    .restart local v23    # "xDiff":F
    :cond_d
    const/4 v10, 0x0

    .local v10, "isExpanding":Z
    goto/16 :goto_2

    .end local v10    # "isExpanding":Z
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v7, v0, :cond_f

    const/4 v10, 0x1

    .restart local v10    # "isExpanding":Z
    goto/16 :goto_2

    .end local v10    # "isExpanding":Z
    :cond_f
    const/4 v10, 0x0

    .restart local v10    # "isExpanding":Z
    goto/16 :goto_2

    :cond_10
    const/16 v24, 0x0

    goto/16 :goto_3

    :cond_11
    const/16 v24, 0x0

    cmpg-float v24, v23, v24

    if-gez v24, :cond_12

    const/16 v24, 0x1

    :goto_6
    or-int v10, v10, v24

    .local v10, "isExpanding":Z
    goto/16 :goto_4

    .local v10, "isExpanding":Z
    :cond_12
    const/16 v24, 0x0

    goto :goto_6

    .local v10, "isExpanding":Z
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    if-eqz v6, :cond_1c

    const/16 v24, -0x1

    :goto_7
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    move-result v24

    if-nez v24, :cond_a

    :cond_14
    :goto_8
    if-eqz v10, :cond_2b

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_20

    move/from16 v20, v22

    .local v20, "wordBoundary":I
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    move/from16 v24, v0

    if-eqz v24, :cond_15

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_22

    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v24

    move/from16 v0, v24

    if-ne v6, v0, :cond_23

    const/16 v24, 0x1

    :goto_a
    move/from16 v19, v24

    .local v19, "snapToWord":Z
    :goto_b
    if-eqz v19, :cond_18

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v24

    move/from16 v0, v24

    if-eq v0, v7, :cond_16

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_24

    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v20

    :cond_16
    :goto_c
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_25

    sub-int v24, v21, v20

    div-int/lit8 v24, v24, 0x2

    sub-int v15, v21, v24

    .local v15, "offsetThresholdToSnap":I
    :goto_d
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_26

    if-le v14, v15, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_26

    :cond_17
    move/from16 v14, v22

    .end local v15    # "offsetThresholdToSnap":I
    :cond_18
    :goto_e
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_29

    if-ge v14, v9, :cond_29

    :cond_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    .local v4, "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v24

    sub-float v24, v24, v4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .end local v4    # "adjustedX":F
    :goto_f
    const/16 v16, 0x1

    .end local v19    # "snapToWord":Z
    .end local v20    # "wordBoundary":I
    :cond_1a
    :goto_10
    if-eqz v16, :cond_1b

    move-object/from16 v0, p0

    iput v7, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    :cond_1b
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    return-void

    :cond_1c
    const/16 v24, 0x1

    goto/16 :goto_7

    :cond_1d
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_1e

    if-gt v14, v8, :cond_b

    :cond_1e
    if-eqz v10, :cond_b

    goto/16 :goto_8

    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v13

    goto/16 :goto_5

    :cond_20
    move/from16 v20, v21

    .restart local v20    # "wordBoundary":I
    goto/16 :goto_9

    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-gt v7, v0, :cond_15

    :cond_22
    const/16 v19, 0x0

    goto/16 :goto_b

    :cond_23
    const/16 v24, 0x0

    goto/16 :goto_a

    .restart local v19    # "snapToWord":Z
    :cond_24
    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v20

    goto/16 :goto_c

    :cond_25
    sub-int v24, v20, v22

    div-int/lit8 v24, v24, 0x2

    add-int v15, v22, v24

    .restart local v15    # "offsetThresholdToSnap":I
    goto/16 :goto_d

    :cond_26
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_28

    if-ge v14, v15, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v7, v0, :cond_28

    :cond_27
    move/from16 v14, v21

    goto/16 :goto_e

    :cond_28
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    goto/16 :goto_e

    .end local v15    # "offsetThresholdToSnap":I
    :cond_29
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_2a

    if-gt v14, v9, :cond_19

    :cond_2a
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    goto/16 :goto_f

    .end local v19    # "snapToWord":Z
    .end local v20    # "wordBoundary":I
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    move/from16 v24, v0

    sub-float v24, p1, v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v12, v7, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v3

    .local v3, "adjustedOffset":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-gt v3, v0, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v7, v0, :cond_2e

    :cond_2c
    const/16 v18, 0x1

    .local v18, "shrinking":Z
    :goto_11
    if-eqz v18, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v7, v0, :cond_35

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_32

    move/from16 v14, v22

    :goto_12
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_33

    if-ge v14, v9, :cond_33

    :cond_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    .restart local v4    # "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v24

    sub-float v24, v24, v4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .end local v4    # "adjustedX":F
    :goto_13
    const/16 v16, 0x1

    goto/16 :goto_10

    .end local v18    # "shrinking":Z
    :cond_2e
    const/16 v18, 0x0

    goto :goto_11

    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v3, v0, :cond_30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_31

    :cond_30
    const/16 v18, 0x1

    goto :goto_11

    :cond_31
    const/16 v18, 0x0

    goto :goto_11

    .restart local v18    # "shrinking":Z
    :cond_32
    move/from16 v14, v21

    goto :goto_12

    :cond_33
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_34

    if-gt v14, v9, :cond_2d

    :cond_34
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    goto :goto_13

    :cond_35
    move v14, v3

    goto :goto_13

    :cond_36
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-eqz v24, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v3, v0, :cond_37

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v25

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    goto/16 :goto_10

    :cond_37
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v24

    if-nez v24, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v3, v0, :cond_1a

    goto :goto_14
.end method

.method protected updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->updateDrawable()V

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method
