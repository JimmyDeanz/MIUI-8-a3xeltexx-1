.class abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private mActionPopupShower:Ljava/lang/Runnable;

.field protected mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

.field protected mAnimationFadeIn:Landroid/animation/AnimatorSet;

.field protected mAnimationFadeOut:Landroid/animation/AnimatorSet;

.field protected mAnimationFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

.field protected final mContainer:Landroid/widget/Editor$AnimatePopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field private mHandleExtension:I

.field protected mHorizontalGravity:I

.field protected mHorizontalScale:F

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mLastWindowY:I

.field private mMinSize:I

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field protected mPreviousLineTouched:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x5

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 4254
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 4255
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4177
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/Editor$HandleView;->mHorizontalScale:F

    .line 4235
    iput v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4238
    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4252
    iput v1, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 4294
    new-array v0, v2, [J

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 4296
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 4298
    iput v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4300
    iput v3, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4256
    new-instance v0, Landroid/widget/Editor$AnimatePopupWindow;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/Editor$AnimatePopupWindow;-><init>(Landroid/widget/Editor;Landroid/content/Context;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    .line 4257
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/Editor$AnimatePopupWindow;->setSplitTouchEnabled(Z)V

    .line 4258
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/Editor$AnimatePopupWindow;->setClippingEnabled(Z)V

    .line 4259
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/Editor$AnimatePopupWindow;->setWindowLayoutType(I)V

    .line 4260
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/Editor$AnimatePopupWindow;->setContentView(Landroid/view/View;)V

    .line 4261
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    new-instance v1, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;Landroid/widget/Editor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Editor$AnimatePopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 4268
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 4269
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 4270
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    .line 4273
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4274
    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 4308
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4309
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 4310
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 4311
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4312
    return-void
.end method

.method private clipVertically(I)I
    .locals 5
    .param p1, "positionY"    # I

    .prologue
    .line 4519
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt p1, v3, :cond_0

    .line 4520
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    .line 4521
    .local v2, "offset":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4522
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 4523
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr p1, v3

    .line 4524
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p1, v3

    .line 4526
    .end local v0    # "layout":Landroid/text/Layout;
    .end local v1    # "line":I
    .end local v2    # "offset":I
    :cond_0
    return p1
.end method

.method private filterOnTouchUp()V
    .locals 10

    .prologue
    .line 4315
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4316
    .local v4, "now":J
    const/4 v0, 0x0

    .line 4317
    .local v0, "i":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4318
    .local v2, "index":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4319
    .local v1, "iMax":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x96

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 4320
    add-int/lit8 v0, v0, 0x1

    .line 4321
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x5

    goto :goto_0

    .line 4324
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x15e

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 4326
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v3, v3, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4328
    :cond_1
    return-void
.end method

.method private getHandleExtension(I)I
    .locals 1
    .param p1, "lineHeight"    # I

    .prologue
    .line 4635
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 4431
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 4432
    const/4 v0, 0x1

    .line 4439
    :goto_0
    return v0

    .line 4435
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4436
    const/4 v0, 0x0

    goto :goto_0

    .line 4439
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    # invokes: Landroid/widget/Editor;->isPositionVisible(II)Z
    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->access$3500(Landroid/widget/Editor;II)Z

    move-result v0

    goto :goto_0
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 4303
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4304
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4305
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    .line 4379
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4380
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss()V

    .line 4381
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 4382
    return-void
.end method

.method protected getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;
    .locals 2

    .prologue
    .line 4391
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 4392
    new-instance v0, Landroid/widget/Editor$ActionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {v0, v1, p0}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 4394
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    return-object v0
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected getCursorOffset()I
    .locals 1

    .prologue
    .line 4560
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getHorizontalGravity(Z)I
.end method

.method protected getHorizontalOffset()I
    .locals 4

    .prologue
    .line 4541
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v2

    .line 4542
    .local v2, "width":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4544
    .local v0, "drawWidth":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v3, :pswitch_data_0

    .line 4550
    :pswitch_0
    sub-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 4556
    .local v1, "left":I
    :goto_0
    return v1

    .line 4546
    .end local v1    # "left":I
    :pswitch_1
    const/4 v1, 0x0

    .line 4547
    .restart local v1    # "left":I
    goto :goto_0

    .line 4553
    .end local v1    # "left":I
    :pswitch_2
    sub-int v1, v2, v0

    .restart local v1    # "left":I
    goto :goto_0

    .line 4544
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method getPreferredHeight()I
    .locals 2

    .prologue
    .line 4358
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method getPreferredWidth()I
    .locals 2

    .prologue
    .line 4354
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 4385
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 4387
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 4388
    return-void
.end method

.method protected hideActionPopupWindow()V
    .locals 2

    .prologue
    .line 4413
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4414
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4416
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 4417
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    .line 4419
    :cond_1
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 4620
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isPopshowing()Z
    .locals 1

    .prologue
    .line 4422
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 4426
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$AnimatePopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4331
    iget v1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttached()V
    .locals 0

    .prologue
    .line 4632
    return-void
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 4628
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 4629
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 4531
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 4533
    .local v1, "drawWidth":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/Editor$HandleView;->mHandleExtension:I

    add-int/2addr v3, v4

    add-int/lit8 v0, v3, -0x1

    .line 4534
    .local v0, "drawHeight":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    .line 4536
    .local v2, "left":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    add-int v5, v2, v1

    invoke-virtual {v3, v2, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4537
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4538
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 4624
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 4625
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 4336
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4337
    .local v1, "layout":Landroid/text/Layout;
    const/4 v3, 0x0

    .line 4338
    .local v3, "lineHeight":I
    if-eqz v1, :cond_0

    .line 4339
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 4340
    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    sub-int v3, v5, v6

    .line 4342
    .end local v2    # "line":I
    :cond_0
    invoke-direct {p0, v3}, Landroid/widget/Editor$HandleView;->getHandleExtension(I)I

    move-result v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mHandleExtension:I

    .line 4344
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v0

    .line 4345
    .local v0, "handleHeight":I
    iget v5, p0, Landroid/widget/Editor$HandleView;->mHandleExtension:I

    add-int v4, v0, v5

    .line 4347
    .local v4, "measuredHeight":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v5

    invoke-virtual {p0, v5, v4}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    .line 4349
    iget v5, p0, Landroid/widget/Editor$HandleView;->mHandleExtension:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 4350
    int-to-float v5, v0

    mul-float/2addr v5, v7

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHandleExtension:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 4351
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    .line 4565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 4615
    :goto_0
    return v9

    .line 4567
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 4568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget v8, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v8, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4571
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v7}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v7

    iput v7, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4572
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v7}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v7

    iput v7, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4577
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v7

    aget v7, v7, v9

    iput v7, p0, Landroid/widget/Editor$HandleView;->mLastWindowY:I

    .line 4579
    iput-boolean v9, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4580
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    goto :goto_0

    .line 4585
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 4586
    .local v5, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 4589
    .local v6, "rawY":F
    iget v7, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v8, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Landroid/widget/Editor$HandleView;->mLastWindowY:I

    int-to-float v8, v8

    sub-float v4, v7, v8

    .line 4590
    .local v4, "previousVerticalOffset":F
    iget v7, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    iget v8, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Landroid/widget/Editor$HandleView;->mLastWindowY:I

    int-to-float v8, v8

    sub-float v0, v7, v8

    .line 4592
    .local v0, "currentVerticalOffset":F
    iget v7, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v7, v4, v7

    if-gez v7, :cond_0

    .line 4593
    iget v7, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 4594
    .local v3, "newVerticalOffset":F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 4599
    :goto_1
    iget v7, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v7, v7

    add-float/2addr v7, v3

    iget v8, p0, Landroid/widget/Editor$HandleView;->mLastWindowY:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4601
    iget v7, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v7, v5, v7

    iget v8, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v8

    int-to-float v8, v8

    add-float v1, v7, v8

    .line 4603
    .local v1, "newPosX":F
    iget v7, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float v7, v6, v7

    iget v8, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v2, v7, v8

    .line 4605
    .local v2, "newPosY":F
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    goto/16 :goto_0

    .line 4596
    .end local v1    # "newPosX":F
    .end local v2    # "newPosY":F
    .end local v3    # "newVerticalOffset":F
    :cond_0
    iget v7, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 4597
    .restart local v3    # "newVerticalOffset":F
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    .line 4610
    .end local v0    # "currentVerticalOffset":F
    .end local v3    # "newVerticalOffset":F
    .end local v4    # "previousVerticalOffset":F
    .end local v5    # "rawX":F
    .end local v6    # "rawY":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp()V

    .line 4612
    :pswitch_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 4565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 8
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4450
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4451
    .local v1, "layout":Landroid/text/Layout;
    if-nez v1, :cond_1

    .line 4453
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 4479
    :cond_0
    :goto_0
    return-void

    .line 4457
    :cond_1
    iget v6, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    if-eq p1, v6, :cond_5

    move v3, v4

    .line 4458
    .local v3, "offsetChanged":Z
    :goto_1
    if-nez v3, :cond_2

    if-eqz p2, :cond_0

    .line 4459
    :cond_2
    if-eqz v3, :cond_3

    .line 4460
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 4461
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4463
    :cond_3
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 4465
    .local v2, "line":I
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    iget v7, p0, Landroid/widget/Editor$HandleView;->mHorizontalScale:F

    mul-float/2addr v6, v7

    iget v7, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4467
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-direct {p0, v6}, Landroid/widget/Editor$HandleView;->getHandleExtension(I)I

    move-result v0

    .line 4469
    .local v0, "handleExtension":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    sub-int/2addr v6, v0

    iput v6, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4470
    iget v6, p0, Landroid/widget/Editor$HandleView;->mHandleExtension:I

    if-eq v0, v6, :cond_4

    .line 4471
    invoke-virtual {p0, v5, v5}, Landroid/widget/Editor$HandleView;->onMeasure(II)V

    .line 4474
    :cond_4
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v5, v5

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/Editor$HandleView;->mHorizontalScale:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4475
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4476
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4477
    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    goto :goto_0

    .end local v0    # "handleExtension":I
    .end local v2    # "line":I
    .end local v3    # "offsetChanged":Z
    :cond_5
    move v3, v5

    .line 4457
    goto :goto_1
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4362
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$AnimatePopupWindow;->isDismissing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4363
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss(Z)V

    .line 4366
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4376
    :goto_0
    return-void

    .line 4370
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 4373
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4374
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    # invokes: Landroid/widget/Editor;->getDescendantViewScale(Landroid/view/View;)F
    invoke-static {v0}, Landroid/widget/Editor;->access$3400(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mHorizontalScale:F

    .line 4375
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    goto :goto_0
.end method

.method showActionPopupWindow(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 4398
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 4400
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 4401
    new-instance v0, Landroid/widget/Editor$HandleView$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$HandleView$2;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    .line 4408
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4409
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4410
    return-void
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 4277
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 4278
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 4279
    .local v0, "isRtlCharAtOffset":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4280
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 4281
    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 4282
    return-void

    .line 4279
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 6
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 4483
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {p0, v2, p4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4484
    if-nez p3, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v2, :cond_5

    .line 4485
    :cond_0
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v2, :cond_3

    .line 4487
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v2, :cond_2

    .line 4488
    :cond_1
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4489
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4490
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4491
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4494
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 4497
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4498
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int v0, p1, v2

    .line 4499
    .local v0, "positionX":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int/2addr v2, p2

    invoke-direct {p0, v2}, Landroid/widget/Editor$HandleView;->clipVertically(I)I

    move-result v1

    .line 4501
    .local v1, "positionY":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4502
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/widget/Editor$AnimatePopupWindow;->update(IIII)V

    .line 4514
    .end local v0    # "positionX":I
    .end local v1    # "positionY":I
    :cond_4
    :goto_0
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4516
    :cond_5
    return-void

    .line 4504
    .restart local v0    # "positionX":I
    .restart local v1    # "positionY":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onAttached()V

    .line 4505
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v0, v1}, Landroid/widget/Editor$AnimatePopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 4509
    .end local v0    # "positionX":I
    .end local v1    # "positionY":I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4510
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method
