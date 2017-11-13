.class Lcom/samsung/android/server/wifi/SoftApStateMachine$2;
.super Landroid/content/BroadcastReceiver;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SoftApStateMachine;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$2;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$2;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v1, "interface_state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceState:I
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$002(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$2;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceState:I
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$000(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "SoftApStateMachine"

    const-string v1, "WIFI_AP_INTERFACE_STATE_ERRORED - send CMD_START_AP_FAILURE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$2;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$2;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const v2, 0x20017

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$2;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceState:I
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$000(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
