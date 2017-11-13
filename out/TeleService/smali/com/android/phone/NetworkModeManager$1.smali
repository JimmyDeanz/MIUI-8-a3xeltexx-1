.class Lcom/android/phone/NetworkModeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModeManager;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModeManager;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/phone/NetworkModeManager$1;->this$0:Lcom/android/phone/NetworkModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 196
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "action":Ljava/lang/String;
    const-string v1, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    const-string v1, "NetworkModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive ACTION_DEFAULT_DATA_SLOT_CHANGED to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {p2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/android/phone/NetworkModeManager$1;->this$0:Lcom/android/phone/NetworkModeManager;

    iget-object v1, v1, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    iget-object v1, p0, Lcom/android/phone/NetworkModeManager$1;->this$0:Lcom/android/phone/NetworkModeManager;

    iget-object v1, v1, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const-string v1, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    const-string v1, "NetworkModeManager"

    const-string v2, "onReceive ACTION_DEFAULT_DATA_SLOT_READY"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/android/phone/NetworkModeManager$1;->this$0:Lcom/android/phone/NetworkModeManager;

    iget-object v1, v1, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    iget-object v1, p0, Lcom/android/phone/NetworkModeManager$1;->this$0:Lcom/android/phone/NetworkModeManager;

    iget-object v1, v1, Lcom/android/phone/NetworkModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 205
    :cond_2
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const-string v1, "LOADED"

    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    iget-object v1, p0, Lcom/android/phone/NetworkModeManager$1;->this$0:Lcom/android/phone/NetworkModeManager;

    # invokes: Lcom/android/phone/NetworkModeManager;->showChangeDataPreferenceDialogIfNeed()V
    invoke-static {v1}, Lcom/android/phone/NetworkModeManager;->access$000(Lcom/android/phone/NetworkModeManager;)V

    .line 209
    :cond_3
    iget-object v1, p0, Lcom/android/phone/NetworkModeManager$1;->this$0:Lcom/android/phone/NetworkModeManager;

    # invokes: Lcom/android/phone/NetworkModeManager;->onIccStatusChanged(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/phone/NetworkModeManager;->access$100(Lcom/android/phone/NetworkModeManager;Landroid/content/Intent;)V

    goto :goto_0
.end method
