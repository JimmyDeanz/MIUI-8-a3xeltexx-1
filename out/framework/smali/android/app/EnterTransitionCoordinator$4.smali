.class Landroid/app/EnterTransitionCoordinator$4;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->startSharedElementTransition(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mAnimations:I

.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$4;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 361
    iget v1, p0, Landroid/app/EnterTransitionCoordinator$4;->mAnimations:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/app/EnterTransitionCoordinator$4;->mAnimations:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 362
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$4;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v1}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 363
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 370
    .end local v0    # "decorView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$4;->this$0:Landroid/app/EnterTransitionCoordinator;

    iget-object v1, v1, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$4;->this$0:Landroid/app/EnterTransitionCoordinator;

    iget-object v1, v1, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 368
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$4;->this$0:Landroid/app/EnterTransitionCoordinator;

    iput-object v3, v1, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    goto :goto_0
.end method
