.class abstract Landroid/widget/MultiSelectPopupWindow$HandleView;
.super Landroid/view/View;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field static final HANDLE_TYPE_END:I = 0x2

.field static final HANDLE_TYPE_NONE:I = 0x0

.field static final HANDLE_TYPE_START:I = 0x1


# instance fields
.field protected mBaselineY:I

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mCurCursorPosTop:Z

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mEndRange:I

.field public mHandleType:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mInitPositionX:I

.field private mInitPositionY:I

.field private mInitRawY:F

.field protected mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field protected mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field private mPreviousOffset:I

.field protected mStartRange:I

.field private mStatusbarHeight:I

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field protected mbFlipCursor:Z

.field protected mbSwitchCursor:Z

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1049
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    .line 1050
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1028
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    .line 1029
    iput-boolean v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionHasChanged:Z

    .line 1037
    const/high16 v0, 0x41c80000    # 25.0f

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mStatusbarHeight:I

    .line 1039
    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHandleType:I

    .line 1386
    iput-boolean v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mbFlipCursor:Z

    .line 1387
    iput-boolean v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mCurCursorPosTop:Z

    .line 1051
    new-instance v0, Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 1052
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 1053
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1054
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1055
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1057
    iput-object p2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 1058
    iput-object p3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 1060
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->updateDrawable()V

    .line 1061
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->recalHandleView()V

    .line 1062
    return-void
.end method

.method private isVisible()Z
    .locals 6

    .prologue
    .line 1152
    iget-boolean v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    if-eqz v3, :cond_0

    .line 1153
    const/4 v3, 0x1

    .line 1163
    :goto_0
    return v3

    .line 1156
    :cond_0
    const/4 v0, 0x0

    .line 1157
    .local v0, "compensation":F
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 1158
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_1

    .line 1159
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getCurrentCursorOffset()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 1160
    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1163
    .end local v2    # "line":I
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHotspotX:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v0

    float-to-int v4, v4

    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBaselineY:I

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isPositionVisible(II)Z
    invoke-static {v3, v4, v5}, Landroid/widget/MultiSelectPopupWindow;->access$1200(Landroid/widget/MultiSelectPopupWindow;II)Z

    move-result v3

    goto :goto_0

    .line 1160
    .restart local v2    # "line":I
    :cond_2
    const/high16 v0, -0x41000000    # -0.5f

    goto :goto_1
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 1390
    const/4 v0, 0x1

    return v0
.end method

