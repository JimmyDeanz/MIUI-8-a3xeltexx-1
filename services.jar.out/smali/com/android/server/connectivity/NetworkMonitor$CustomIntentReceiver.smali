.class Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomIntentReceiver"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mToken:I

.field private final mWhat:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;II)V
    .locals 3
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "token"    # I
    .param p4, "what"    # I

    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 725
    iput p3, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mToken:I

    .line 726
    iput p4, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mWhat:I

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;

    .line 728
    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 729
    return-void
.end method


# virtual methods
.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 731
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 737
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mWhat:I

    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mToken:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(Landroid/os/Message;)V

    .line 738
    :cond_0
    return-void
.end method
