.class public Lcom/android/incallui/DialpadPresenter;
.super Lcom/android/incallui/Presenter;
.source "DialpadPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/DialpadPresenter$DialpadUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;"
    }
.end annotation


# instance fields
.field private mCall:Lcom/android/incallui/Call;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 82
    return-void
.end method

.method private getDialingCall()Lcom/android/incallui/Call;
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "dialingCall":Lcom/android/incallui/Call;
    iget-object v1, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v1, :cond_0

    .line 90
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 91
    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 95
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 45
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/incallui/Call;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialpadPresenter mCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/DialpadPresenter$DialpadUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/DialpadPresenter$DialpadUi;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 32
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 33
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/incallui/Call;

    .line 34
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/android/incallui/DialpadPresenter$DialpadUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/DialpadPresenter;->onUiReady(Lcom/android/incallui/DialpadPresenter$DialpadUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/DialpadPresenter$DialpadUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/DialpadPresenter$DialpadUi;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 39
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 40
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/android/incallui/DialpadPresenter$DialpadUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/DialpadPresenter;->onUiUnready(Lcom/android/incallui/DialpadPresenter$DialpadUi;)V

    return-void
.end method

.method public final processDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing dtmf key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/incallui/Call;

    .line 59
    .local v0, "call":Lcom/android/incallui/Call;
    :goto_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating display and sending dtmf tone for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/incallui/DialpadPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter$DialpadUi;

    invoke-interface {v1, p1}, Lcom/android/incallui/DialpadPresenter$DialpadUi;->appendDigitsToField(C)V

    .line 65
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/incallui/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    .line 69
    :goto_1
    return-void

    .line 57
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/DialpadPresenter;->getDialingCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0

    .line 67
    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring dtmf request for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopDtmf()V
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/incallui/Call;

    .line 76
    .local v0, "call":Lcom/android/incallui/Call;
    :goto_0
    if-eqz v0, :cond_0

    .line 77
    const-string v1, "stopping remote tone"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->stopDtmfTone(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void

    .line 75
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/DialpadPresenter;->getDialingCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0
.end method
