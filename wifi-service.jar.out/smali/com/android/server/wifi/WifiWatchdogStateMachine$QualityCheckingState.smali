.class Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QualityCheckingState"
.end annotation


# instance fields
.field private mLastRssi:I

.field private mSampleCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 2145
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2151
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 2152
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2154
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9002(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 2155
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2156
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 2163
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    .line 2164
    return-void

    .line 2158
    :cond_1
    iput v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->mSampleCount:I

    .line 2159
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->mLastRssi:I

    .line 2160
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100b

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11304(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2161
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto :goto_0
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2377
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2378
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2379
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiWatchdogStateMachine"

    const-string v1, "There is a request need to be aborted!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 2382
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2386
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 2387
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2388
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "WifiWatchdogStateMachine"

    const-string v1, "There is a request need to be aborted!! (SSL)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2394
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    .line 2395
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRetry:I

    .line 2396
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v0

    const v1, 0x21020

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2397
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v0

    const v1, 0x2105b

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2398
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v0

    const v1, 0x2105c

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2399
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v0

    const v1, 0x2105d

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2400
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v0

    const v1, 0x2105e

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2401
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v0

    const v1, 0x21024

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->removeMessages(I)V

    .line 2402
    return-void

    .line 2391
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2383
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2168
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "processMessage\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2169
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 2170
    .local v14, "now":J
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 2372
    const/16 v19, 0x0

    .end local v14    # "now":J
    :goto_0
    return v19

    .line 2172
    .restart local v14    # "now":J
    :sswitch_0
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 2173
    .local v8, "id":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 2174
    .local v13, "result":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRecoveryCanceledByScan:Z
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11602(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 2175
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v19

    if-eqz v19, :cond_1

    const-string v19, "WifiWatchdogStateMachine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[REPORT_QC_RESULT] id : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytes:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v13, v0, :cond_7

    .line 2177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxThreshold:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v13, v0, :cond_4

    .end local v14    # "now":J
    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->setGoodRxStateNow(J)V

    .line 2178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRetry:I

    .line 2179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 2181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v19

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 2182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static/range {v19 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    .line 2198
    :cond_2
    :goto_2
    const/16 v19, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mEnableSnsDuringConnected:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9402(Z)Z

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v20

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 2257
    :cond_3
    :goto_3
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 2177
    .restart local v14    # "now":J
    :cond_4
    const-wide/16 v14, 0x0

    goto :goto_1

    .line 2188
    .end local v14    # "now":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static/range {v19 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto :goto_2

    .line 2194
    :cond_6
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mEnableSnsDuringConnected:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9400()Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v19

    if-nez v19, :cond_2

    .line 2195
    const-string v19, "WifiWatchdogStateMachine"

    const-string v20, "First quality result after enabling SNS option. Send good noti."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static/range {v19 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto :goto_2

    .line 2201
    .restart local v14    # "now":J
    :cond_7
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v19

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 2206
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    const-string v20, "could not identify a captive portal state due to the poor quality"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2207
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v19

    move-object/from16 v0, v19

    iput v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    .line 2208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v20

    const/16 v21, 0x2

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 2209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v19

    const/16 v20, 0x9

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 2210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static/range {v19 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    .line 2216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 2217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v20

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2219
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v20

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2221
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSets:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->mLastRssi:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v19

    move-object/from16 v0, v19

    iput v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    .line 2223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v20

    const/16 v21, 0x2

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 2224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 2225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 2226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v19

    const/16 v20, 0x15

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 2227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    add-int/lit8 v20, v8, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_3

    .line 2229
    :cond_b
    if-nez v13, :cond_d

    .line 2230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v19

    const/16 v20, 0xa

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 2231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v19

    move-object/from16 v0, v19

    iput v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    .line 2232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v20

    const/16 v21, 0x2

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 2233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 2234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static/range {v19 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    .line 2250
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 2251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v20

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2239
    :cond_d
    if-lez v13, :cond_c

    .line 2240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v19

    const/16 v20, 0xb

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 2241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v19

    move-object/from16 v0, v19

    iput v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    .line 2242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v20

    const/16 v21, 0x2

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 2243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 2244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static/range {v19 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_4

    .line 2253
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v20

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2260
    .end local v8    # "id":I
    .end local v13    # "result":I
    :sswitch_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v19

    if-eqz v19, :cond_f

    const-string v19, "WifiWatchdogStateMachine"

    const-string v20, "[QualityCheckingState] CMD_QUALITY_RECHECK"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v20, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    .line 2262
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 2265
    :sswitch_2
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v19

    if-eqz v19, :cond_10

    const-string v19, "WifiWatchdogStateMachine"

    const-string v20, "[QualityCheckingState] DELAYED_QUALITY_CHECK"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v20, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    .line 2267
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 2270
    :sswitch_3
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v19

    if-eqz v19, :cond_11

    const-string v19, "WifiWatchdogStateMachine"

    const-string v20, "[QualityCheckingState] EVENT_AUTHENTICATION_COMPLETE"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    move-result-object v20

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 2272
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 2275
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 2276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 2277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static/range {v19 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12702(Lcom/android/server/wifi/WifiWatchdogStateMachine;J)J

    .line 2278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 2280
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v19

    if-nez v19, :cond_13

    .line 2281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v20

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 2283
    :cond_13
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 2286
    :sswitch_5
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    const-string v20, "[QualityCheckingState] EVENT_ENABLE_HIPRI"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2287
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWaitingSwitchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    move-result-object v20

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 2288
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 2291
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 2292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v19

    const v20, 0x25014

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const v21, 0x2100b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v22, v0

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11304(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v20

    const-wide/16 v22, 0x3e8

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2296
    :cond_15
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 2299
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/RssiPacketCountInfo;

    .line 2300
    .local v9, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget v0, v9, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    move/from16 v16, v0

    .line 2301
    .local v16, "rssi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v19

    if-eqz v19, :cond_16

    .line 2302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 2304
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->mLastRssi:I

    move/from16 v19, v0

    add-int v19, v19, v16

    div-int/lit8 v12, v19, 0x2

    .line 2305
    .local v12, "mrssi":I
    iget v0, v9, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    move/from16 v17, v0

    .line 2306
    .local v17, "txbad":I
    iget v0, v9, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    move/from16 v18, v0

    .line 2307
    .local v18, "txgood":I
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v19

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[QC]Fetch RSSI succeed, rssi="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mrssi="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " txbad="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " txgood="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2312
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v19

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$13400(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v20

    sub-long v20, v14, v20

    const-wide/16 v22, 0x7d0

    cmp-long v19, v20, v22

    if-gez v19, :cond_1b

    .line 2313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v19

    if-nez v19, :cond_18

    .line 2314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    invoke-direct/range {v20 .. v23}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)V

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 2317
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxBad:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v19

    sub-int v4, v17, v19

    .line 2318
    .local v4, "dbad":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxGood:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v19

    sub-int v6, v18, v19

    .line 2319
    .local v6, "dgood":I
    add-int v7, v4, v6

    .line 2321
    .local v7, "dtotal":I
    if-lez v7, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v19

    if-eqz v19, :cond_1b

    .line 2323
    int-to-double v0, v4

    move-wide/from16 v20, v0

    int-to-double v0, v7

    move-wide/from16 v22, v0

    div-double v10, v20, v22

    .line 2325
    .local v10, "loss":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    .line 2327
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v19

    if-eqz v19, :cond_19

    .line 2328
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v19, "#.##"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2329
    .local v5, "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[QC]Incremental loss="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Current loss="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v21

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$13500(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v22

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "% volume="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v21

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$13600(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2334
    .end local v5    # "df":Ljava/text/DecimalFormat;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v10, v11, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->updateLoss(IDI)V

    .line 2337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v19

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$13500(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v20

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    cmpl-double v19, v20, v22

    if-lez v19, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v19

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$13600(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v20

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->POOR_LINK_MIN_VOLUME:D
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13800()D

    move-result-wide v22

    cmpl-double v19, v20, v22

    if-lez v19, :cond_1c

    .line 2339
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->mSampleCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->mSampleCount:I

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1b

    .line 2341
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v19

    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Poor link for link sample count, rssi="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2342
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    .line 2343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v19

    const/16 v20, 0xc

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 2344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v20

    const/16 v21, 0x2

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 2345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 2347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v19

    const v20, 0x2102f

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    .line 2348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static/range {v19 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    .line 2349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    const v20, 0x21023

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14000(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    .line 2351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11304(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    .line 2360
    .end local v4    # "dbad":I
    .end local v6    # "dgood":I
    .end local v7    # "dtotal":I
    .end local v10    # "loss":D
    :cond_1b
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v19

    move-object/from16 v0, v19

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static {v0, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$13402(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 2361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxBad:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8302(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 2362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxGood:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8402(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 2363
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->mLastRssi:I

    .line 2364
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 2355
    .restart local v4    # "dbad":I
    .restart local v6    # "dgood":I
    .restart local v7    # "dtotal":I
    .restart local v10    # "loss":D
    :cond_1c
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->mSampleCount:I

    goto :goto_5

    .line 2368
    .end local v4    # "dbad":I
    .end local v6    # "dgood":I
    .end local v7    # "dtotal":I
    .end local v9    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .end local v10    # "loss":D
    .end local v12    # "mrssi":I
    .end local v16    # "rssi":I
    .end local v17    # "txbad":I
    .end local v18    # "txgood":I
    :sswitch_8
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v19

    if-eqz v19, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    const-string v20, "RSSI_FETCH_FAILED"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2369
    :cond_1d
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 2170
    nop

    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_4
        0x2100b -> :sswitch_6
        0x2100c -> :sswitch_1
        0x2101f -> :sswitch_2
        0x21023 -> :sswitch_0
        0x21042 -> :sswitch_5
        0x21047 -> :sswitch_3
        0x25015 -> :sswitch_7
        0x25016 -> :sswitch_8
    .end sparse-switch
.end method
