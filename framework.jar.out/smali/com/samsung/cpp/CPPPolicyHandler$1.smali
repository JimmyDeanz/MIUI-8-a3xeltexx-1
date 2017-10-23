.class Lcom/samsung/cpp/CPPPolicyHandler$1;
.super Landroid/os/FileObserver;
.source "CPPPolicyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cpp/CPPPolicyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/cpp/CPPPolicyHandler;


# direct methods
.method constructor <init>(Lcom/samsung/cpp/CPPPolicyHandler;Ljava/lang/String;I)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I

    .prologue
    .line 275
    iput-object p1, p0, Lcom/samsung/cpp/CPPPolicyHandler$1;->this$0:Lcom/samsung/cpp/CPPPolicyHandler;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onEvent(ILjava/lang/String;)V
    .locals 6
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/cpp/CPPPolicyHandler$1;->this$0:Lcom/samsung/cpp/CPPPolicyHandler;

    # getter for: Lcom/samsung/cpp/CPPPolicyHandler;->dirNamePolicy:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/cpp/CPPPolicyHandler;->access$000(Lcom/samsung/cpp/CPPPolicyHandler;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "fullPath":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/cpp/CPPPolicyHandler$1;->this$0:Lcom/samsung/cpp/CPPPolicyHandler;

    # getter for: Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToCurrentPolicy:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/cpp/CPPPolicyHandler;->access$100(Lcom/samsung/cpp/CPPPolicyHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 280
    .local v1, "isCurrentPolicy":Z
    iget-object v3, p0, Lcom/samsung/cpp/CPPPolicyHandler$1;->this$0:Lcom/samsung/cpp/CPPPolicyHandler;

    # getter for: Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToCurrentPolicyList:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/cpp/CPPPolicyHandler;->access$200(Lcom/samsung/cpp/CPPPolicyHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 282
    .local v2, "isCurrentPolicyList":Z
    sparse-switch p1, :sswitch_data_0

    .line 296
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 284
    :sswitch_0
    if-eqz v1, :cond_0

    .line 285
    :try_start_1
    const-string v3, "CPPPolicyHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileObserver.CREATE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") detected, filePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 278
    .end local v0    # "fullPath":Ljava/lang/String;
    .end local v1    # "isCurrentPolicy":Z
    .end local v2    # "isCurrentPolicyList":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 289
    .restart local v0    # "fullPath":Ljava/lang/String;
    .restart local v1    # "isCurrentPolicy":Z
    .restart local v2    # "isCurrentPolicyList":Z
    :sswitch_1
    if-eqz v1, :cond_0

    .line 290
    :try_start_2
    const-string v3, "CPPPolicyHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileObserver.MODIFICATION("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") detected, filePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --> refresh current policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v3, p0, Lcom/samsung/cpp/CPPPolicyHandler$1;->this$0:Lcom/samsung/cpp/CPPPolicyHandler;

    # invokes: Lcom/samsung/cpp/CPPPolicyHandler;->setPolicy()V
    invoke-static {v3}, Lcom/samsung/cpp/CPPPolicyHandler;->access$300(Lcom/samsung/cpp/CPPPolicyHandler;)V

    .line 292
    iget-object v3, p0, Lcom/samsung/cpp/CPPPolicyHandler$1;->this$0:Lcom/samsung/cpp/CPPPolicyHandler;

    invoke-virtual {v3}, Lcom/samsung/cpp/CPPPolicyHandler;->notifyPolicyUpdate()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 282
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method
