.class Lcom/android/incallui/CallCardFragment$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->controlBigAvatar(ZZ)V
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
    .line 1060
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$9;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$9;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->showSmallAvatar()V

    .line 1064
    return-void
.end method
