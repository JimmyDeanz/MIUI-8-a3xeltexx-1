.class Landroid/widget/Toolbar$9;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toolbar;->animateTriangleToLeft()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 1641
    iput-object p1, p0, Landroid/widget/Toolbar$9;->this$0:Landroid/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1644
    iget-object v0, p0, Landroid/widget/Toolbar$9;->this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mTriangleToLeft:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/Toolbar;->access$600(Landroid/widget/Toolbar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setX(F)V

    .line 1645
    return-void
.end method
