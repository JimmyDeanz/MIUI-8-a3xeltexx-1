.class Landroid/inputmethodservice/InputMethodService$1;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v1, "InputMethodService"

    const-string v2, "mBR.onReceive()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RequestAxT9Info"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "respInt":Landroid/content/Intent;
    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "AxT9IME.isVisibleWindow"

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    # invokes: Landroid/inputmethodservice/InputMethodService;->getIsVisibleWindow()Z
    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->access$000(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "AxT9IME.isMovableKeypad"

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->isMovable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "AxT9IME.is3X4Keypad"

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    # invokes: Landroid/inputmethodservice/InputMethodService;->is34Keypad()Z
    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->access$100(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/InputMethodService;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0    # "respInt":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.axt9info.close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    goto :goto_0
.end method
