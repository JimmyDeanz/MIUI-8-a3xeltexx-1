.class Lcom/sec/erisclient/ErisClient$DaemonRunner;
.super Ljava/lang/Thread;
.source "ErisClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/erisclient/ErisClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DaemonRunner"
.end annotation


# instance fields
.field private mDaemonName:Ljava/lang/String;

.field private mTimer:J

.field final synthetic this$0:Lcom/sec/erisclient/ErisClient;


# direct methods
.method public constructor <init>(Lcom/sec/erisclient/ErisClient;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 630
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mTimer:J

    .line 633
    iput-object p2, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mDaemonName:Ljava/lang/String;

    .line 634
    return-void
.end method

.method private checkpoint(Z)V
    .locals 8
    .param p1, "yield"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    .line 651
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 652
    .local v0, "now":J
    iget-wide v4, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mTimer:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 653
    iput-wide v0, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mTimer:J

    .line 654
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 661
    :goto_0
    return-void

    .line 655
    :cond_0
    iget-wide v4, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mTimer:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 656
    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc8

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 659
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Time is up"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public exit()V
    .locals 4

    .prologue
    .line 637
    const-string v2, "ErisClient"

    const-string v3, "DaemonRunner:exit()"

    invoke-static {v2, v3}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/sec/erisclient/ErisClient$DaemonRunner;->interrupt()V

    .line 639
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    # getter for: Lcom/sec/erisclient/ErisClient;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v2}, Lcom/sec/erisclient/ErisClient;->access$100(Lcom/sec/erisclient/ErisClient;)Landroid/net/LocalSocket;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 640
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mDaemonName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 642
    :try_start_0
    iget-object v2, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mDaemonName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 643
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "ignore":Ljava/lang/InterruptedException;
    const-string v2, "ErisClient"

    const-string v3, "Ignore exception"

    invoke-static {v2, v3}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 648
    .end local v0    # "ignore":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    .line 665
    const-string v6, "ErisClient"

    const-string v7, "DaemonRunner:run()"

    invoke-static {v6, v7}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, v6}, Lcom/sec/erisclient/ErisClient$DaemonRunner;->checkpoint(Z)V

    .line 668
    const-string v6, "ErisClient"

    const-string v7, "DaemonRunner:run() stopping daemon..."

    invoke-static {v6, v7}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v6, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mDaemonName:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 670
    :goto_0
    iget-object v6, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mDaemonName:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 671
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/sec/erisclient/ErisClient$DaemonRunner;->checkpoint(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 718
    :catch_0
    move-exception v2

    .line 719
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 724
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 673
    :cond_0
    :try_start_1
    const-string v6, "ErisClient"

    const-string v7, "DaemonRunner:run() starting daemon..."

    invoke-static {v6, v7}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v6, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mDaemonName:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 675
    :goto_2
    iget-object v6, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mDaemonName:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 676
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/sec/erisclient/ErisClient$DaemonRunner;->checkpoint(Z)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 720
    :catch_1
    move-exception v2

    .line 721
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 722
    iget-object v6, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    sget-object v7, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    # invokes: Lcom/sec/erisclient/ErisClient;->updateServiceStatus(Lcom/sec/erisclient/ErisError;)V
    invoke-static {v6, v7}, Lcom/sec/erisclient/ErisClient;->access$200(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/ErisError;)V

    goto :goto_1

    .line 678
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    :try_start_2
    const-string v6, "ErisClient"

    const-string v7, "DaemonRunner:run() daemon is started"

    invoke-static {v6, v7}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v6, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    sget-object v7, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    # invokes: Lcom/sec/erisclient/ErisClient;->updateServiceStatus(Lcom/sec/erisclient/ErisError;)V
    invoke-static {v6, v7}, Lcom/sec/erisclient/ErisClient;->access$200(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/ErisError;)V

    .line 681
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v6, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->mDaemonName:Ljava/lang/String;

    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 685
    .local v0, "address":Landroid/net/LocalSocketAddress;
    :goto_3
    :try_start_3
    iget-object v6, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    # getter for: Lcom/sec/erisclient/ErisClient;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v6}, Lcom/sec/erisclient/ErisClient;->access$100(Lcom/sec/erisclient/ErisClient;)Landroid/net/LocalSocket;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 692
    :try_start_4
    iget-object v6, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    # getter for: Lcom/sec/erisclient/ErisClient;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v6}, Lcom/sec/erisclient/ErisClient;->access$100(Lcom/sec/erisclient/ErisClient;)Landroid/net/LocalSocket;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 693
    iget-object v6, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    # getter for: Lcom/sec/erisclient/ErisClient;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v6}, Lcom/sec/erisclient/ErisClient;->access$100(Lcom/sec/erisclient/ErisClient;)Landroid/net/LocalSocket;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 694
    .local v3, "in":Ljava/io/InputStream;
    iget-object v6, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    iget-object v7, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    # getter for: Lcom/sec/erisclient/ErisClient;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v7}, Lcom/sec/erisclient/ErisClient;->access$100(Lcom/sec/erisclient/ErisClient;)Landroid/net/LocalSocket;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    # invokes: Lcom/sec/erisclient/ErisClient;->setOutputStream(Ljava/io/OutputStream;)V
    invoke-static {v6, v7}, Lcom/sec/erisclient/ErisClient;->access$300(Lcom/sec/erisclient/ErisClient;Ljava/io/OutputStream;)V

    .line 696
    :goto_4
    const/16 v6, 0x1000

    new-array v1, v6, [B

    .line 697
    .local v1, "buffer":[B
    const/4 v6, 0x0

    invoke-static {v1, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 698
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v5

    .line 699
    .local v5, "res":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 716
    .end local v1    # "buffer":[B
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "res":I
    :goto_5
    :try_start_5
    iget-object v6, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    sget-object v7, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    # invokes: Lcom/sec/erisclient/ErisClient;->updateServiceStatus(Lcom/sec/erisclient/ErisError;)V
    invoke-static {v6, v7}, Lcom/sec/erisclient/ErisClient;->access$200(Lcom/sec/erisclient/ErisClient;Lcom/sec/erisclient/ErisError;)V

    .line 717
    invoke-virtual {p0}, Lcom/sec/erisclient/ErisClient$DaemonRunner;->exit()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 687
    :catch_2
    move-exception v6

    .line 690
    const/4 v6, 0x1

    :try_start_6
    invoke-direct {p0, v6}, Lcom/sec/erisclient/ErisClient$DaemonRunner;->checkpoint(Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 712
    :catch_3
    move-exception v2

    .line 713
    .local v2, "e":Ljava/io/IOException;
    :try_start_7
    const-string v6, "ErisClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DaemonRunner:run() IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .line 704
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buffer":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v5    # "res":I
    :cond_2
    :try_start_8
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v4

    .line 706
    .local v4, "jsonStr":Ljava/lang/String;
    :try_start_9
    iget-object v6, p0, Lcom/sec/erisclient/ErisClient$DaemonRunner;->this$0:Lcom/sec/erisclient/ErisClient;

    # invokes: Lcom/sec/erisclient/ErisClient;->parseDaemonResponse(Ljava/lang/String;)V
    invoke-static {v6, v4}, Lcom/sec/erisclient/ErisClient;->access$400(Lcom/sec/erisclient/ErisClient;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 707
    :catch_4
    move-exception v2

    .line 708
    .local v2, "e":Lorg/json/JSONException;
    :try_start_a
    const-string v6, "ErisClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DaemonRunner:run() JSONException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/erisclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4
.end method
