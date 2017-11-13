.class Landroid/widget/Toolbar$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toolbar;
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
    .line 1606
    iput-object p1, p0, Landroid/widget/Toolbar$8;->this$0:Landroid/widget/Toolbar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1616
    iget-object v0, p0, Landroid/widget/Toolbar$8;->this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mTriangleToRight:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/Toolbar;->access$700(Landroid/widget/Toolbar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Landroid/widget/Toolbar$8;->this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mTriangleToRight:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/Toolbar;->access$700(Landroid/widget/Toolbar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1619
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1609
    iget-object v0, p0, Landroid/widget/Toolbar$8;->this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mTriangleToRight:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/Toolbar;->access$700(Landroid/widget/Toolbar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Landroid/widget/Toolbar$8;->this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mTriangleToRight:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/Toolbar;->access$700(Landroid/widget/Toolbar;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1612
    :cond_0
    return-void
.end method
