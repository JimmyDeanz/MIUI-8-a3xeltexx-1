.class Lcom/android/incallui/view/CallCardStateInfoView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallCardStateInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/view/CallCardStateInfoView;->playElapsedTimeTranslateIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/view/CallCardStateInfoView;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/CallCardStateInfoView;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/incallui/view/CallCardStateInfoView$1;->this$0:Lcom/android/incallui/view/CallCardStateInfoView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/incallui/view/CallCardStateInfoView$1;->this$0:Lcom/android/incallui/view/CallCardStateInfoView;

    # getter for: Lcom/android/incallui/view/CallCardStateInfoView;->mElapsedTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/incallui/view/CallCardStateInfoView;->access$000(Lcom/android/incallui/view/CallCardStateInfoView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    return-void
.end method
