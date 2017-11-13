.class Lcom/android/server/wifi/WifiStateMachine$22;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$22;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const-string v0, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiStateMachine"

    const-string v1, "OWNER is foreground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$22;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mUserOwner:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$22;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20137

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    return-void

    :cond_1
    const-string v0, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiStateMachine"

    const-string v1, "OWNER is background"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$22;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mUserOwner:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto :goto_0
.end method
