.class Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwSmoothScrollByMove"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 0

    .prologue
    .line 6044
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p2, "x1"    # Landroid/widget/AbsHorizontalListView$1;

    .prologue
    .line 6044
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;-><init>(Landroid/widget/AbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6046
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$3900(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-result-object v1

    # getter for: Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->access$1900(Landroid/widget/AbsHorizontalListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6047
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$4000(Landroid/widget/AbsHorizontalListView;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 6048
    :try_start_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$4000(Landroid/widget/AbsHorizontalListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6049
    monitor-exit v2

    .line 6057
    :goto_0
    return-void

    .line 6051
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$4000(Landroid/widget/AbsHorizontalListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6052
    .local v0, "remain":I
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 6054
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6056
    .end local v0    # "remain":I
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v1, p0}, Landroid/widget/AbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6054
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
