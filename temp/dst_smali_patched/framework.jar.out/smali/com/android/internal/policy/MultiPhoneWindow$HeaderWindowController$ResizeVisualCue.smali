.class Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;
.super Landroid/widget/FrameLayout;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResizeVisualCue"
.end annotation


# static fields
.field private static final CUE_COUNT:I = 0x4


# instance fields
.field private mCueViews:[Landroid/widget/ImageView;

.field mEndAnimation:Landroid/view/animation/Animation;

.field mIsAttached:Z

.field mStartAnimation:Landroid/view/animation/Animation;

.field mThicknessBorer:I

.field mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;Landroid/content/Context;)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v6, -0x2

    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-array v3, v7, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050325

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mThicknessBorer:I

    iget-object v3, p1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10805d3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawableCue":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x35

    invoke-direct {v2, v6, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x55

    invoke-direct {v2, v6, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x53

    invoke-direct {v2, v6, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x33

    invoke-direct {v2, v6, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;Landroid/content/Context;Lcom/android/internal/policy/MultiPhoneWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/internal/policy/MultiPhoneWindow$1;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;Landroid/content/Context;)V

    return-void
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    .prologue
    const/4 v4, 0x0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mThicknessBorer:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mThicknessBorer:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mThicknessBorer:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mThicknessBorer:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x3ef

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v1, "PenWindow ResizeVisualCue"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v1, 0x218

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    return-object v0
.end method


# virtual methods
.method addWindow()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mIsAttached:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v2, :cond_0

    const-string v2, "MultiPhoneWindow"

    const-string v3, "addWindow ResizeVisualCue"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mIsAttached:Z

    .end local v0    # "i":I
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    return-void
.end method

.method cancelAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    const-string v1, "Cancel mStartAnimation of ResizeVisualCue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v0, :cond_1

    const-string v0, "MultiPhoneWindow"

    const-string v1, "Cancel mEndAnimation of ResizeVisualCue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method hide()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mIsAttached:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method playAnimation(Z)V
    .locals 4
    .param p1, "startAnimation"    # Z

    .prologue
    const/4 v3, 0x4

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->show()V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v1, :cond_1

    const-string v1, "MultiPhoneWindow"

    const-string v2, "Play mStartAnimation of ResizeVisualCue"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v3, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-boolean v1, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v1, :cond_1

    const-string v1, "MultiPhoneWindow"

    const-string v2, "Play mEndAnimation of ResizeVisualCue"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method removeWindow()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mIsAttached:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$1;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mIsAttached:Z

    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method setAnimation()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$2;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$3;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    const-string v1, "setAnimation for ResizeVisualCue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method show()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mIsAttached:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    return-void
.end method
