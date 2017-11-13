.class Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QualityResultHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCurrentTime:J

.field private mCurrentURL:Ljava/lang/String;

.field private mCurrentURLIdx:I

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

.field private mId:I

.field private mOngoingId:I

.field private mPreviousPrivateIP:Ljava/net/InetAddress;

.field private mQualityResults:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

.field private mRxBytesBeforeQC:J

.field private mRxPacketsBeforeQC:J

.field private mStartRSSI:I

.field private mStartRate:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;I)V
    .locals 6
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "id"    # I

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, "WifiWatchdogStateMachine.QualityResultHandler_"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDateFormat:Ljava/text/SimpleDateFormat;

    iput-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentTime:J

    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRSSI:I

    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRate:I

    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    iput-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    iput-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mRxPacketsBeforeQC:J

    iput-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mRxBytesBeforeQC:J

    iput p3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mId:I

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mId:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mQualityResults:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const-string v1, "WifiWatchdogStateMachine.DnsResolver"

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create QualityResultHandler_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic access$15400(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15500(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->notifyDisconnect()V

    return-void
.end method

.method private notifyDisconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$15700(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    throw v0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto :goto_1

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mId:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v17, -0x1

    .local v17, "qualityResult":I
    const/4 v13, 0x0

    .local v13, "id":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    .local v15, "ongoingId":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown command : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .local v6, "qualityResult":I
    goto :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistoryUpdate:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21020

    if-ne v2, v3, :cond_c

    if-lez v15, :cond_3

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "redundant QC request detected!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_3
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .end local v15    # "ongoingId":I
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    .restart local v15    # "ongoingId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    iput v15, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRedirectCount:I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOngoingId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->setUrlList()V

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    new-instance v18, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .local v18, "rand":Ljava/util/Random;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    .end local v18    # "rand":Ljava/util/Random;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mEnhancedQCEnabled:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v3

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "set eqc url"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcUrlIndex:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    :cond_8
    :goto_2
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentURL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "There is no resolved URL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v2, v15, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16100(Lcom/android/server/wifi/WifiWatchdogStateMachine;II)V

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_a
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSets:I

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSets:I

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->setToDefaultURL()V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRedirectCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRedirectCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xa

    if-le v3, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mQCRedirectCount > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v3

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytesVerifyingState:I

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v2, v15, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16100(Lcom/android/server/wifi/WifiWatchdogStateMachine;II)V

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytes:I

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v2, v15, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16100(Lcom/android/server/wifi/WifiWatchdogStateMachine;II)V

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_e
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "[QC_REDIRECT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_f
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mQualityResults:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentTime:J

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRSSI:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRate:I

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    if-le v15, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21013

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    :cond_12
    const-string v2, "wlan0"

    invoke-static {v2}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mRxPacketsBeforeQC:J

    const-string v2, "wlan0"

    invoke-static {v2}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mRxBytesBeforeQC:J

    :try_start_0
    new-instance v21, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v21, "url":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x7

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/16 v3, 0x14

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xbb8

    const/4 v5, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "DNS List is empty, ignore dns checking"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v21    # "url":Ljava/net/URL;
    :catch_0
    move-exception v14

    .local v14, "ie":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t resolve a URL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21014

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v2, v15, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16100(Lcom/android/server/wifi/WifiWatchdogStateMachine;II)V

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .end local v14    # "ie":Ljava/io/IOException;
    .restart local v17    # "qualityResult":I
    .restart local v21    # "url":Ljava/net/URL;
    :cond_14
    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .end local v21    # "url":Ljava/net/URL;
    .restart local v17    # "qualityResult":I
    :sswitch_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v12

    .local v12, "dnsResult":I
    const/4 v2, 0x2

    if-ne v12, v2, :cond_16

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "wait until the responses about remained DNS Request arrive!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    if-le v2, v3, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21014

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    :cond_17
    const/16 v19, 0x0

    .local v19, "resolvedIP":Ljava/net/InetAddress;
    const/16 v20, -0x1

    .local v20, "result":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    const/4 v2, 0x4

    if-ne v12, v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "DNS_CHECK_RESULT_PRIVATE_IP!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/16 v20, 0x0

    :cond_19
    :goto_3
    const/4 v2, 0x1

    if-eq v12, v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNeedToUsePreviousIP:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_2e

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNeedToUsePreviousIP:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNeedToUsePreviousIP:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "Change resolvedIP DNS result to Previous Private IP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    :cond_1c
    if-nez v19, :cond_1d

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    .end local v19    # "resolvedIP":Ljava/net/InetAddress;
    check-cast v19, Ljava/net/InetAddress;

    .restart local v19    # "resolvedIP":Ljava/net/InetAddress;
    :cond_1d
    move-object/from16 v0, v19

    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_2d

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNS Response SELECTED:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_1e
    if-eqz v19, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v2

    const v3, 0x21024

    check-cast v19, Ljava/net/Inet4Address;

    .end local v19    # "resolvedIP":Ljava/net/InetAddress;
    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    invoke-static {v2, v3, v15, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    .restart local v19    # "resolvedIP":Ljava/net/InetAddress;
    :cond_1f
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "DNS_CHECK_RESULT_different_PRIVATE_IP!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v19, v0

    goto/16 :goto_3

    :cond_21
    const-string v2, "wlan0"

    invoke-static {v2}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mRxPacketsBeforeQC:J

    const-string v2, "wlan0"

    invoke-static {v2}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mRxBytesBeforeQC:J

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xbb8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v7

    iget-object v6, v7, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "DNS List is empty, ignore dns checking"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_22
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "[second DNS query requested!]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_23
    const/4 v2, 0x3

    if-ne v12, v2, :cond_24

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/16 v3, 0xa

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_24
    if-nez v12, :cond_19

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "[DNS_CHECK_RESULT_FAILURE]"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    if-nez v19, :cond_26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    .end local v19    # "resolvedIP":Ljava/net/InetAddress;
    check-cast v19, Ljava/net/InetAddress;

    .restart local v19    # "resolvedIP":Ljava/net/InetAddress;
    :cond_26
    if-eqz v19, :cond_27

    move-object/from16 v0, v19

    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNeedToUsePreviousIP:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    :goto_4
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mNeedToUsePreviousIP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNeedToUsePreviousIP:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_27
    if-eqz v19, :cond_28

    move-object/from16 v0, v19

    instance-of v2, v0, Ljava/net/Inet4Address;

    if-nez v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "DNS FAILED, IPv6 DETECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v20, 0xf423f

    goto :goto_4

    :cond_28
    const-string v2, "wlan0"

    invoke-static {v2}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mRxPacketsBeforeQC:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    move/from16 v16, v0

    .local v16, "packets":I
    const-string v2, "wlan0"

    invoke-static {v2}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mRxBytesBeforeQC:J

    sub-long/2addr v2, v4

    long-to-int v11, v2

    .local v11, "bytes":I
    if-nez v16, :cond_29

    if-nez v11, :cond_29

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x5

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/16 v20, 0x1

    goto/16 :goto_4

    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x5cc

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v0, v11, :cond_2a

    move/from16 v20, v11

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-int/lit8 v20, v20, 0x3

    goto/16 :goto_4

    .end local v11    # "bytes":I
    .end local v16    # "packets":I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-nez v2, :cond_1b

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "still staying in captive portal state"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, -0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v2, v15, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16100(Lcom/android/server/wifi/WifiWatchdogStateMachine;II)V

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .end local v19    # "resolvedIP":Ljava/net/InetAddress;
    .restart local v17    # "qualityResult":I
    :catch_1
    move-exception v2

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    .restart local v19    # "resolvedIP":Ljava/net/InetAddress;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "The resolved IP is not IPv4"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0xf423f

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v2, v15, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16100(Lcom/android/server/wifi/WifiWatchdogStateMachine;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "DNS SUCCESS, IPv6 DETECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_2e
    if-ltz v20, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move/from16 v0, v20

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v2, v15, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16100(Lcom/android/server/wifi/WifiWatchdogStateMachine;II)V

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .end local v12    # "dnsResult":I
    .end local v19    # "resolvedIP":Ljava/net/InetAddress;
    .end local v20    # "result":I
    .restart local v17    # "qualityResult":I
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->notifyDisconnect()V

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :sswitch_3
    if-nez v15, :cond_2f

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "QC result was already reported!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_2f
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[QC_RESULT_RECEIVED] id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    if-eq v15, v13, :cond_31

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_31
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_33

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    :goto_5
    if-gez v6, :cond_35

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "[QC_GOOD_RX_DETECTED]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    if-nez v15, :cond_34

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "There is no ongoing QC!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_33
    const/4 v6, 0x1

    goto :goto_5

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    const v2, 0x2105b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    move v13, v15

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    :cond_35
    :goto_6
    if-gez v6, :cond_38

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[QC_RESOLVE_HOSTNAME_TIMEOUT/QC_GET_TIMEOUT/QC_SOCKET_TIMEOUT] id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    if-ne v15, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->getRxPacketsDuringQC()I

    move-result v16

    .restart local v16    # "packets":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v0, v16

    mul-int/lit16 v6, v0, 0x5cc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->getRxBytesDuringQC()I

    move-result v11

    .restart local v11    # "bytes":I
    if-ge v6, v11, :cond_37

    move v6, v11

    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-int/lit8 v6, v6, 0x3

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qualityResult : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v11    # "bytes":I
    .end local v16    # "packets":I
    :cond_38
    :goto_7
    if-nez v15, :cond_39

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "QC result was already reported!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_39
    if-gez v6, :cond_3b

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[QUALITY_CHECK_TIMEOUT] id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    if-ne v15, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->getRxBytesDuringQC()I

    move-result v6

    if-nez v6, :cond_3b

    const/4 v6, 0x1

    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_3d

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    :cond_3d
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    if-eqz v2, :cond_3e

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    :cond_3e
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mQualityResults:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentTime:J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRSSI:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRate:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v10

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->setValues(JIIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mQualityResults:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->writeResults()V

    :cond_3f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v2, v13, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16100(Lcom/android/server/wifi/WifiWatchdogStateMachine;II)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    goto :goto_8

    :catch_3
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    goto/16 :goto_8

    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    throw v2

    :catch_4
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto/16 :goto_9

    :catch_5
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto/16 :goto_9

    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    throw v2

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :sswitch_4
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EVENT_NETWORK_PROPERTIES_CHANGED] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EVENT_NETWORK_PROPERTIES_CHANGED] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_41

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_42

    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v3

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$600(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)Landroid/net/DnsPinger;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/DnsPinger;->getDnsList()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1002(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/util/List;)Ljava/util/List;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDnsServerList : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_43

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "EVENT_SCAN_TIMEOUT while QC - reset scanning flag."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    const v2, 0x21046

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    :cond_43
    :sswitch_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103e

    if-ne v2, v3, :cond_45

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_44

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "[EVENT_SCAN_COMPLETE]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    const v2, 0x21046

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    :cond_45
    :sswitch_7
    if-nez v15, :cond_4c

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103e

    if-eq v2, v3, :cond_46

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21046

    if-ne v2, v3, :cond_47

    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "No QC ongoing at EVENT_SCAN_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_47
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103d

    if-ne v2, v3, :cond_48

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "No QC ongoing at EVENT_SCAN_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_48
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21043

    if-ne v2, v3, :cond_49

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "No QC ongoing at EVENT_NETWORK_PROPERTIES_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_49
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21044

    if-ne v2, v3, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "No QC ongoing at EVENT_DHCP_SESSION_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_4a
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21045

    if-ne v2, v3, :cond_4b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "No QC ongoing at EVENT_DHCP_SESSION_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_4b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21048

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "No QC ongoing at EVENT_QC_PARAMETER_UPDATE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_4c
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_4e

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103e

    if-eq v2, v3, :cond_4d

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21046

    if-ne v2, v3, :cond_53

    :cond_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ongoing QC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EVENT_SCAN_COMPLETE while QC - stop the QC and reschedule another QC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    const v2, 0x2105b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21014

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21043

    if-eq v2, v3, :cond_4f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v3

    if-ne v2, v3, :cond_58

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRecoveryCanceledByScan:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11602(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    :cond_4f
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_51

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_50

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    :cond_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    :cond_51
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    if-eqz v2, :cond_52

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    :cond_52
    :goto_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_53
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103d

    if-ne v2, v3, :cond_54

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ongoing QC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EVENT_SCAN_STARTED while QC - stop the QC and reschedule another QC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_54
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21043

    if-ne v2, v3, :cond_55

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ongoing QC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EVENT_NETWORK_PROPERTIES_CHANGED while QC - stop the QC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_55
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21044

    if-ne v2, v3, :cond_56

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ongoing QC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EVENT_DHCP_SESSION_STARTED while QC - stop the QC and reschedule another QC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_56
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21045

    if-ne v2, v3, :cond_57

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ongoing QC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EVENT_DHCP_SESSION_COMPLETE while QC - stop the QC and reschedule another QC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_57
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21048

    if-ne v2, v3, :cond_4e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ongoing QC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EVENT_QC_PARAMETER_UPDATE while QC - stop the QC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->restartQCCancelledByScanOrDhcp()V

    goto/16 :goto_b

    :catch_6
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    goto/16 :goto_c

    :catch_7
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    goto/16 :goto_c

    :catchall_2
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    throw v2

    :catch_8
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto/16 :goto_d

    :catch_9
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto/16 :goto_d

    :catchall_3
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    throw v2

    :sswitch_8
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_59

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "[QC_FAILED_BY_HIGH_LOSS]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    if-nez v15, :cond_5a

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v3, "There is no ongoing QC!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :cond_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    const v2, 0x2105b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    const v2, 0x2105e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21014

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_5c

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_5b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    :cond_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    :cond_5c
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    :goto_f
    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_0

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :catch_a
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    goto :goto_e

    :catch_b
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    goto :goto_e

    :catchall_4
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    throw v2

    :catch_c
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto :goto_f

    :catch_d
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    goto :goto_f

    :catchall_5
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    throw v2

    :sswitch_9
    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_7

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :sswitch_a
    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_6

    .end local v6    # "qualityResult":I
    .restart local v17    # "qualityResult":I
    :sswitch_b
    move/from16 v6, v17

    .end local v17    # "qualityResult":I
    .restart local v6    # "qualityResult":I
    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x21017 -> :sswitch_2
        0x21020 -> :sswitch_0
        0x21025 -> :sswitch_3
        0x21026 -> :sswitch_b
        0x21027 -> :sswitch_0
        0x2102f -> :sswitch_8
        0x2103d -> :sswitch_7
        0x2103e -> :sswitch_6
        0x21043 -> :sswitch_4
        0x21044 -> :sswitch_7
        0x21045 -> :sswitch_7
        0x21046 -> :sswitch_5
        0x21048 -> :sswitch_7
        0x2105b -> :sswitch_9
        0x2105c -> :sswitch_a
        0x2105d -> :sswitch_a
        0x2105e -> :sswitch_a
        0x50005 -> :sswitch_1
    .end sparse-switch
.end method

.method public increaseCurrentURLIdx()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    :cond_0
    return-void
.end method

.method readOngoingId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    return v0
.end method

.method setToDefaultURL()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    return-void
.end method
