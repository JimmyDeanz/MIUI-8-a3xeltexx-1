.class Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)V
    .locals 0

    .prologue
    .line 5155
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5159
    .local v0, "time":J
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    # getter for: Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I
    invoke-static {v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$1000(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I

    move-result v3

    iget-object v4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    # getter for: Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I
    invoke-static {v4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$1100(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I

    move-result v4

    # invokes: Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V
    invoke-static {v2, v0, v1, v3, v4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$1200(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;JII)V

    .line 5160
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    const v3, 0x3f4ccccd    # 0.8f

    # *= operator for: Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F
    invoke-static {v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$1332(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;F)F

    .line 5161
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    # invokes: Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postFling(J)Z
    invoke-static {v2, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$1400(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5162
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    const/4 v3, 0x0

    # setter for: Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z
    invoke-static {v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$1502(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;Z)Z

    .line 5163
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    # invokes: Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V
    invoke-static {v2, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$1600(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)V

    .line 5165
    :cond_0
    return-void
.end method
