.class Lcom/sec/erisclient/ErisClient$1;
.super Landroid/content/BroadcastReceiver;
.source "ErisClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/erisclient/ErisClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/erisclient/ErisClient;


# direct methods
.method constructor <init>(Lcom/sec/erisclient/ErisClient;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/sec/erisclient/ErisClient$1;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.erisclient.natkeepalive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/erisclient/ErisClient$1;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-virtual {v1}, Lcom/sec/erisclient/ErisClient;->checkNatKeepAlive()Lcom/sec/erisclient/ErisError;

    iget-object v1, p0, Lcom/sec/erisclient/ErisClient$1;->this$0:Lcom/sec/erisclient/ErisClient;

    # invokes: Lcom/sec/erisclient/ErisClient;->RepeatNatKeepaliveAlarm()V
    invoke-static {v1}, Lcom/sec/erisclient/ErisClient;->access$000(Lcom/sec/erisclient/ErisClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
