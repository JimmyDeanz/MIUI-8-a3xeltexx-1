.class Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;
.super Lcom/android/internal/util/State;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, -0x2

    .line 277
    const-string v1, "RttService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EnabledState got"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    # getter for: Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->access$000(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    .line 280
    .local v0, "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 336
    const/4 v1, 0x0

    .line 338
    :goto_0
    return v1

    .line 282
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    # invokes: Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->access$700(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    .line 338
    :cond_0
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 285
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    # invokes: Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->access$800(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Landroid/os/Message;)V

    .line 286
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mRequestPendingState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;

    # invokes: Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->access$900(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 290
    :sswitch_2
    const-string v1, "RttService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->enforcePermissionCheck(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 292
    const-string v1, "RttService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LOCATION_HARDWARE Permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 297
    :cond_1
    const-string v1, "RttService"

    const-string v2, "RTT NOT SUPPORTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    const-string v2, "NOT SUPPORTED"

    invoke-virtual {v1, p1, v4, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_1

    .line 316
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->enforcePermissionCheck(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const-string v1, "RttService"

    const-string v2, "RTT NOT SUPPORTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    const-string v2, "NOT SUPPORTED"

    invoke-virtual {v1, p1, v4, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 280
    :sswitch_data_0
    .sparse-switch
        0x27200 -> :sswitch_2
        0x27201 -> :sswitch_3
        0x27301 -> :sswitch_0
        0x27302 -> :sswitch_1
    .end sparse-switch
.end method
