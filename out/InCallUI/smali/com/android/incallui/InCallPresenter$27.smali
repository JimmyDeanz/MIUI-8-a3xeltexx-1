.class Lcom/android/incallui/InCallPresenter$27;
.super Landroid/os/Handler;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
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
    .line 2045
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$27;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2048
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2066
    :goto_0
    return-void

    .line 2050
    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$27;->this$0:Lcom/android/incallui/InCallPresenter;

    # invokes: Lcom/android/incallui/InCallPresenter;->showSmartAntiSpamDialog()V
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$900(Lcom/android/incallui/InCallPresenter;)V

    goto :goto_0

    .line 2053
    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$27;->this$0:Lcom/android/incallui/InCallPresenter;

    # invokes: Lcom/android/incallui/InCallPresenter;->remindUserSuspect()V
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$1000(Lcom/android/incallui/InCallPresenter;)V

    goto :goto_0

    .line 2056
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2057
    .local v0, "number":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$27;->this$0:Lcom/android/incallui/InCallPresenter;

    # invokes: Lcom/android/incallui/InCallPresenter;->remindUserMarkNumber(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/incallui/InCallPresenter;->access$1100(Lcom/android/incallui/InCallPresenter;Ljava/lang/String;)V

    goto :goto_0

    .line 2060
    .end local v0    # "number":Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$27;->this$0:Lcom/android/incallui/InCallPresenter;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v2, v3, v1}, Lcom/android/incallui/InCallPresenter;->updateLivetalkButtonTime(ILandroid/widget/Button;)V

    goto :goto_0

    .line 2048
    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
