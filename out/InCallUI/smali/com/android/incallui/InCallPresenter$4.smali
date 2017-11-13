.class Lcom/android/incallui/InCallPresenter$4;
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

.field final synthetic val$areaCodeCb:Landroid/widget/CheckBox;

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;Landroid/widget/EditText;Landroid/widget/CheckBox;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$4;->val$et:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/incallui/InCallPresenter$4;->val$areaCodeCb:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/android/incallui/InCallPresenter$4;->val$number:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/incallui/InCallPresenter$4;->val$name:Ljava/lang/String;

    iput p6, p0, Lcom/android/incallui/InCallPresenter$4;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 400
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$4;->val$et:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "areaCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v3}, Lcom/android/incallui/InCallPresenter;->access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    .line 402
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 403
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$4;->val$areaCodeCb:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/incallui/InCallPresenter;->access$300(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 405
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "defaultAreaCode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 408
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter$4;->val$number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter$4;->val$name:Ljava/lang/String;

    iget v6, p0, Lcom/android/incallui/InCallPresenter$4;->val$slotId:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/incallui/InCallPresenter;->livetalkRedial(ZLjava/lang/String;Ljava/lang/String;I)V

    .line 410
    :cond_1
    return-void
.end method
