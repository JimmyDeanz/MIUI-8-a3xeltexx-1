.class Lcom/android/incallui/InCallActivity$MainHandler;
.super Lcom/android/incallui/BaseUIHandler;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseUIHandler",
        "<",
        "Lcom/android/incallui/InCallActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p1, "thiz"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 1262
    invoke-direct {p0, p1}, Lcom/android/incallui/BaseUIHandler;-><init>(Ljava/lang/Object;)V

    .line 1263
    return-void
.end method


# virtual methods
.method public doMainTask(Lcom/android/incallui/InCallActivity;Landroid/os/Message;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/incallui/InCallActivity;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 1267
    iget v0, p2, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1289
    :goto_0
    return-void

    .line 1269
    :sswitch_0
    invoke-virtual {p1, v2}, Lcom/android/incallui/InCallActivity;->displayToolPanel(Z)V

    goto :goto_0

    .line 1272
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->displayCallCard()V

    goto :goto_0

    .line 1275
    :sswitch_2
    # invokes: Lcom/android/incallui/InCallActivity;->initDelayOnCreate()V
    invoke-static {p1}, Lcom/android/incallui/InCallActivity;->access$500(Lcom/android/incallui/InCallActivity;)V

    goto :goto_0

    .line 1278
    :sswitch_3
    # invokes: Lcom/android/incallui/InCallActivity;->initDelayOnStart()V
    invoke-static {p1}, Lcom/android/incallui/InCallActivity;->access$600(Lcom/android/incallui/InCallActivity;)V

    goto :goto_0

    .line 1281
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->showSmartCover()V

    goto :goto_0

    .line 1284
    :sswitch_5
    const-string v0, "tag_call_button_fragment"

    const/4 v1, 0x1

    # invokes: Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V
    invoke-static {p1, v0, v1, v2}, Lcom/android/incallui/InCallActivity;->access$700(Lcom/android/incallui/InCallActivity;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1267
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic doMainTask(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 1259
    check-cast p1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/InCallActivity$MainHandler;->doMainTask(Lcom/android/incallui/InCallActivity;Landroid/os/Message;)V

    return-void
.end method
