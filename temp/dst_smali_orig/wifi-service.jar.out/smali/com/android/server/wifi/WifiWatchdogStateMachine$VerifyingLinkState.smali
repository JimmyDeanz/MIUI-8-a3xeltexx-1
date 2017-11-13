.class Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyingLinkState"
.end annotation


# instance fields
.field private mCheckAgainDefaultURL:Z

.field private mFirstDnsRequest:Z

.field private mPreviousBSSID:Ljava/lang/String;

.field private mSampleCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mFirstDnsRequest:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mPreviousBSSID:Ljava/lang/String;

    return-void
.end method

.method private setQCType()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ac "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mIsAutoConnect:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mIsAutoConnect:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    if-ne v1, v11, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v5

    iget-wide v8, v5, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mLastPoorDetectedTime:J

    sub-long/2addr v6, v8

    div-long/2addr v6, v12

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mIsAutoConnect:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    if-ne v1, v11, :cond_3

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mIsAutoConnect:Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x56f4

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/lit8 v0, v1, 0x1

    .local v0, "origByte":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mIsAutoConnect:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    iget-wide v4, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mLastPoorDetectedTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    iget-wide v6, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mLastPoorDetectedTime:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v12

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v6, 0x258

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    const-string v1, "WifiWatchdogStateMachine"

    const-string v4, "eqc set"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v10, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSetsVerifyingState:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    iput-boolean v2, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mEnhancedQCEnabled:Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    const v2, 0x104dc

    iput v2, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytesVerifyingState:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mNeedResultNormalization:Z

    :goto_2
    return-void

    .end local v0    # "origByte":I
    :cond_2
    move v1, v2

    goto/16 :goto_0

    :cond_3
    move v1, v2

    goto/16 :goto_1

    .restart local v0    # "origByte":I
    :cond_4
    const-string v1, "WifiWatchdogStateMachine"

    const-string v3, "dqc set"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v10, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSetsVerifyingState:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    iput-boolean v2, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mEnhancedQCEnabled:Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytesVerifyingState:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    iput-boolean v2, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mNeedResultNormalization:Z

    goto :goto_2
.end method


