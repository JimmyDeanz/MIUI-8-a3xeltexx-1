.class Lcom/android/phone/EmergencyActionGroup$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EmergencyActionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyActionGroup;->hideTheButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyActionGroup;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyActionGroup;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/phone/EmergencyActionGroup$1;->this$0:Lcom/android/phone/EmergencyActionGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/phone/EmergencyActionGroup$1;->this$0:Lcom/android/phone/EmergencyActionGroup;

    # getter for: Lcom/android/phone/EmergencyActionGroup;->mSelectedContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/phone/EmergencyActionGroup;->access$000(Lcom/android/phone/EmergencyActionGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/android/phone/EmergencyActionGroup$1;->this$0:Lcom/android/phone/EmergencyActionGroup;

    iget-object v1, p0, Lcom/android/phone/EmergencyActionGroup$1;->this$0:Lcom/android/phone/EmergencyActionGroup;

    # getter for: Lcom/android/phone/EmergencyActionGroup;->mRippleRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/phone/EmergencyActionGroup;->access$100(Lcom/android/phone/EmergencyActionGroup;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyActionGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 298
    iget-object v0, p0, Lcom/android/phone/EmergencyActionGroup$1;->this$0:Lcom/android/phone/EmergencyActionGroup;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/EmergencyActionGroup;->mHiding:Z
    invoke-static {v0, v1}, Lcom/android/phone/EmergencyActionGroup;->access$202(Lcom/android/phone/EmergencyActionGroup;Z)Z

    .line 299
    return-void
.end method
