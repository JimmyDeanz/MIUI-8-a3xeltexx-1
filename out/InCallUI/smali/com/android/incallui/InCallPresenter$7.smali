.class Lcom/android/incallui/InCallPresenter$7;
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
    .line 446
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 450
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v2}, Lcom/android/incallui/InCallPresenter;->access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    .line 451
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 452
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.livetalk.USER_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 454
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallPresenter;->skipToLivetalkPage(Landroid/content/Intent;)V

    .line 455
    return-void
.end method
