.class Lcom/android/incallui/view/SlideUpLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlideUpLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/view/SlideUpLayout;->playMessageTranslateOut(Landroid/widget/ListView;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/view/SlideUpLayout;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/SlideUpLayout;Ljava/lang/Runnable;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/incallui/view/SlideUpLayout$4;->this$0:Lcom/android/incallui/view/SlideUpLayout;

    iput-object p2, p0, Lcom/android/incallui/view/SlideUpLayout$4;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/incallui/view/SlideUpLayout$4;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 608
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout$4;->val$runnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 609
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout$4;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 611
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout$4;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 612
    .local v1, "num":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 613
    iget-object v2, p0, Lcom/android/incallui/view/SlideUpLayout$4;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 612
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 615
    :cond_1
    return-void
.end method
