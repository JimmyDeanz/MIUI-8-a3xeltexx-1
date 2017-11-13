.class final Lcom/sec/epdg/EpdgService$EpdgContentObserver;
.super Lcom/sec/epdg/EpdgContentObserverBase;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EpdgContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$EpdgContentObserver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0, p2}, Lcom/sec/epdg/EpdgContentObserverBase;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChangeSlowPath(ZLandroid/net/Uri;)V
    .locals 12
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgContentObserver;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;ZZZ)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v6, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;

    iget-object v7, p0, Lcom/sec/epdg/EpdgService$EpdgContentObserver;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v8

    move v9, v5

    move v10, v5

    move v11, v3

    invoke-direct/range {v6 .. v11}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;ZZZ)V

    new-array v0, v5, [Ljava/lang/Void;

    invoke-virtual {v6, v0}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/epdg/EpdgWfcProfileReader;->CONTENT_URI_WFCPROFILE:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/epdg/EpdgService$EpdgContentObserver;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$2300(Lcom/sec/epdg/EpdgService;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgContentObserver;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2600()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/EpdgService$WfcProfileTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V

    # setter for: Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$3102(Lcom/sec/epdg/EpdgService$WfcProfileTask;)Lcom/sec/epdg/EpdgService$WfcProfileTask;

    # getter for: Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3100()Lcom/sec/epdg/EpdgService$WfcProfileTask;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgContentObserver;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
