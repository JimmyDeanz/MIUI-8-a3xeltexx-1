.class Lcom/android/incallui/VideoCallFragment$1;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/VideoCallFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VideoCallFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/incallui/VideoCallFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$1;->this$0:Lcom/android/incallui/VideoCallFragment;

    iput-object p2, p0, Lcom/android/incallui/VideoCallFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 458
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$1;->val$view:Landroid/view/View;

    const v3, 0x7f0900fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 459
    .local v0, "displayVideo":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 460
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$1;->this$0:Lcom/android/incallui/VideoCallFragment;

    # invokes: Lcom/android/incallui/VideoCallFragment;->centerDisplayView(Landroid/view/View;)V
    invoke-static {v2, v0}, Lcom/android/incallui/VideoCallFragment;->access$000(Lcom/android/incallui/VideoCallFragment;Landroid/view/View;)V

    .line 463
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$1;->this$0:Lcom/android/incallui/VideoCallFragment;

    const/4 v3, 0x1

    # setter for: Lcom/android/incallui/VideoCallFragment;->mIsLayoutComplete:Z
    invoke-static {v2, v3}, Lcom/android/incallui/VideoCallFragment;->access$102(Lcom/android/incallui/VideoCallFragment;Z)Z

    .line 466
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$1;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 467
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 468
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 470
    :cond_1
    return-void
.end method
