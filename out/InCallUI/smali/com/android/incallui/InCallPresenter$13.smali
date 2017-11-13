.class Lcom/android/incallui/InCallPresenter$13;
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

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$13;->this$0:Lcom/android/incallui/InCallPresenter;

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$13;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/InCallPresenter$13;->val$name:Ljava/lang/String;

    iput p4, p0, Lcom/android/incallui/InCallPresenter$13;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$13;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$400(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$13;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->unRegistDialogDismissReceiver()V

    .line 523
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$13;->this$0:Lcom/android/incallui/InCallPresenter;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$13;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    .line 524
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$13;->this$0:Lcom/android/incallui/InCallPresenter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$13;->val$number:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter$13;->val$name:Ljava/lang/String;

    iget v4, p0, Lcom/android/incallui/InCallPresenter$13;->val$slotId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/incallui/InCallPresenter;->livetalkRedial(ZLjava/lang/String;Ljava/lang/String;I)V

    .line 525
    return-void
.end method
