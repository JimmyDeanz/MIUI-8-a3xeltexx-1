.class Lcom/android/incallui/CallButtonFragment$4;
.super Ljava/lang/Object;
.source "CallButtonFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallButtonFragment;->displayToolPanel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonFragment;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/CallButtonFragment;Z)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment$4;->this$0:Lcom/android/incallui/CallButtonFragment;

    iput-boolean p2, p0, Lcom/android/incallui/CallButtonFragment$4;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment$4;->val$value:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$4;->this$0:Lcom/android/incallui/CallButtonFragment;

    # getter for: Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v0}, Lcom/android/incallui/CallButtonFragment;->access$000(Lcom/android/incallui/CallButtonFragment;)Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$4;->this$0:Lcom/android/incallui/CallButtonFragment;

    # getter for: Lcom/android/incallui/CallButtonFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v0}, Lcom/android/incallui/CallButtonFragment;->access$000(Lcom/android/incallui/CallButtonFragment;)Lcom/android/incallui/InCallActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonFragment$4;->val$value:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->displayToolPanel(Z)V

    goto :goto_0
.end method
