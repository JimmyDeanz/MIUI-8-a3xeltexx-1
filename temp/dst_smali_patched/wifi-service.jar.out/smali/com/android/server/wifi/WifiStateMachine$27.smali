.class Lcom/android/server/wifi/WifiStateMachine$27;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;->startShareProfileClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;

.field final synthetic val$disconnect:Z

.field final synthetic val$fp:Ljava/lang/String;

.field final synthetic val$ip:Ljava/lang/String;

.field final synthetic val$r:Landroid/content/res/Resources;

.field final synthetic val$sn:Ljava/lang/String;

.field final synthetic val$ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/res/Resources;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$27;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine$27;->val$ip:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wifi/WifiStateMachine$27;->val$fp:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wifi/WifiStateMachine$27;->val$sn:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/wifi/WifiStateMachine$27;->val$ssid:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/wifi/WifiStateMachine$27;->val$disconnect:Z

    iput-object p7, p0, Lcom/android/server/wifi/WifiStateMachine$27;->val$r:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const v11, 0x2013e

    const/16 v8, 0x21b1

    .local v8, "PORT":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$27;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->ClientSocket:Ljava/net/Socket;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$47802(Lcom/android/server/wifi/WifiStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    new-instance v10, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$27;->val$ip:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v10, v1, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .local v10, "target":Ljava/net/SocketAddress;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$27;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->ClientSocket:Ljava/net/Socket;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$47800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/net/Socket;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v10, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiStateMachine"

    const-string v2, "startShareProfileClient: Connected to server"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileSender;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$27;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$27;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->ClientSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$47800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$27;->val$ip:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$27;->val$fp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$27;->val$sn:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$27;->val$ssid:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/server/wifi/WifiStateMachine$27;->val$disconnect:Z

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileSender;-><init>(Lcom/android/server/wifi/WifiStateMachine;Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .local v0, "fs":Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileSender;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileSender;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "fs":Lcom/android/server/wifi/WifiStateMachine$ShareProfileFileSender;
    .end local v10    # "target":Ljava/net/SocketAddress;
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v9

    .local v9, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while socket creation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$27;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x2013d

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ECONNREFUSED (Connection refused)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$27;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$27;->val$r:Landroid/content/res/Resources;

    const v3, 0x1040848

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v11, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    :goto_1
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine$27;->val$disconnect:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$27;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x2013f

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$27;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$27;->val$r:Landroid/content/res/Resources;

    const v3, 0x1040847

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v11, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_1
.end method