# virtual methods
.method public enter()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/16 v7, 0xb

    const/4 v1, 0x1

    const/4 v3, 0x0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->initCurrentQcFailRecord()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRecoveryCanceledByScan:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11602(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mPreviousBSSID:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v2, 0x2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setL2State(I)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6500(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static {v0, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12702(Lcom/android/server/wifi/WifiWatchdogStateMachine;J)J

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1002(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->setUrlList()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "WifiWatchdogStateMachine"

    const-string v2, "mDnsCheck is null."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const-string v6, "WifiWatchdogStateMachine.DnsPinger"

    invoke-direct {v2, v4, v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_c

    move v0, v1

    :goto_1
    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15002(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyPort:I
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "WifiWatchdogStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP Proxy is in use. Proxy: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyPort:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isEnterpriseAP()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-nez v0, :cond_5

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v2, 0xd

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    sput-boolean v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_f

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v2, "updatePoorNetworkDetection = false because it is an ignorableAP"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isCaptivePortalException()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "WifiWatchdogStateMachine"

    const-string v2, "Captive portal check should be processed whether SNS option is on or off."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v0, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v0, v1, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    :goto_3
    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setL2State(I)V
    invoke-static {v0, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6500(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v0, "WifiWatchdogStateMachine"

    const-string v1, "[VerifyingLinkState] skip stopUsing HIPRI. Wait ev."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100b

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11304(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->setQCType()V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$600(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)Landroid/net/DnsPinger;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/DnsPinger;->getDnsList()Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1002(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    :cond_c
    move v0, v3

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v2, 0xd

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v0, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    :cond_e
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v0, v1, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_2

    :cond_f
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->setQCType()V

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->setEvaluationParameters()V

    :cond_10
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isUsingStaticIp()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v0, v1, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_11
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    if-ne v0, v8, :cond_12

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100b

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11304(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    :cond_12
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mFirstDnsRequest:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v0

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v0

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDnsNumPings:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xbb8

    const/4 v4, 0x0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v1, "DNS List is empty, ignore dns checking"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v0

    iput v8, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v0, v3, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_2

    :cond_13
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_14
    sput-boolean v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_16

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v2, "updatePoorNetworkDetection = false because it is an ignorableAP"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_15
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    :cond_16
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v2, 0xd

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isCaptivePortalException()Z

    move-result v0

    if-nez v0, :cond_18

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "WifiWatchdogStateMachine"

    const-string v2, "2Captive portal check should be processed whether SNS option is on or off."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v0, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    sput-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    :cond_17
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v0, v1, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_2

    :cond_18
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isCaptivePortalException()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v0

    if-eqz v0, :cond_19

    sput-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v0, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    :cond_19
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v0, v1, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_2

    :cond_1a
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    if-ne v0, v8, :cond_1b

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100b

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11304(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    :cond_1b
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isCaptivePortalException()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v0, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    :cond_1c
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v0, v1, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_2

    :cond_1d
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_1e
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    :cond_1f
    :goto_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v0, v1, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_2

    :cond_20
    const-string v0, "WifiWatchdogStateMachine"

    const-string v2, "3Captive portal check should be processed whether SNS option is on or off."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v0, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    sput-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    goto :goto_4

    :cond_21
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    goto/16 :goto_2

    :cond_22
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v0, v1, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_2

    :cond_23
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v0, v1, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_2
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRecoveryCanceledByScan:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11602(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x21014

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$15700(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :sswitch_0
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .local v10, "id":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    .local v17, "result":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/16 v3, 0xb

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[REPORT_QC_RESULT] id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "CAPTIVE_PORTAL_CHECK is removed. Run CP check for 2 mins disconenction."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    const v3, 0x21028

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    const v3, 0x21028

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_3
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    const v3, 0x21028

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    const v3, 0x21028

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(II)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v4, 0x2100b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11304(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "could not identify a captive portal state due to the poor quality"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

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

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    const/4 v4, 0x2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytesVerifyingState:I

    move/from16 v0, v17

    if-lt v0, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mEnhancedQCEnabled:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSetsVerifyingState:I

    if-ge v10, v2, :cond_a

    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eqcp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSetsVerifyingState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    add-int/lit8 v3, v10, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxThreshold:I

    move/from16 v0, v17

    if-lt v0, v2, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .local v12, "now":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->setGoodRxStateNow(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRetry:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "CP check should be done even if CP check @ verifying is skipped."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v3, 0xb

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_1

    .end local v12    # "now":J
    :cond_b
    const-wide/16 v12, 0x0

    goto :goto_2

    .restart local v12    # "now":J
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "CP check should be done even if CP check @ verifying is skipped."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v3, 0xb

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_1

    .end local v12    # "now":J
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSetsVerifyingState:I

    if-ge v10, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mEnhancedQCEnabled:Z

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

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

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x7

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    add-int/lit8 v3, v10, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mLastPoorDetectedTime:J

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mEnhancedQCEnabled:Z

    if-nez v2, :cond_12

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->setToDefaultURL()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

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

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v2, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mEnhancedQCEnabled:Z

    if-eqz v2, :cond_13

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "eqcf"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->increaseCurrentURLIdx()V

    const/4 v2, 0x1

    if-ne v10, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mTryEnhancedQCAgain:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mTryEnhancedQCAgain:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v2, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_13
    if-nez v17, :cond_16

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(II)Z

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v4, 0x2100b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11304(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

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

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    const/4 v4, 0x3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_15
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(II)Z

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v4, 0x2100b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11304(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

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

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    const/4 v4, 0x2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_18
    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v10    # "id":I
    .end local v17    # "result":I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1a

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "CP check should be done regardless of SNS setting. There should be on-going check."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->notifyDisconnect()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->access$8800(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_19
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->notifyDisconnect()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$8700(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;)V

    goto :goto_3

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mMinDnsResponses:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v9

    .local v9, "dnsResult":I
    const/16 v16, 0x2

    .local v16, "poorType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNS result is useless. Pass through... ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_1b
    const/4 v2, 0x2

    if-eq v9, v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21014

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isEnterpriseAP()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v3, 0xd

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    :cond_1d
    const/4 v2, 0x1

    if-ne v9, v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v2

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->checkPublicDns()V

    goto/16 :goto_4

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    goto :goto_5

    :cond_20
    const/4 v2, 0x4

    if-ne v9, v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xbb8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_23

    const/16 v16, 0x3

    :cond_21
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

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

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(II)Z

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v4, 0x2100b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11304(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    move/from16 v0, v16

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_4

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

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

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    const/4 v4, 0x3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_4

    :cond_24
    const/4 v2, 0x3

    if-ne v9, v2, :cond_25

    const/16 v16, 0x3

    goto/16 :goto_6

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mFirstDnsRequest:Z

    if-eqz v2, :cond_21

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mFirstDnsRequest:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21013

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDnsNumPings:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xbb8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "DNS List is empty, ignore dns checking"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

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

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    const/4 v4, 0x3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_4

    .end local v9    # "dnsResult":I
    .end local v16    # "poorType":I
    :sswitch_3
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v8

    .local v8, "dns2Result":I
    const/4 v2, 0x2

    if-ne v8, v2, :cond_27

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "wait until the responses about remained DNS Request arrive!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_27
    const/4 v2, 0x4

    if-ne v8, v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

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

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    const/4 v4, 0x3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_4

    :cond_28
    const/4 v2, 0x1

    if-ne v8, v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v2

    if-nez v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->checkPublicDns()V

    goto/16 :goto_4

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    goto :goto_7

    :cond_2b
    const/4 v2, 0x3

    if-ne v8, v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/16 v3, 0xa

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

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

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    const/4 v4, 0x3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_4

    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x5

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

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

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v4, 0x2100b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11304(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_4

    .end local v8    # "dns2Result":I
    :sswitch_4
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "[CAPTIVE_PORTAL_RESULT_NONE]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_2f

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "It\'s a auto join AP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_4

    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v3, 0xd

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v2

    if-nez v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_4

    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_4

    :pswitch_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "[CAPTIVE_PORTAL_RESULT_DETECTED]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v3, 0xb

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v2

    if-nez v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_4

    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_4

    :pswitch_2
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "[CAPTIVE_PORTAL_RESULT_TIMEOUT]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v3, 0xb

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_37

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(II)Z

    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v4, 0x2100b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11304(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_4

    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v3

    if-ne v2, v3, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v3, 0xb

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    :cond_38
    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "CP timeout, Connect(5)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/16 v3, 0x9

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

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

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_39
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_4

    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto :goto_8

    :pswitch_3
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "[CAPTIVE_PORTAL_RESULT_NO_INTERNET]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v2

    if-eqz v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/16 v3, 0x9

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v3, 0xb

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x6

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

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

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    const/4 v4, 0x3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_4

    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v3, 0xd

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    goto :goto_9

    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto :goto_a

    :cond_3e
    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "DNS - Passed, Captive Portal - No Internet"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    goto :goto_b

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mPreviousBSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_4

    :sswitch_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    if-ne v2, v3, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x25014

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v4, 0x2100b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11304(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_4

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3f

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "No need to process RSSI_PKTCNT_FETCH_SUCCEEDED in connecting state."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v3, 0x2100b

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20800(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_4

    :cond_3f
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/net/wifi/RssiPacketCountInfo;

    .local v11, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget v0, v11, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    move/from16 v18, v0

    .local v18, "rssi":I
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetch RSSI succeed, rssi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_41

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$21000(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v20, v2, v4

    .local v20, "time":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mLastPoorDetectedTime:J

    sub-long v14, v2, v4

    .local v14, "passedTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x7530

    int-to-long v2, v2

    cmp-long v2, v14, v2

    if-lez v2, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEnhancedTargetRssi:I

    if-eqz v2, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEnhancedTargetRssi:I

    # -= operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$21120(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEnhancedTargetRssi:I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "restore target rssi"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-nez v2, :cond_43

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$21002(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$21000(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v20, v2, v4

    goto/16 :goto_4

    :cond_43
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-gtz v2, :cond_48

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8608(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_44

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Max avoid time elapsed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_47

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_45

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "Max count elapsed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    if-eqz v2, :cond_46

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isCaptivePortalException()Z

    move-result v2

    if-nez v2, :cond_46

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$21002(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v3, 0x2100b

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    goto/16 :goto_4

    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x5

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto :goto_c

    :cond_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_4

    :cond_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$21100(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_4c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v3

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$21500(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v3

    if-lt v2, v3, :cond_19

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_49

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Good link detected, rssi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$21002(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4b

    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    if-eqz v2, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isCaptivePortalException()Z

    move-result v2

    if-nez v2, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v3, 0x2100b

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21700(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8602(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_4

    :cond_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x6

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto :goto_d

    :cond_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_4

    :cond_4c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Link is still poor, time left="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v4

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$21100(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_4

    .end local v11    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .end local v14    # "passedTime":J
    .end local v18    # "rssi":I
    .end local v20    # "time":J
    :sswitch_8
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "RSSI_FETCH_FAILED"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "enableHIPRI"

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "[VerifyingLinkState] stop FEATURE_ENABLE_HIPRI"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$22000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9002(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    goto/16 :goto_4

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v3, 0x2101f

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$22100(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_54

    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    if-nez v2, :cond_4d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_50

    :cond_4d
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "[VerifyingLinkState] Captive portal check can be affected by scan"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    const v3, 0x2103d

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    :cond_4f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v4, 0x2100b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11304(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_4

    :cond_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v2

    if-eqz v2, :cond_53

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_51

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "[VerifyingLinkState] QC canceled by scan"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x2103d

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRecoveryCanceledByScan:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11602(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mEnhancedQCEnabled:Z

    if-eqz v2, :cond_52

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mCancelledEnhancedQCId:I

    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set eqc id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mCancelledEnhancedQCId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v4, 0x2100b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11304(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_4

    :cond_53
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "No QC ongoing at EVENT_SCAN_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_54
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    if-eqz v2, :cond_55

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    const v3, 0x2103d

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21014

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    goto/16 :goto_4

    :cond_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mEnhancedQCEnabled:Z

    if-eqz v2, :cond_56

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mCancelledEnhancedQCId:I

    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set eqc id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mCancelledEnhancedQCId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x2103d

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    goto :goto_e

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "EVENT_SCAN_TIMEOUT while VerifyingLinkState - reset scanning flag."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v3, 0x21046

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$22200(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5f

    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    if-nez v2, :cond_57

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_59

    :cond_57
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "[VerifyingLinkState] Captive portal check can be affected by scan"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    const v3, 0x2103e

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v4, 0x2100b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11304(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_4

    :cond_59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v2

    if-eqz v2, :cond_5b

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "[VerifyingLinkState] QC canceled by scan"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x2103e

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v3, 0x2101f

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_4

    :cond_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRecoveryCanceledByScan:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_5e

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "resume the recovery qc canceled by scan"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mEnhancedQCEnabled:Z

    if-eqz v2, :cond_5d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mCancelledEnhancedQCId:I

    if-lez v2, :cond_5d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mCancelledEnhancedQCId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSetsVerifyingState:I

    if-gt v2, v3, :cond_5d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mCancelledEnhancedQCId:I

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_4

    :cond_5d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_4

    :cond_5e
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "No QC ongoing at EVENT_SCAN_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$22300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_4

    :sswitch_d
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_60

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "[VerifyingLinkState] DELAYED_QUALITY_CHECK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mEnhancedQCEnabled:Z

    if-eqz v2, :cond_61

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mCancelledEnhancedQCId:I

    if-lez v2, :cond_61

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mCancelledEnhancedQCId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSetsVerifyingState:I

    if-gt v2, v3, :cond_61

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mCancelledEnhancedQCId:I

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_4

    :cond_61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_4

    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_1
        0x21007 -> :sswitch_5
        0x2100b -> :sswitch_6
        0x2101f -> :sswitch_d
        0x21023 -> :sswitch_0
        0x2102a -> :sswitch_4
        0x2103d -> :sswitch_a
        0x2103e -> :sswitch_c
        0x2103f -> :sswitch_9
        0x21046 -> :sswitch_b
        0x25015 -> :sswitch_7
        0x25016 -> :sswitch_8
        0x50000 -> :sswitch_2
        0x50005 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
