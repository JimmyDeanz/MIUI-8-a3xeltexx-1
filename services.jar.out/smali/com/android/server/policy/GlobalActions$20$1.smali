.class Lcom/android/server/policy/GlobalActions$20$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$20;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$20;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$20;)V
    .locals 0

    .prologue
    .line 2256
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$20$1;->this$1:Lcom/android/server/policy/GlobalActions$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2273
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2268
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$20$1;->this$1:Lcom/android/server/policy/GlobalActions$20;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$20;->val$action:Lcom/android/server/policy/GlobalActions$Action;

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    .line 2269
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2264
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2260
    return-void
.end method
