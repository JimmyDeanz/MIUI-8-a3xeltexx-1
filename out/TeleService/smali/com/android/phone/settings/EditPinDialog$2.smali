.class Lcom/android/phone/settings/EditPinDialog$2;
.super Landroid/os/Handler;
.source "EditPinDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/EditPinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/EditPinDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/EditPinDialog;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v7, 0x104000a

    const/high16 v6, 0x1040000

    const v5, 0x1010355

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 430
    const/4 v0, 0x0

    .line 432
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 522
    :goto_0
    return-void

    .line 434
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # getter for: Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog;->access$200(Lcom/android/phone/settings/EditPinDialog;)Lmiui/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/ProgressDialog;->show()V

    .line 435
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # invokes: Lcom/android/phone/settings/EditPinDialog;->process()V
    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog;->access$300(Lcom/android/phone/settings/EditPinDialog;)V

    goto :goto_0

    .line 438
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # setter for: Lcom/android/phone/settings/EditPinDialog;->mErrorMessage:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/phone/settings/EditPinDialog;->access$402(Lcom/android/phone/settings/EditPinDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    invoke-virtual {v1}, Lcom/android/phone/settings/EditPinDialog;->show()V

    .line 440
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # getter for: Lcom/android/phone/settings/EditPinDialog;->mProgressDialog:Lmiui/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog;->access$200(Lcom/android/phone/settings/EditPinDialog;)Lmiui/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 443
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 444
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # getter for: Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog;->access$500(Lcom/android/phone/settings/EditPinDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0803f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/settings/EditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # invokes: Lcom/android/phone/settings/EditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/settings/EditPinDialog;->access$600(Lcom/android/phone/settings/EditPinDialog;Z)V

    goto :goto_0

    .line 451
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 452
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # getter for: Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog;->access$700(Lcom/android/phone/settings/EditPinDialog;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->updatePin2State(Landroid/os/AsyncResult;I)V

    .line 453
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # getter for: Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog;->access$500(Lcom/android/phone/settings/EditPinDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08040b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/settings/EditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 456
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # invokes: Lcom/android/phone/settings/EditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/settings/EditPinDialog;->access$600(Lcom/android/phone/settings/EditPinDialog;Z)V

    goto :goto_0

    .line 460
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 461
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 462
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # getter for: Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog;->access$700(Lcom/android/phone/settings/EditPinDialog;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->isPin1Locked(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 463
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # getter for: Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog;->access$500(Lcom/android/phone/settings/EditPinDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0803f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/settings/EditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 465
    :cond_2
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # invokes: Lcom/android/phone/settings/EditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/settings/EditPinDialog;->access$600(Lcom/android/phone/settings/EditPinDialog;Z)V

    .line 466
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # getter for: Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/settings/EditPinDialog;->access$500(Lcom/android/phone/settings/EditPinDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801fa

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/settings/EditPinDialog$2$1;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/EditPinDialog$2$1;-><init>(Lcom/android/phone/settings/EditPinDialog$2;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 476
    :cond_3
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    const v2, 0x7f0801f9

    # invokes: Lcom/android/phone/settings/EditPinDialog;->showToast(I)V
    invoke-static {v1, v2}, Lcom/android/phone/settings/EditPinDialog;->access$800(Lcom/android/phone/settings/EditPinDialog;I)V

    .line 477
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # invokes: Lcom/android/phone/settings/EditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/settings/EditPinDialog;->access$600(Lcom/android/phone/settings/EditPinDialog;Z)V

    goto/16 :goto_0

    .line 481
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 482
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # getter for: Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog;->access$700(Lcom/android/phone/settings/EditPinDialog;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->updatePin2State(Landroid/os/AsyncResult;I)V

    .line 483
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 484
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # getter for: Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog;->access$700(Lcom/android/phone/settings/EditPinDialog;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->isPin2Locked(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 485
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # getter for: Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog;->access$500(Lcom/android/phone/settings/EditPinDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08040b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/settings/EditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 487
    :cond_4
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # invokes: Lcom/android/phone/settings/EditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/settings/EditPinDialog;->access$600(Lcom/android/phone/settings/EditPinDialog;Z)V

    .line 488
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # getter for: Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/settings/EditPinDialog;->access$500(Lcom/android/phone/settings/EditPinDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080206

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/settings/EditPinDialog$2$2;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/EditPinDialog$2$2;-><init>(Lcom/android/phone/settings/EditPinDialog$2;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 498
    :cond_5
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    const v2, 0x7f080204

    # invokes: Lcom/android/phone/settings/EditPinDialog;->showToast(I)V
    invoke-static {v1, v2}, Lcom/android/phone/settings/EditPinDialog;->access$800(Lcom/android/phone/settings/EditPinDialog;I)V

    .line 499
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # invokes: Lcom/android/phone/settings/EditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/settings/EditPinDialog;->access$600(Lcom/android/phone/settings/EditPinDialog;Z)V

    goto/16 :goto_0

    .line 503
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 504
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    .line 505
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # getter for: Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog;->access$500(Lcom/android/phone/settings/EditPinDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0803f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/settings/EditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 507
    :cond_6
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    const v2, 0x7f0801f9

    # invokes: Lcom/android/phone/settings/EditPinDialog;->showToast(I)V
    invoke-static {v1, v2}, Lcom/android/phone/settings/EditPinDialog;->access$800(Lcom/android/phone/settings/EditPinDialog;I)V

    .line 508
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # invokes: Lcom/android/phone/settings/EditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/settings/EditPinDialog;->access$600(Lcom/android/phone/settings/EditPinDialog;Z)V

    goto/16 :goto_0

    .line 512
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 513
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # getter for: Lcom/android/phone/settings/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog;->access$700(Lcom/android/phone/settings/EditPinDialog;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->updatePin2State(Landroid/os/AsyncResult;I)V

    .line 514
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    .line 515
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # getter for: Lcom/android/phone/settings/EditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog;->access$500(Lcom/android/phone/settings/EditPinDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08040a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/settings/EditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 517
    :cond_7
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    const v2, 0x7f080204

    # invokes: Lcom/android/phone/settings/EditPinDialog;->showToast(I)V
    invoke-static {v1, v2}, Lcom/android/phone/settings/EditPinDialog;->access$800(Lcom/android/phone/settings/EditPinDialog;I)V

    .line 518
    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$2;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # invokes: Lcom/android/phone/settings/EditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/settings/EditPinDialog;->access$600(Lcom/android/phone/settings/EditPinDialog;Z)V

    goto/16 :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
