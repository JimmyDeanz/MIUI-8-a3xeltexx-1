.class Lcom/android/server/wifi/WWSMPatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "WWSMPatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WWSMPatcher;->setupBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WWSMPatcher;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WWSMPatcher;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/wifi/WWSMPatcher$1;->this$0:Lcom/android/server/wifi/WWSMPatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    if-nez p2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 108
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/android/server/wifi/WWSMPatcher$1;->this$0:Lcom/android/server/wifi/WWSMPatcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WWSMPatcher;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 110
    :cond_2
    const-string v1, "sec.app.policy.UPDATE.wwsmpatcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    # getter for: Lcom/android/server/wifi/WWSMPatcher;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WWSMPatcher;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "WWSMPatcher"

    const-string v2, "SCPM updated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WWSMPatcher$1;->this$0:Lcom/android/server/wifi/WWSMPatcher;

    const-string v2, "[DBU]"

    # invokes: Lcom/android/server/wifi/WWSMPatcher;->addDumpMsg(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WWSMPatcher;->access$100(Lcom/android/server/wifi/WWSMPatcher;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/android/server/wifi/WWSMPatcher$1;->this$0:Lcom/android/server/wifi/WWSMPatcher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WWSMPatcher;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
