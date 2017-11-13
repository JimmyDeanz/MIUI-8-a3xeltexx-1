.class Lcom/android/incallui/CallCardFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->hideSmallAvatar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$3;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v2, 0x8

    .line 306
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$3;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$100(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$3;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mAvatarLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$100(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$3;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mVerifyimg:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    return-void
.end method
