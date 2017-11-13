.class Lcom/android/incallui/CallCardPresenter$5;
.super Ljava/lang/Thread;
.source "CallCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardPresenter;->playDtmfTone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardPresenter;)V
    .locals 0

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter$5;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1274
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter$5;->this$0:Lcom/android/incallui/CallCardPresenter;

    iget v2, v2, Lcom/android/incallui/CallCardPresenter;->mPlayDtmfToneCount:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 1275
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_1

    .line 1290
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter$5;->this$0:Lcom/android/incallui/CallCardPresenter;

    iput v4, v2, Lcom/android/incallui/CallCardPresenter;->mPlayDtmfToneCount:I

    .line 1291
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter$5;->this$0:Lcom/android/incallui/CallCardPresenter;

    # setter for: Lcom/android/incallui/CallCardPresenter;->mPlayDtmfToneFlag:Z
    invoke-static {v2, v4}, Lcom/android/incallui/CallCardPresenter;->access$902(Lcom/android/incallui/CallCardPresenter;Z)Z

    .line 1293
    :goto_1
    return-void

    .line 1280
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 1282
    const-wide/16 v2, 0x96

    :try_start_1
    invoke-static {v2, v3}, Lcom/android/incallui/CallCardPresenter$5;->sleep(J)V

    .line 1280
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1284
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter$5;->this$0:Lcom/android/incallui/CallCardPresenter;

    iget v3, v2, Lcom/android/incallui/CallCardPresenter;->mPlayDtmfToneCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/incallui/CallCardPresenter;->mPlayDtmfToneCount:I

    .line 1285
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Lcom/android/incallui/CallCardPresenter$5;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1287
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 1288
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    # getter for: Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playDtmfTone error:"

    invoke-static {v2, v3, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1290
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter$5;->this$0:Lcom/android/incallui/CallCardPresenter;

    iput v4, v2, Lcom/android/incallui/CallCardPresenter;->mPlayDtmfToneCount:I

    .line 1291
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter$5;->this$0:Lcom/android/incallui/CallCardPresenter;

    # setter for: Lcom/android/incallui/CallCardPresenter;->mPlayDtmfToneFlag:Z
    invoke-static {v2, v4}, Lcom/android/incallui/CallCardPresenter;->access$902(Lcom/android/incallui/CallCardPresenter;Z)Z

    goto :goto_1

    .line 1290
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter$5;->this$0:Lcom/android/incallui/CallCardPresenter;

    iput v4, v3, Lcom/android/incallui/CallCardPresenter;->mPlayDtmfToneCount:I

    .line 1291
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter$5;->this$0:Lcom/android/incallui/CallCardPresenter;

    # setter for: Lcom/android/incallui/CallCardPresenter;->mPlayDtmfToneFlag:Z
    invoke-static {v3, v4}, Lcom/android/incallui/CallCardPresenter;->access$902(Lcom/android/incallui/CallCardPresenter;Z)Z

    throw v2
.end method
