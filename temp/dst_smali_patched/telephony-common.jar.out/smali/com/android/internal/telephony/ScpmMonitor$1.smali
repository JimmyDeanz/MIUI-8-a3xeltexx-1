.class Lcom/android/internal/telephony/ScpmMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "ScpmMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ScpmMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ScpmMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ScpmMonitor;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/ScpmMonitor$1;->this$0:Lcom/android/internal/telephony/ScpmMonitor;

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

    const-string v0, "sec.app.policy.UPDATE.mccbanddb"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ScpmMonitor$1;->this$0:Lcom/android/internal/telephony/ScpmMonitor;

    const-string v1, "MCCBAND - sec.app.policy.UPDATE.mccbanddb"

    # invokes: Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/ScpmMonitor;->access$000(Lcom/android/internal/telephony/ScpmMonitor;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ScpmMonitor$1;->this$0:Lcom/android/internal/telephony/ScpmMonitor;

    # getter for: Lcom/android/internal/telephony/ScpmMonitor;->mNeedCpDbUpdate:Z
    invoke-static {v0}, Lcom/android/internal/telephony/ScpmMonitor;->access$100(Lcom/android/internal/telephony/ScpmMonitor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ScpmMonitor$1;->this$0:Lcom/android/internal/telephony/ScpmMonitor;

    # setter for: Lcom/android/internal/telephony/ScpmMonitor;->mNeedCpDbUpdate:Z
    invoke-static {v0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->access$102(Lcom/android/internal/telephony/ScpmMonitor;Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/ScpmMonitor$1;->this$0:Lcom/android/internal/telephony/ScpmMonitor;

    # invokes: Lcom/android/internal/telephony/ScpmMonitor;->updateItems()V
    invoke-static {v0}, Lcom/android/internal/telephony/ScpmMonitor;->access$200(Lcom/android/internal/telephony/ScpmMonitor;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ScpmMonitor$1;->this$0:Lcom/android/internal/telephony/ScpmMonitor;

    const-string v1, "MCCBAND - Already processing"

    # invokes: Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/ScpmMonitor;->access$000(Lcom/android/internal/telephony/ScpmMonitor;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "sec.app.policy.UPDATE.rel11nw"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/ScpmMonitor$1;->this$0:Lcom/android/internal/telephony/ScpmMonitor;

    const-string v1, "REL11NW - sec.app.policy.UPDATE.rel11nw"

    # invokes: Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/ScpmMonitor;->access$000(Lcom/android/internal/telephony/ScpmMonitor;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ScpmMonitor$1;->this$0:Lcom/android/internal/telephony/ScpmMonitor;

    # getter for: Lcom/android/internal/telephony/ScpmMonitor;->mNeedCpDbUpdate:Z
    invoke-static {v0}, Lcom/android/internal/telephony/ScpmMonitor;->access$100(Lcom/android/internal/telephony/ScpmMonitor;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/ScpmMonitor$1;->this$0:Lcom/android/internal/telephony/ScpmMonitor;

    # setter for: Lcom/android/internal/telephony/ScpmMonitor;->mNeedCpDbUpdate:Z
    invoke-static {v0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->access$102(Lcom/android/internal/telephony/ScpmMonitor;Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/ScpmMonitor$1;->this$0:Lcom/android/internal/telephony/ScpmMonitor;

    # invokes: Lcom/android/internal/telephony/ScpmMonitor;->updateItems()V
    invoke-static {v0}, Lcom/android/internal/telephony/ScpmMonitor;->access$200(Lcom/android/internal/telephony/ScpmMonitor;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/ScpmMonitor$1;->this$0:Lcom/android/internal/telephony/ScpmMonitor;

    const-string v1, "REL11NW - Already processing"

    # invokes: Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/ScpmMonitor;->access$000(Lcom/android/internal/telephony/ScpmMonitor;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ScpmMonitor$1;->this$0:Lcom/android/internal/telephony/ScpmMonitor;

    const-string v1, "ACTION_BOOT_COMPLETED"

    # invokes: Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/ScpmMonitor;->access$000(Lcom/android/internal/telephony/ScpmMonitor;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ScpmMonitor$1;->this$0:Lcom/android/internal/telephony/ScpmMonitor;

    # invokes: Lcom/android/internal/telephony/ScpmMonitor;->updateItems()V
    invoke-static {v0}, Lcom/android/internal/telephony/ScpmMonitor;->access$200(Lcom/android/internal/telephony/ScpmMonitor;)V

    goto :goto_0
.end method
