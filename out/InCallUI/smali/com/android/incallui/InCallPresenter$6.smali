.class Lcom/android/incallui/InCallPresenter$6;
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

.field final synthetic val$cb:Landroid/widget/CheckBox;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;Landroid/widget/CheckBox;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$6;->this$0:Lcom/android/incallui/InCallPresenter;

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$6;->val$cb:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/incallui/InCallPresenter$6;->val$number:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/incallui/InCallPresenter$6;->val$name:Ljava/lang/String;

    iput p5, p0, Lcom/android/incallui/InCallPresenter$6;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 438
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$6;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$300(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 439
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "not_prompt_userconfig"

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$6;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 441
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$6;->this$0:Lcom/android/incallui/InCallPresenter;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter$6;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v3}, Lcom/android/incallui/InCallPresenter;->access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    .line 442
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$6;->this$0:Lcom/android/incallui/InCallPresenter;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter$6;->val$number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter$6;->val$name:Ljava/lang/String;

    iget v5, p0, Lcom/android/incallui/InCallPresenter$6;->val$slotId:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/incallui/InCallPresenter;->livetalkRedial(ZLjava/lang/String;Ljava/lang/String;I)V

    .line 443
    return-void

    .line 439
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
