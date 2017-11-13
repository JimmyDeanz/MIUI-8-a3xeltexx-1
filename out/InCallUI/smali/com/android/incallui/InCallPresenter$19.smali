.class Lcom/android/incallui/InCallPresenter$19;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallPresenter;->showLivetalkDialog(ILjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$19;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$19;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$400(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 590
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$19;->this$0:Lcom/android/incallui/InCallPresenter;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$19;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    .line 591
    return-void
.end method
