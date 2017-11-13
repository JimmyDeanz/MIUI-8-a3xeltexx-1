.class Lcom/android/phone/MiuiMMIDialogActivity$1;
.super Landroid/os/Handler;
.source "MiuiMMIDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiMMIDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiMMIDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiMMIDialogActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/phone/MiuiMMIDialogActivity$1;->this$0:Lcom/android/phone/MiuiMMIDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/MiuiMMIDialogActivity$1;->this$0:Lcom/android/phone/MiuiMMIDialogActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    # invokes: Lcom/android/phone/MiuiMMIDialogActivity;->onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V
    invoke-static {v1, v0}, Lcom/android/phone/MiuiMMIDialogActivity;->access$000(Lcom/android/phone/MiuiMMIDialogActivity;Lcom/android/internal/telephony/MmiCode;)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/MiuiMMIDialogActivity$1;->this$0:Lcom/android/phone/MiuiMMIDialogActivity;

    # invokes: Lcom/android/phone/MiuiMMIDialogActivity;->onMMICancel()V
    invoke-static {v0}, Lcom/android/phone/MiuiMMIDialogActivity;->access$100(Lcom/android/phone/MiuiMMIDialogActivity;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
