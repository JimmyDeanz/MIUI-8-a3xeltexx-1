.class Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;
.super Landroid/widget/FrameLayout;
.source "MinimizeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentRootContainer"
.end annotation


# instance fields
.field private mDisplaySize:Landroid/graphics/Point;

.field private mLastOrientation:I

.field final synthetic this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->mDisplaySize:Landroid/graphics/Point;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->mLastOrientation:I

    return-void
.end method


# virtual methods
.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 5
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    .local v0, "opaque":Z
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsTouchDown:Z
    invoke-static {v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimating:Z
    invoke-static {v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    :goto_0
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "MinimizeAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gatherTransparentRegion: Transparent region="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Touchable region="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTouchableRegion:Landroid/graphics/Region;
    invoke-static {v4}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/graphics/Region;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mUsingSelectiveOrientation:Z
    invoke-static {v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->mDisplaySize:Landroid/graphics/Point;

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;)Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Point;)Z

    :cond_3
    new-instance v1, Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    .local v1, "transparentRegion":Landroid/graphics/Region;
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mTouchableRegion:Landroid/graphics/Region;
    invoke-static {v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/graphics/Region;

    move-result-object v2

    sget-object v3, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFixedOrientationCascade()Z

    move-result v1

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mUsingSelectiveOrientation:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4002(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->mDisplaySize:Landroid/graphics/Point;

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;)Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Point;)Z

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->mLastOrientation:I

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;->mDisplaySize:Landroid/graphics/Point;

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;)Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Point;)Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method
