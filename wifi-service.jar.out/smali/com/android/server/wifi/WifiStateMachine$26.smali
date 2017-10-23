.class Lcom/android/server/wifi/WifiStateMachine$26;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;->startShareProfileServer()V
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
    .line 18499
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$26;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 18504
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$26;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/net/ServerSocket;

    const/16 v4, 0x21b1

    invoke-direct {v3, v4}, Ljava/net/ServerSocket;-><init>(I)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$47502(Lcom/android/server/wifi/WifiStateMachine;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 18505
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiStateMachine"

    const-string v3, "startShareProfileServer - Receive server started."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18508
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$26;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$26;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$47500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->socket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$47602(Lcom/android/server/wifi/WifiStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 18509
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startShareProfileServer - Connected to client. - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$26;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->socket:Ljava/net/Socket;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$47600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18513
    :cond_1
    new-instance v1, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$26;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$26;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->socket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$47600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/net/Socket;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;-><init>(Lcom/android/server/wifi/WifiStateMachine;Ljava/net/Socket;)V

    .line 18514
    .local v1, "fr":Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18518
    .end local v1    # "fr":Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileReceiver;
    :cond_2
    :goto_0
    return-void

    .line 18515
    :catch_0
    move-exception v0

    .line 18516
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while creating sockets and connecting with client. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
