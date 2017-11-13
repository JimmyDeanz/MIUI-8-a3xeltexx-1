.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->openSamsungflow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

.field final synthetic val$morphUpwards:Z

.field final synthetic val$startHeight:I

.field final synthetic val$startY:F

.field final synthetic val$targetHeight:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IZFI)V
    .locals 0

    .prologue
    .line 980
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iput p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;->val$targetHeight:I

    iput-boolean p3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;->val$morphUpwards:Z

    iput p4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;->val$startY:F

    iput p5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;->val$startHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 983
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1500(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 984
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;->val$targetHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 985
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1500(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 986
    iget-boolean v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;->val$morphUpwards:Z

    if-eqz v2, :cond_0

    .line 987
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;->val$startY:F

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;->val$targetHeight:I

    iget v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;->val$startHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 988
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1500(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 990
    .end local v1    # "y":F
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1500(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    .line 991
    return-void
.end method
