.class Lcom/android/internal/policy/multiwindow/MinimizeAnimator$2;
.super Landroid/os/Handler;
.source "MinimizeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$2;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$2;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/MultiPhoneWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->requestMaximize()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
