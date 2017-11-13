.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$17;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$17;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1023
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1024
    .local v0, "val":F
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$17;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$700(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1025
    return-void
.end method
