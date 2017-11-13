.class Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;
.super Ljava/lang/Object;
.source "EpdgModem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/ipc/EpdgModem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgModemReceiver"
.end annotation


# instance fields
.field private buffer:[B

.field private mConnected:I

.field socketName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/epdg/ipc/EpdgModem;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/ipc/EpdgModem;Ljava/lang/String;)V
    .locals 2
    .param p2, "socket"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;->this$0:Lcom/sec/epdg/ipc/EpdgModem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;->mConnected:I

    const-string v0, "[MODEM]"

    const-string v1, "Instantiaing EpdgModemReceiver"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;->buffer:[B

    iput-object p2, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;->socketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v7, 0x0

    .local v7, "retryCount":I
    const-string v11, "[MODEM]"

    const-string v12, "Creating EpdgRxHandler"

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;

    invoke-direct {v3}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;-><init>()V

    .local v3, "handler":Lcom/sec/epdg/ipc/RilToEpdgInterface;
    :cond_0
    :goto_0
    const/4 v8, 0x0

    .local v8, "s":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .end local v8    # "s":Landroid/net/LocalSocket;
    .local v9, "s":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v5, Landroid/net/LocalSocketAddress;

    iget-object v11, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;->socketName:Ljava/lang/String;

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v5, v11, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v5, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v9, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .local v6, "length":I
    :try_start_2
    const-string v11, "[MODEM]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connected to \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;->socketName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v11, "epdgd"

    iget-object v12, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;->socketName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    # setter for: Lcom/sec/epdg/ipc/EpdgModem;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v9}, Lcom/sec/epdg/ipc/EpdgModem;->access$102(Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    :cond_1
    :goto_1
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .local v4, "is":Ljava/io/InputStream;
    :goto_2
    iget-object v11, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;->buffer:[B

    # invokes: Lcom/sec/epdg/ipc/EpdgModem;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v4, v11}, Lcom/sec/epdg/ipc/EpdgModem;->access$300(Ljava/io/InputStream;[B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    move-result v6

    if-gez v6, :cond_8

    .end local v4    # "is":Ljava/io/InputStream;
    :goto_3
    :try_start_4
    const-string v11, "[MODEM]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disconnected from \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;->socketName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    const-string v11, "epdgd"

    iget-object v12, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;->socketName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    # getter for: Lcom/sec/epdg/ipc/EpdgModem;->mSocket:Landroid/net/LocalSocket;
    invoke-static {}, Lcom/sec/epdg/ipc/EpdgModem;->access$100()Landroid/net/LocalSocket;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V

    :cond_2
    :goto_4
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    :goto_5
    :try_start_6
    const-string v11, "epdgd"

    iget-object v12, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;->socketName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x0

    # setter for: Lcom/sec/epdg/ipc/EpdgModem;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v11}, Lcom/sec/epdg/ipc/EpdgModem;->access$102(Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .end local v5    # "l":Landroid/net/LocalSocketAddress;
    .end local v6    # "length":I
    :catch_0
    move-exception v10

    move-object v8, v9

    .end local v9    # "s":Landroid/net/LocalSocket;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    .local v10, "tr":Ljava/lang/Throwable;
    :goto_6
    const-string v11, "[MODEM]"

    const-string v12, "Uncaught exception "

    invoke-static {v11, v12, v10}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .end local v10    # "tr":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :goto_7
    if-eqz v8, :cond_4

    :try_start_7
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_4
    :goto_8
    if-ne v7, v14, :cond_6

    :try_start_8
    const-string v11, "[MODEM]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;->socketName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket after "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " times, continuing to retry silently"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    :cond_5
    :goto_9
    const-wide/16 v12, 0xfa0

    :try_start_9
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v2

    .local v2, "ex2":Ljava/io/IOException;
    :try_start_a
    const-string v11, "[MODEM]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException when closing the socket. Ignoring!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "ex2":Ljava/io/IOException;
    :catch_3
    move-exception v10

    goto :goto_6

    .restart local v1    # "ex":Ljava/io/IOException;
    :cond_6
    if-lez v7, :cond_5

    if-ge v7, v14, :cond_5

    const-string v11, "[MODEM]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;->socketName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket; retrying after timeout"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_4
    move-exception v0

    .local v0, "er":Ljava/lang/InterruptedException;
    const-string v11, "[MODEM]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InterruptedException:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_a

    .end local v0    # "er":Ljava/lang/InterruptedException;
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v8    # "s":Landroid/net/LocalSocket;
    .restart local v5    # "l":Landroid/net/LocalSocketAddress;
    .restart local v6    # "length":I
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :cond_7
    :try_start_b
    const-string v11, "epdgd2"

    iget-object v12, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;->socketName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    # setter for: Lcom/sec/epdg/ipc/EpdgModem;->mSocket2:Landroid/net/LocalSocket;
    invoke-static {v9}, Lcom/sec/epdg/ipc/EpdgModem;->access$002(Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_1

    :catch_5
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_c
    const-string v11, "[MODEM]"

    const-string v12, "\'epdgd\' socket closed, "

    invoke-static {v11, v12, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_3

    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_8
    :try_start_d
    iget-object v11, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;->buffer:[B

    invoke-interface {v3, v11, v6}, Lcom/sec/epdg/ipc/RilToEpdgInterface;->receive([BI)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_2

    .end local v4    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v10

    .restart local v10    # "tr":Ljava/lang/Throwable;
    :try_start_e
    const-string v11, "[MODEM]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Uncaught exception read length="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v10}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_3

    .end local v10    # "tr":Ljava/lang/Throwable;
    :cond_9
    :try_start_f
    const-string v11, "epdgd2"

    iget-object v12, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;->socketName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    # getter for: Lcom/sec/epdg/ipc/EpdgModem;->mSocket2:Landroid/net/LocalSocket;
    invoke-static {}, Lcom/sec/epdg/ipc/EpdgModem;->access$000()Landroid/net/LocalSocket;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_4

    :catch_7
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_10
    const-string v11, "[MODEM]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException when closing the socket. Ignoring!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .end local v1    # "ex":Ljava/io/IOException;
    :cond_a
    const-string v11, "epdgd2"

    iget-object v12, p0, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;->socketName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    # setter for: Lcom/sec/epdg/ipc/EpdgModem;->mSocket2:Landroid/net/LocalSocket;
    invoke-static {v11}, Lcom/sec/epdg/ipc/EpdgModem;->access$002(Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_0

    .end local v5    # "l":Landroid/net/LocalSocketAddress;
    .end local v6    # "length":I
    :catch_8
    move-exception v1

    move-object v8, v9

    .end local v9    # "s":Landroid/net/LocalSocket;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_7
.end method
