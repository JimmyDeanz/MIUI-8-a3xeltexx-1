.class Lcom/android/incallui/InCallActivity$14;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Lcom/android/incallui/IJeejenInCallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAudioMap:[I

.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1483
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity$14;->mAudioMap:[I

    return-void

    :array_0
    .array-data 4
        0x5
        0x8
        0x2
    .end array-data
.end method

.method private doJSpeakerFromAudioMode(I)I
    .locals 3
    .param p1, "am"    # I

    .prologue
    .line 1490
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$14;->mAudioMap:[I

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "m":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1491
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$14;->mAudioMap:[I

    aget v0, v2, v1

    .line 1492
    .local v0, "aitem":I
    and-int v2, p1, v0

    if-eqz v2, :cond_0

    .line 1495
    .end local v0    # "aitem":I
    .end local v1    # "m":I
    :goto_1
    return v1

    .line 1490
    .restart local v0    # "aitem":I
    .restart local v1    # "m":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1495
    .end local v0    # "aitem":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private doJSpeakerToAudioMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1485
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$14;->mAudioMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1486
    :cond_0
    const/4 p1, 0x0

    .line 1487
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$14;->mAudioMap:[I

    aget v0, v0, p1

    return v0
.end method


# virtual methods
.method public answerCall()V
    .locals 2

    .prologue
    .line 1429
    const/4 v0, 0x0

    .line 1430
    .local v0, "callType":I
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v1, v1, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v1, v0}, Lcom/android/incallui/AnswerFragment;->onAnswer(I)V

    .line 1431
    return-void
.end method

.method public endCall()V
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v0, v0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v0, v0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->jeejenEndCall()V

    .line 1441
    :cond_0
    return-void
.end method

.method public getSpeakerMode()I
    .locals 2

    .prologue
    .line 1468
    const/4 v0, 0x0

    .line 1469
    .local v0, "am":I
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v1, v1, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v1, :cond_0

    .line 1470
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v1, v1, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    .line 1472
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity$14;->doJSpeakerFromAudioMode(I)I

    move-result v1

    return v1
.end method

.method public getSpeakerModeCount()I
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$14;->mAudioMap:[I

    array-length v0, v0

    return v0
.end method

.method public isDialpadOpen()Z
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    return v0
.end method

.method public isSpeakerModeSupported(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1459
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity$14;->doJSpeakerToAudioMode(I)I

    move-result v0

    .line 1460
    .local v0, "am":I
    const/4 v1, 0x0

    .line 1461
    .local v1, "mask":I
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v2, v2, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v2, :cond_0

    .line 1462
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v2, v2, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    .line 1464
    :cond_0
    and-int v2, v0, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public nowSecondIncomingCall()Z
    .locals 2

    .prologue
    .line 1424
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasSecondCallIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openDialpad(Z)V
    .locals 1
    .param p1, "open"    # Z

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v0, v0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v0, v0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(Z)V

    .line 1451
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mJeejenInCallScreenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;
    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$800(Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/JeejenInCallScreenLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/JeejenInCallScreenLayer;->updateToggleDialpadState(Z)V

    .line 1452
    return-void
.end method

.method public rejectCall()V
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v0, v0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->onReject()V

    .line 1435
    return-void
.end method

.method public setSpeakerMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1476
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity$14;->doJSpeakerToAudioMode(I)I

    move-result v0

    .line 1477
    .local v0, "am":I
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v1, v1, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v1, :cond_0

    .line 1478
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v1, v1, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    .line 1480
    :cond_0
    return-void
.end method
