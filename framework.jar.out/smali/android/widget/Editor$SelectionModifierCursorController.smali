.class Landroid/widget/Editor$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionModifierCursorController"
.end annotation


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mDragAcceleratorActive:Z

.field private mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

.field private mGestureStayedInTapRegion:Z

.field private mHaventMovedEnoughToStartDrag:Z

.field private mLineSelectionIsOn:I

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

.field private mStartOffset:I

.field private mSwitchedLines:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 5344
    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5335
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 5340
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 5342
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    .line 5345
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 5346
    return-void
.end method

.method static synthetic access$300(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$SelectionModifierCursorController;

    .prologue
    .line 5324
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$SelectionModifierCursorController;

    .prologue
    .line 5324
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    return-void
.end method

.method static synthetic access$3200(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$SelectionModifierCursorController;

    .prologue
    .line 5324
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionEndHandleView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$SelectionModifierCursorController;

    .prologue
    .line 5324
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/widget/Editor$SelectionModifierCursorController;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$SelectionModifierCursorController;
    .param p1, "x1"    # Z

    .prologue
    .line 5324
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->setDragAcceleratorActive(Z)V

    return-void
.end method

.method private initDrawables()V
    .locals 3

    .prologue
    .line 5362
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5363
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$3302(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5366
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5367
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$3402(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5370
    :cond_1
    return-void
.end method

.method private initHandles()V
    .locals 4

    .prologue
    .line 5374
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-nez v0, :cond_0

    .line 5375
    new-instance v0, Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionStartHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    .line 5377
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-nez v0, :cond_1

    .line 5378
    new-instance v0, Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionEndHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    .line 5381
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->show()V

    .line 5382
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->show()V

    .line 5384
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 5385
    return-void
.end method

.method private setDragAcceleratorActive(Z)V
    .locals 0
    .param p1, "isDragAcceleratorActive"    # Z

    .prologue
    .line 5619
    iput-boolean p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    .line 5620
    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 5582
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 5583
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 5584
    .local v1, "offset":I
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v3, :cond_0

    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5585
    :cond_0
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v3, :cond_1

    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 5582
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5587
    .end local v1    # "offset":I
    :cond_2
    return-void
.end method


# virtual methods
.method public enterDrag()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5393
    iput-boolean v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    .line 5395
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mLastDownPositionX:F

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 5397
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 5402
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5403
    return-void
.end method

.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 5594
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 5590
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hasSelectHandlers()Z
    .locals 1

    .prologue
    .line 5623
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 5388
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->hide()V

    .line 5389
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->hide()V

    .line 5390
    :cond_1
    return-void
.end method

.method public isDragAcceleratorActive()Z
    .locals 1

    .prologue
    .line 5615
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    return v0
.end method

.method public isSelectHandlerNotMoved()Z
    .locals 1

    .prologue
    .line 5627
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hasSelectHandlers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isMoved()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->isMoved()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 5608
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 5638
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5639
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 5641
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->onDetached()V

    .line 5642
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionEndHandleView;->onDetached()V

    .line 5643
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5408
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 5409
    .local v11, "eventX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 5410
    .local v12, "eventY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    .line 5575
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 5412
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 5414
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 5417
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11, v12}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5421
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    # getter for: Landroid/widget/Editor;->mDisableDoubleTapTextSelection:Z
    invoke-static {}, Landroid/widget/Editor;->access$5300()Z

    move-result v22

    if-nez v22, :cond_3

    .line 5422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroid/widget/Editor;->mDoubleTap:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 5423
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    move/from16 v22, v0

    sub-float v5, v11, v22

    .line 5424
    .local v5, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    move/from16 v22, v0

    sub-float v6, v12, v22

    .line 5425
    .local v6, "deltaY":F
    mul-float v22, v5, v5

    mul-float v23, v6, v6

    add-float v7, v22, v23

    .line 5427
    .local v7, "distanceSquared":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v20

    .line 5429
    .local v20, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v8

    .line 5430
    .local v8, "doubleTapSlop":I
    mul-int v22, v8, v8

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v7, v22

    if-gez v22, :cond_4

    const/16 v16, 0x1

    .line 5433
    .local v16, "stayedInArea":Z
    :goto_1
    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/widget/Editor;->isPositionOnText(FF)Z
    invoke-static {v0, v11, v12}, Landroid/widget/Editor;->access$5400(Landroid/widget/Editor;FF)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 5434
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # invokes: Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$5500(Landroid/widget/Editor;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 5435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 5437
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 5442
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distanceSquared":F
    .end local v8    # "doubleTapSlop":I
    .end local v16    # "stayedInArea":Z
    .end local v20    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_3
    move-object/from16 v0, p0

    iput v11, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    .line 5443
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    .line 5444
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    .line 5445
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    goto/16 :goto_0

    .line 5430
    .restart local v5    # "deltaX":F
    .restart local v6    # "deltaY":F
    .restart local v7    # "distanceSquared":F
    .restart local v8    # "doubleTapSlop":I
    .restart local v20    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_4
    const/16 v16, 0x0

    goto :goto_1

    .line 5453
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distanceSquared":F
    .end local v8    # "doubleTapSlop":I
    .end local v20    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    const-string v23, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 5455
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 5460
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v19

    .line 5462
    .local v19, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v18

    .line 5464
    .local v18, "touchSlop":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 5465
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    move/from16 v22, v0

    sub-float v5, v11, v22

    .line 5466
    .restart local v5    # "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    move/from16 v22, v0

    sub-float v6, v12, v22

    .line 5467
    .restart local v6    # "deltaY":F
    mul-float v22, v5, v5

    mul-float v23, v6, v6

    add-float v7, v22, v23

    .line 5469
    .restart local v7    # "distanceSquared":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 5470
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v9

    .line 5471
    .local v9, "doubleTapTouchSlop":I
    mul-int v22, v9, v9

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v7, v22

    if-gtz v22, :cond_a

    const/16 v22, 0x1

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    .line 5474
    .end local v9    # "doubleTapTouchSlop":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 5476
    mul-int v22, v18, v18

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v7, v22

    if-gtz v22, :cond_b

    const/16 v22, 0x1

    :goto_3
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    .line 5481
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distanceSquared":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor$SelectionStartHandleView;->isShowing()Z

    move-result v22

    if-nez v22, :cond_0

    .line 5486
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 5487
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 5489
    move/from16 v21, v12

    .line 5490
    .local v21, "y":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 5495
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor$SelectionStartHandleView;->getIdealVerticalOffset()F

    move-result v13

    .line 5498
    .local v13, "fingerOffset":F
    :goto_4
    sub-float v21, v12, v13

    .line 5501
    .end local v13    # "fingerOffset":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v21

    # invokes: Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    invoke-static {v0, v1, v2, v3}, Landroid/widget/Editor;->access$4700(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v4

    .line 5504
    .local v4, "currLine":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    move/from16 v22, v0

    if-nez v22, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v4, v0, :cond_d

    .line 5509
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    goto/16 :goto_0

    .line 5471
    .end local v4    # "currLine":I
    .end local v21    # "y":F
    .restart local v5    # "deltaX":F
    .restart local v6    # "deltaY":F
    .restart local v7    # "distanceSquared":F
    .restart local v9    # "doubleTapTouchSlop":I
    :cond_a
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 5476
    .end local v9    # "doubleTapTouchSlop":I
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 5495
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distanceSquared":F
    .restart local v21    # "y":F
    :cond_c
    move/from16 v0, v18

    int-to-float v13, v0

    goto :goto_4

    .line 5514
    .restart local v4    # "currLine":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v11}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v14

    .line 5516
    .local v14, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v0, v14, :cond_e

    .line 5518
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/widget/Editor;->getWordEnd(I)I
    invoke-static {v0, v14}, Landroid/widget/Editor;->access$4800(Landroid/widget/Editor;I)I

    move-result v14

    .line 5519
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    move/from16 v23, v0

    # invokes: Landroid/widget/Editor;->getWordStart(I)I
    invoke-static/range {v22 .. v23}, Landroid/widget/Editor;->access$4900(Landroid/widget/Editor;I)I

    move-result v15

    .line 5525
    .local v15, "startOffset":I
    :goto_5
    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 5526
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Landroid/text/Spannable;

    move-object/from16 v0, v22

    invoke-static {v0, v15, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_0

    .line 5522
    .end local v15    # "startOffset":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/widget/Editor;->getWordStart(I)I
    invoke-static {v0, v14}, Landroid/widget/Editor;->access$4900(Landroid/widget/Editor;I)I

    move-result v14

    .line 5523
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    move/from16 v23, v0

    # invokes: Landroid/widget/Editor;->getWordEnd(I)I
    invoke-static/range {v22 .. v23}, Landroid/widget/Editor;->access$4800(Landroid/widget/Editor;I)I

    move-result v15

    .restart local v15    # "startOffset":I
    goto :goto_5

    .line 5533
    .end local v4    # "currLine":I
    .end local v14    # "offset":I
    .end local v15    # "startOffset":I
    .end local v18    # "touchSlop":I
    .end local v19    # "viewConfig":Landroid/view/ViewConfiguration;
    .end local v21    # "y":F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 5535
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5537
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 5538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v15

    .line 5539
    .restart local v15    # "startOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    .line 5544
    .local v10, "endOffset":I
    if-ge v10, v15, :cond_f

    .line 5545
    move/from16 v17, v10

    .line 5546
    .local v17, "tmp":I
    move v10, v15

    .line 5547
    move/from16 v15, v17

    .line 5550
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Landroid/text/Spannable;

    move-object/from16 v0, v22

    invoke-static {v0, v15, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5553
    .end local v17    # "tmp":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    move-object/from16 v22, v0

    if-nez v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v22

    if-eqz v22, :cond_10

    .line 5554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 5557
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    .line 5558
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor$SelectionStartHandleView;->refreshForSwitchingCursor()Z

    .line 5560
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_12

    .line 5561
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor$SelectionEndHandleView;->refreshForSwitchingCursor()Z

    .line 5569
    :cond_12
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    .line 5570
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 5571
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    goto/16 :goto_0

    .line 5410
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 5631
    if-nez p1, :cond_0

    .line 5632
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 5634
    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 5598
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5599
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 5600
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    .line 5601
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    .line 5602
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 5350
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isUniversalSwitchEnabled()Z
    invoke-static {v0}, Landroid/widget/Editor;->access$5200(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5359
    :cond_0
    :goto_0
    return-void

    .line 5353
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5356
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    .line 5357
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    .line 5358
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    goto :goto_0
.end method
