.class Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;
.super Landroid/os/Handler;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/sdk/cover/ScoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;->val$this$0:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->access$100(Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/samsung/android/cover/CoverState;

    .local v8, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v8, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    iget-object v1, v1, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->this$0:Lcom/samsung/android/sdk/cover/ScoverManager;

    const/high16 v2, 0x1020000

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v8, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v8, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v8, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v8, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v8, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v8, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v7, v8, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZI)V

    .local v0, "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->access$100(Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;->onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V

    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    .end local v8    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_0
    :goto_1
    return-void

    .restart local v8    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    iget-object v1, v1, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->this$0:Lcom/samsung/android/sdk/cover/ScoverManager;

    const/high16 v2, 0x1010000

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v8, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v8, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v8, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v8, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v8, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v8, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZ)V

    .restart local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    goto :goto_0

    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v8, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v8, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v8, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v8, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v8, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIII)V

    .restart local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    goto :goto_0

    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_3
    const-string v1, "ScoverManager"

    const-string v2, "coverState : null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
