.class Lcom/android/phone/settings/SmscAddressSettingActivity$1;
.super Landroid/os/Handler;
.source "SmscAddressSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/SmscAddressSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/SmscAddressSettingActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$1;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f080382

    const v5, 0x7f0800c3

    const v4, 0x1010355

    .line 60
    iget-object v2, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$1;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    # getter for: Lcom/android/phone/settings/SmscAddressSettingActivity;->isShowing:Z
    invoke-static {v2}, Lcom/android/phone/settings/SmscAddressSettingActivity;->access$000(Lcom/android/phone/settings/SmscAddressSettingActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    const/16 v2, 0x3eb

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/SmscAddressSettingActivity$1;->removeMessages(I)V

    .line 100
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 101
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 102
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$1;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08037e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 109
    .local v1, "dlg":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/phone/settings/SmscAddressSettingActivity$1$3;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/SmscAddressSettingActivity$1$3;-><init>(Lcom/android/phone/settings/SmscAddressSettingActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 115
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 71
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "dlg":Landroid/app/AlertDialog;
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$1;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08037f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 76
    .restart local v1    # "dlg":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/phone/settings/SmscAddressSettingActivity$1$1;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/SmscAddressSettingActivity$1$1;-><init>(Lcom/android/phone/settings/SmscAddressSettingActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 82
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 85
    .end local v1    # "dlg":Landroid/app/AlertDialog;
    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$1;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080381

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 90
    .restart local v1    # "dlg":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/phone/settings/SmscAddressSettingActivity$1$2;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/SmscAddressSettingActivity$1$2;-><init>(Lcom/android/phone/settings/SmscAddressSettingActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 96
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 117
    .end local v1    # "dlg":Landroid/app/AlertDialog;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$1;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    iget-object v4, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$1;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/android/phone/settings/SmscAddressSettingActivity;->smscToString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/phone/settings/SmscAddressSettingActivity;->access$200(Lcom/android/phone/settings/SmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/phone/settings/SmscAddressSettingActivity;->mSmscAddress:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/phone/settings/SmscAddressSettingActivity;->access$102(Lcom/android/phone/settings/SmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$1;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    # getter for: Lcom/android/phone/settings/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/settings/SmscAddressSettingActivity;->access$300(Lcom/android/phone/settings/SmscAddressSettingActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$1;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    # getter for: Lcom/android/phone/settings/SmscAddressSettingActivity;->mSmscAddress:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/settings/SmscAddressSettingActivity;->access$100(Lcom/android/phone/settings/SmscAddressSettingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$1;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    # getter for: Lcom/android/phone/settings/SmscAddressSettingActivity;->mSmscAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/settings/SmscAddressSettingActivity;->access$100(Lcom/android/phone/settings/SmscAddressSettingActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$1;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    # getter for: Lcom/android/phone/settings/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/settings/SmscAddressSettingActivity;->access$300(Lcom/android/phone/settings/SmscAddressSettingActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$1;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    # getter for: Lcom/android/phone/settings/SmscAddressSettingActivity;->mSmscAddress:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/settings/SmscAddressSettingActivity;->access$100(Lcom/android/phone/settings/SmscAddressSettingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 125
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    const/16 v2, 0x3ec

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/SmscAddressSettingActivity$1;->removeMessages(I)V

    .line 126
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 127
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 128
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$1;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080380

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 135
    .restart local v1    # "dlg":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/phone/settings/SmscAddressSettingActivity$1$4;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/SmscAddressSettingActivity$1$4;-><init>(Lcom/android/phone/settings/SmscAddressSettingActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 141
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 143
    .end local v1    # "dlg":Landroid/app/AlertDialog;
    :cond_3
    iget-object v2, p0, Lcom/android/phone/settings/SmscAddressSettingActivity$1;->this$0:Lcom/android/phone/settings/SmscAddressSettingActivity;

    invoke-virtual {v2}, Lcom/android/phone/settings/SmscAddressSettingActivity;->finish()V

    goto/16 :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
