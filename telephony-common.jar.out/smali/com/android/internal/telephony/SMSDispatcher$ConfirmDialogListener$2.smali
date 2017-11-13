.class Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$2;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;)V
    .locals 0

    .prologue
    .line 2363
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$2;->this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2365
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$2;->this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    # getter for: Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mPositiveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->access$500(Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x10403cb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2366
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$2;->this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    # getter for: Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mNegativeButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->access$600(Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x10403cc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2367
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$2;->this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    # getter for: Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->access$700(Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2368
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$2;->this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    # getter for: Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->access$700(Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2369
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$2;->this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    # getter for: Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->access$700(Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2371
    :cond_0
    return-void
.end method
