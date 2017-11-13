.class Lcom/android/incallui/smartcover/b7/B7CoverFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "B7CoverFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcover/b7/B7CoverFragment;->playCircleTranslateInAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/smartcover/b7/B7CoverFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/smartcover/b7/B7CoverFragment;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment$2;->this$0:Lcom/android/incallui/smartcover/b7/B7CoverFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v1, 0x64

    .line 518
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment$2;->this$0:Lcom/android/incallui/smartcover/b7/B7CoverFragment;

    iget-object v0, v0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 519
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverFragment$2;->this$0:Lcom/android/incallui/smartcover/b7/B7CoverFragment;

    iget-object v0, v0, Lcom/android/incallui/smartcover/b7/B7CoverFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 520
    return-void
.end method
