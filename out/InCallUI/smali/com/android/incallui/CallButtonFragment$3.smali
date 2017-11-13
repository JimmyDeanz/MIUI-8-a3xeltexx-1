.class Lcom/android/incallui/CallButtonFragment$3;
.super Ljava/lang/Object;
.source "CallButtonFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallButtonFragment;->setVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment$3;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$3;->this$0:Lcom/android/incallui/CallButtonFragment;

    const/4 v1, 0x1

    # invokes: Lcom/android/incallui/CallButtonFragment;->startCallButtonAnimator(Z)V
    invoke-static {v0, v1}, Lcom/android/incallui/CallButtonFragment;->access$200(Lcom/android/incallui/CallButtonFragment;Z)V

    .line 217
    return-void
.end method
