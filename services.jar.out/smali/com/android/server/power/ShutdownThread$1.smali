.class final Lcom/android/server/power/ShutdownThread$1;
.super Landroid/app/Dialog;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->createMConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field buttonView:Landroid/widget/LinearLayout;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$description:I

.field final synthetic val$titleText:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/content/Context;II)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I

    .prologue
    .line 445
    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$1;->val$ctx:Landroid/content/Context;

    iput p4, p0, Lcom/android/server/power/ShutdownThread$1;->val$titleText:I

    iput p5, p0, Lcom/android/server/power/ShutdownThread$1;->val$description:I

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/ShutdownThread$1;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread$1;

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread$1;->animateDismiss()V

    return-void
.end method

.method private animateDismiss()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x12c

    .line 609
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$1;->buttonView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$1;->buttonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 611
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/server/power/ShutdownThread$1$3;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownThread$1$3;-><init>(Lcom/android/server/power/ShutdownThread$1;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 620
    :goto_0
    return-void

    .line 618
    :cond_0
    const-string v0, "ShutdownThread"

    const-string v1, "ButtonView is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 598
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 599
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 605
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 601
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread$1;->animateDismiss()V

    .line 602
    const/4 v0, 0x1

    goto :goto_0

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public init()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$1;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 449
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x80180

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 452
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 453
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 454
    const/16 v1, 0x7d9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 455
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$1;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 456
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$1;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 457
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 28
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 462
    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 464
    new-instance v20, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 465
    .local v20, "rootView":Landroid/widget/RelativeLayout;
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 468
    .local v19, "rootParam":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    new-instance v4, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 471
    .local v4, "bgView":Landroid/widget/RelativeLayout;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 473
    .local v5, "bgViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    const/high16 v21, -0x1000000

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 475
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 476
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v21

    const v22, 0x3f333333    # 0.7f

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v21

    const-wide/16 v22, 0x12c

    invoke-virtual/range {v21 .. v23}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 479
    const/4 v9, 0x2

    .line 480
    .local v9, "coverType":I
    new-instance v7, Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 481
    .local v7, "coverManager":Lcom/samsung/android/cover/CoverManager;
    if-eqz v7, :cond_0

    .line 482
    # getter for: Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$000()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 483
    invoke-virtual {v7}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v8

    .line 484
    .local v8, "coverState":Lcom/samsung/android/cover/CoverState;
    # invokes: Lcom/android/server/power/ShutdownThread;->checkCoverOpen(Lcom/samsung/android/cover/CoverState;)Z
    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$200(Lcom/samsung/android/cover/CoverState;)Z

    move-result v21

    # setter for: Lcom/android/server/power/ShutdownThread;->coverOpen:Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/power/ShutdownThread;->access$102(Z)Z

    .line 485
    if-eqz v8, :cond_0

    .line 486
    invoke-virtual {v8}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v9

    .line 489
    .end local v8    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_0
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/power/ShutdownThread$1;->buttonView:Landroid/widget/LinearLayout;

    .line 490
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 493
    .local v6, "buttonViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v21, 0xd

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->buttonView:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->buttonView:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->buttonView:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x11

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 499
    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 501
    .local v14, "icon":Landroid/widget/ImageView;
    # getter for: Lcom/android/server/power/ShutdownThread;->mReboot:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x1080981

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 506
    .local v10, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff4cccccccccccdL    # 1.3

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3ff4cccccccccccdL    # 1.3

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->buttonView:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 512
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 513
    .local v17, "messageView":Landroid/widget/TextView;
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/ShutdownThread$1;->val$titleText:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    const/16 v21, 0x2

    const v22, 0x418f5c29    # 17.92f

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 518
    const-string v21, "#fafafa"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->buttonView:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 521
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 522
    .local v11, "descriptionView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    .line 523
    .local v18, "metrics":Landroid/util/DisplayMetrics;
    const/16 v21, 0x1

    const/high16 v22, 0x439b0000    # 310.0f

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v16

    .line 524
    .local v16, "maxWidth":F
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/ShutdownThread$1;->val$description:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    const/16 v21, 0x2

    const/high16 v22, 0x41600000    # 14.0f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 528
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 529
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 530
    const/16 v21, 0x11

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 531
    const-string v21, "#c3c3c3"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->buttonView:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 534
    new-instance v12, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 535
    .local v12, "fadeoutView":Landroid/widget/RelativeLayout;
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 537
    .local v13, "fadeoutViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 539
    const/high16 v21, -0x1000000

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 542
    new-instance v15, Lcom/android/server/power/ShutdownThread$1$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12}, Lcom/android/server/power/ShutdownThread$1$1;-><init>(Lcom/android/server/power/ShutdownThread$1;Landroid/widget/RelativeLayout;)V

    .line 562
    .local v15, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    new-instance v21, Lcom/android/server/power/ShutdownThread$1$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$1$2;-><init>(Lcom/android/server/power/ShutdownThread$1;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->buttonView:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 574
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 575
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownThread$1;->setContentView(Landroid/view/View;)V

    .line 576
    return-void

    .line 504
    .end local v10    # "d":Landroid/graphics/drawable/Drawable;
    .end local v11    # "descriptionView":Landroid/widget/TextView;
    .end local v12    # "fadeoutView":Landroid/widget/RelativeLayout;
    .end local v13    # "fadeoutViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "listener":Landroid/view/View$OnClickListener;
    .end local v16    # "maxWidth":F
    .end local v17    # "messageView":Landroid/widget/TextView;
    .end local v18    # "metrics":Landroid/util/DisplayMetrics;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x108097f

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .restart local v10    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 580
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 581
    const-string v1, "ShutdownThread"

    const-string/jumbo v2, "onStart"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$1;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 583
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$1;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 584
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 585
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 586
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 587
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 588
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 592
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$1;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 593
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$1;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 594
    return-void
.end method