.method protected dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1130
    iput-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    .line 1131
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1132
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->onDetached()V

    .line 1133
    iput-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mbSwitchCursor:Z

    .line 1134
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 1137
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->dismiss()V

    .line 1138
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->access$600(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->removeSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V

    .line 1139
    return-void
.end method

.method hideMultiSelectQuickPopupWindow()V
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->hide()V

    .line 1145
    :cond_0
    return-void
.end method

.method public initPreviousOffset()V
    .locals 1

    .prologue
    .line 1398
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    .line 1399
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 1374
    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 1382
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->hideMultiSelectQuickPopupWindow()V

    .line 1383
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 1260
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mRight:I

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBottom:I

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1261
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1262
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 1378
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->hideMultiSelectQuickPopupWindow()V

    .line 1379
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1074
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->setMeasuredDimension(II)V

    .line 1075
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1272
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v16

    .line 1273
    .local v16, "text":Ljava/lang/CharSequence;
    if-nez v16, :cond_0

    .line 1274
    const-string v17, "MultiSelectPopupWindow"

    const-string v18, "getTextFormultiSelection() text is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const/16 v17, 0x1

    .line 1370
    .end local v16    # "text":Ljava/lang/CharSequence;
    :goto_0
    return v17

    .line 1277
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 1370
    .end local v16    # "text":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    const/16 v17, 0x1

    goto :goto_0

    .line 1279
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    .line 1280
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    .line 1283
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$HandleView;->mInitPositionX:I

    .line 1284
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$HandleView;->mInitPositionY:I

    .line 1285
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$HandleView;->mInitRawY:F

    .line 1288
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v9, v0, [I

    .line 1289
    .local v9, "range":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v3

    .line 1291
    .local v3, "flag":Z
    if-eqz v3, :cond_2

    .line 1292
    const/16 v17, 0x0

    aget v17, v9, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$HandleView;->mStartRange:I

    .line 1293
    const/16 v17, 0x1

    aget v17, v9, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$HandleView;->mEndRange:I

    .line 1298
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    move-object/from16 v17, v0

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static/range {v17 .. v17}, Landroid/widget/MultiSelectPopupWindow;->access$600(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v7

    .line 1299
    .local v7, "positionListener":Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-virtual {v7}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->getPositionX()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentX:I

    .line 1300
    invoke-virtual {v7}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->getPositionY()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    .line 1301
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    .line 1302
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsTouchDown:Z

    goto/16 :goto_1

    .line 1295
    .end local v7    # "positionListener":Landroid/widget/MultiSelectPopupWindow$PositionListener;
    :cond_2
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$HandleView;->mStartRange:I

    .line 1296
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$HandleView;->mEndRange:I

    goto :goto_2

    .line 1307
    .end local v3    # "flag":Z
    .end local v9    # "range":[I
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v10

    .line 1308
    .local v10, "rawX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v11

    .line 1310
    .local v11, "rawY":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v8, v17, v18

    .line 1311
    .local v8, "previousVerticalOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v2, v17, v18

    .line 1313
    .local v2, "currentVerticalOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIdealVerticalOffset:F

    move/from16 v17, v0

    cmpg-float v17, v8, v17

    if-gez v17, :cond_5

    .line 1314
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIdealVerticalOffset:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1315
    .local v6, "newVerticalOffset":F
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1325
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    .line 1327
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    move/from16 v17, v0

    sub-float v17, v10, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHotspotX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v4, v17, v18

    .line 1328
    .local v4, "newPosX":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    move/from16 v17, v0

    sub-float v17, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchOffsetY:F

    move/from16 v18, v0

    add-float v5, v17, v18

    .line 1331
    .local v5, "newPosY":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 1332
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v12

    .line 1333
    .local v12, "scaleRatio":Landroid/graphics/PointF;
    iget v0, v12, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_3

    .line 1334
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mInitPositionX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v15, v17, v18

    .line 1335
    .local v15, "tempX":F
    sub-float v17, v10, v15

    iget v0, v12, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mInitPositionX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHotspotX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v4, v17, v18

    .line 1337
    .end local v15    # "tempX":F
    :cond_3
    iget v0, v12, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_4

    .line 1338
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mInitRawY:F

    move/from16 v17, v0

    sub-float v17, v11, v17

    iget v0, v12, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mInitPositionY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchOffsetY:F

    move/from16 v18, v0

    add-float v5, v17, v18

    .line 1343
    .end local v12    # "scaleRatio":Landroid/graphics/PointF;
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/MultiSelectPopupWindow$HandleView;->updatePosition(FF)V

    goto/16 :goto_1

    .line 1317
    .end local v4    # "newPosX":F
    .end local v5    # "newPosY":F
    .end local v6    # "newVerticalOffset":F
    :cond_5
    cmpg-float v17, v2, v8

    if-gez v17, :cond_6

    .line 1318
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIdealVerticalOffset:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1319
    .restart local v6    # "newVerticalOffset":F
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto/16 :goto_3

    .line 1322
    .end local v6    # "newVerticalOffset":F
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIdealVerticalOffset:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1323
    .restart local v6    # "newVerticalOffset":F
    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto/16 :goto_3

    .line 1348
    .end local v2    # "currentVerticalOffset":F
    .end local v6    # "newVerticalOffset":F
    .end local v8    # "previousVerticalOffset":F
    .end local v10    # "rawX":F
    .end local v11    # "rawY":F
    :pswitch_2
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    .line 1349
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 1350
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->refreshForSwitchingCursor()Z

    .line 1352
    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v14

    .line 1353
    .local v14, "selStart":I
    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .line 1355
    .local v13, "selEnd":I
    if-le v14, v13, :cond_7

    .line 1356
    check-cast v16, Landroid/text/Spannable;

    .end local v16    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, v16

    invoke-static {v0, v13, v14}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 1359
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->isShowing()Z

    move-result v17

    if-nez v17, :cond_1

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->show()V

    goto/16 :goto_1

    .line 1367
    .end local v13    # "selEnd":I
    .end local v14    # "selStart":I
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :pswitch_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    goto/16 :goto_1

    .line 1277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZZ)V
    .locals 7
    .param p1, "offset"    # I
    .param p2, "parentPositionChanged"    # Z
    .param p3, "parentScrolled"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1167
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 1168
    .local v1, "layout":Landroid/text/Layout;
    if-nez v1, :cond_1

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    if-eq p1, v5, :cond_4

    move v3, v4

    .line 1172
    .local v3, "offsetChanged":Z
    :goto_1
    if-nez v3, :cond_2

    if-nez p2, :cond_2

    if-eqz p3, :cond_0

    .line 1173
    :cond_2
    if-eqz v3, :cond_3

    .line 1174
    invoke-virtual {p0, p1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->updateSelection(I)V

    .line 1176
    :cond_3
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 1177
    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1179
    .local v0, "compensation":F
    :goto_2
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    add-float/2addr v5, v0

    iget v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHotspotX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    .line 1180
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    .line 1181
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v5

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBaselineY:I

    .line 1183
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    .line 1184
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    .line 1185
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBaselineY:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBaselineY:I

    .line 1187
    iput p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    .line 1188
    iput-boolean v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionHasChanged:Z

    goto :goto_0

    .line 1171
    .end local v0    # "compensation":F
    .end local v2    # "line":I
    .end local v3    # "offsetChanged":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 1177
    .restart local v2    # "line":I
    .restart local v3    # "offsetChanged":Z
    :cond_5
    const/high16 v0, -0x41000000    # -0.5f

    goto :goto_2
.end method

.method public recalHandleView()V
    .locals 3

    .prologue
    .line 1402
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1403
    .local v0, "handleHeight":I
    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchOffsetY:F

    .line 1404
    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIdealVerticalOffset:F

    .line 1405
    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 1394
    const/4 v0, 0x1

    return v0
.end method

.method public show()V
    .locals 12

    .prologue
    const/4 v8, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1078
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1127
    :goto_0
    return-void

    .line 1081
    :cond_0
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v7}, Landroid/widget/MultiSelectPopupWindow;->access$600(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v7

    invoke-virtual {v7, p0, v10}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->addSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;Z)V

    .line 1082
    iput v11, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    .line 1083
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getCurrentCursorOffset()I

    move-result v7

    invoke-virtual {p0, v7, v9, v9}, Landroid/widget/MultiSelectPopupWindow$HandleView;->positionAtCursorOffset(IZZ)V

    .line 1085
    new-array v6, v8, [I

    .line 1086
    .local v6, "window":[I
    new-array v5, v8, [I

    .line 1087
    .local v5, "screen":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 1088
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 1089
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    aget v8, v6, v9

    add-int v3, v7, v8

    .line 1090
    .local v3, "positionX":I
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    aget v8, v6, v10

    add-int v4, v7, v8

    .line 1091
    .local v4, "positionY":I
    aget v7, v5, v9

    aget v8, v6, v9

    sub-int v1, v7, v8

    .line 1092
    .local v1, "gapX":I
    aget v7, v5, v10

    aget v8, v6, v10

    sub-int v2, v7, v8

    .line 1094
    .local v2, "gapY":I
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1098
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_2

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eq v7, v8, :cond_2

    .line 1099
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1100
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1102
    :cond_1
    add-int/2addr v3, v1

    .line 1103
    add-int/2addr v4, v2

    .line 1106
    :cond_2
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v3, v4, v11, v11}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1108
    :cond_3
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_5

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eq v7, v8, :cond_5

    .line 1109
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1110
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1111
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1114
    :cond_4
    add-int/2addr v3, v1

    .line 1115
    add-int/2addr v4, v2

    .line 1116
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto/16 :goto_0

    .line 1118
    :cond_5
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1120
    :try_start_0
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    .line 1123
    const-string v7, "MultiSelectPopupWindow"

    const-string/jumbo v8, "showAtLocation occur BadTokenException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 1065
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 1066
    .local v1, "offset":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 1068
    .local v0, "isRtlCharAtOffset":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1069
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHotspotX:I

    .line 1070
    return-void

    .line 1068
    :cond_0
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 10
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 1193
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getCurrentCursorOffset()I

    move-result v7

    invoke-virtual {p0, v7, p3, p4}, Landroid/widget/MultiSelectPopupWindow$HandleView;->positionAtCursorOffset(IZZ)V

    .line 1194
    if-nez p3, :cond_0

    iget-boolean v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionHasChanged:Z

    if-eqz v7, :cond_7

    .line 1195
    :cond_0
    iget-boolean v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    if-eqz v7, :cond_3

    .line 1196
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentX:I

    if-ne p1, v7, :cond_1

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    if-eq p2, v7, :cond_2

    .line 1197
    :cond_1
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentX:I

    sub-int v8, p1, v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    .line 1198
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    sub-int v8, p2, v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    .line 1199
    iput p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentX:I

    .line 1200
    iput p2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    .line 1202
    :cond_2
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->onHandleMoved()V

    .line 1205
    :cond_3
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_b

    if-nez p3, :cond_b

    .line 1206
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 1207
    .local v6, "window":[I
    const/4 v7, 0x2

    new-array v5, v7, [I

    .line 1208
    .local v5, "screen":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 1209
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 1210
    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x0

    aget v8, v6, v8

    sub-int v1, v7, v8

    .line 1211
    .local v1, "gapX":I
    const/4 v7, 0x1

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    sub-int v2, v7, v8

    .line 1212
    .local v2, "gapY":I
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    add-int v3, p1, v7

    .line 1213
    .local v3, "positionX":I
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    add-int v4, p2, v7

    .line 1215
    .local v4, "positionY":I
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1220
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_5

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eq v7, v8, :cond_5

    .line 1221
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1222
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1224
    :cond_4
    add-int/2addr v3, v1

    .line 1225
    add-int/2addr v4, v2

    .line 1227
    :cond_5
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual {v7, v3, v4, v8, v9}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1253
    .end local v1    # "gapX":I
    .end local v2    # "gapY":I
    .end local v3    # "positionX":I
    .end local v4    # "positionY":I
    .end local v5    # "screen":[I
    .end local v6    # "window":[I
    :cond_6
    :goto_0
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionHasChanged:Z

    .line 1254
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v7}, Landroid/widget/MultiSelectPopupWindow;->relocateMultiSelectQuickPopupWindow()V

    .line 1256
    :cond_7
    return-void

    .line 1230
    .restart local v1    # "gapX":I
    .restart local v2    # "gapY":I
    .restart local v3    # "positionX":I
    .restart local v4    # "positionY":I
    .restart local v5    # "screen":[I
    .restart local v6    # "window":[I
    :cond_8
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_a

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eq v7, v8, :cond_a

    .line 1231
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1232
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1233
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1235
    :cond_9
    add-int/2addr v3, v1

    .line 1236
    add-int/2addr v4, v2

    .line 1238
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    .line 1240
    :cond_a
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1242
    :try_start_0
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1243
    :catch_0
    move-exception v0

    .line 1244
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    .line 1245
    const-string v7, "MultiSelectPopupWindow"

    const-string/jumbo v8, "showAtLocation occur BadTokenException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1250
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    .end local v1    # "gapX":I
    .end local v2    # "gapY":I
    .end local v3    # "positionX":I
    .end local v4    # "positionY":I
    .end local v5    # "screen":[I
    .end local v6    # "window":[I
    :cond_b
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1251
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->dismiss()V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method
