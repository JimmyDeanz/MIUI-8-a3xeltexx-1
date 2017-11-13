.class public Lcom/android/incallui/AnswerPresenter;
.super Lcom/android/incallui/Presenter;
.source "AnswerPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$InCallUiListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AnswerPresenter$AnswerUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$InCallUiListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCall:Lcom/android/incallui/Call;

.field protected mCallId:Ljava/lang/String;

.field protected mCallUpdateListener:Lcom/android/incallui/CallList$CallUpdateListener;

.field private mIsTextDialogConfiged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/AnswerPresenter;->mIsTextDialogConfiged:Z

    .line 34
    new-instance v0, Lcom/android/incallui/AnswerPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/AnswerPresenter$1;-><init>(Lcom/android/incallui/AnswerPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallUpdateListener:Lcom/android/incallui/CallList$CallUpdateListener;

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/AnswerPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerPresenter;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/incallui/AnswerPresenter;->mIsTextDialogConfiged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/incallui/AnswerPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/incallui/AnswerPresenter;->mIsTextDialogConfiged:Z

    return p1
.end method

.method private processIncomingCall(Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v5, 0x1

    .line 61
    invoke-direct {p0, v5}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-nez v2, :cond_0

    .line 89
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    sget-object v2, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incoming ignore call id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCallId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 70
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    .line 73
    sget-object v2, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Showing incoming for call id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 76
    .local v1, "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    .line 77
    .local v0, "canRespondViaText":Z
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTextButton(Z)V

    .line 78
    if-eqz v0, :cond_2

    .line 79
    if-eqz v1, :cond_3

    .line 80
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, v1}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->configureMessageDialog(Ljava/util/List;)V

    .line 81
    iput-boolean v5, p0, Lcom/android/incallui/AnswerPresenter;->mIsTextDialogConfiged:Z

    .line 87
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/CallAdapterUtils;->isVideo(I)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->setVideoCall(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, v5}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    goto/16 :goto_0

    .line 83
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mIsTextDialogConfiged:Z

    .line 84
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallUpdateListener:Lcom/android/incallui/CallList$CallUpdateListener;

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    goto :goto_1
.end method

.method private showAnswerUi(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 157
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 158
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    sget-object v2, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show AnswerFragment: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  has InCallActivity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->showAnswerFragment(Z)V

    .line 162
    :cond_0
    return-void

    .line 158
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearCall()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 169
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallUpdateListener:Lcom/android/incallui/CallList$CallUpdateListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 171
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 172
    iput-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    .line 173
    iput-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    .line 174
    return-void
.end method

.method public isVideoCall()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public isVtConferenceCall()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/CallUtils;->isVtConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public onAnswer(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnswer mCallId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",videoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onDecline()V
    .locals 4

    .prologue
    .line 112
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 113
    return-void
.end method

.method public onDismissDialog()V
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    .line 123
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingCall(): state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, p3}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    .line 154
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 5
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v4, 0x0

    .line 128
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChange(): state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , callList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 133
    .local v0, "call":Lcom/android/incallui/Call;
    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    .line 134
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/CallAdapterUtils;->isVideo(I)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->setVideoCall(Z)V

    .line 137
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 139
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 140
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v4}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    .line 142
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)V

    .line 143
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallUpdateListener:Lcom/android/incallui/CallList$CallUpdateListener;

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 144
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    goto :goto_0
.end method

.method public onUiReady(Lcom/android/incallui/AnswerPresenter$AnswerUi;)V
    .locals 2
    .param p1, "ui"    # Lcom/android/incallui/AnswerPresenter$AnswerUi;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUiReady ui="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 53
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->onUiReady(Lcom/android/incallui/AnswerPresenter$AnswerUi;)V

    return-void
.end method

.method public onUiShowing(Z)V
    .locals 5
    .param p1, "showing"    # Z

    .prologue
    .line 178
    if-eqz p1, :cond_1

    .line 179
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 181
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 182
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    .line 192
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "calls":Lcom/android/incallui/CallList;
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 189
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallUpdateListener:Lcom/android/incallui/CallList$CallUpdateListener;

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    goto :goto_0
.end method

.method public onUiUnready(Lcom/android/incallui/AnswerPresenter$AnswerUi;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/AnswerPresenter$AnswerUi;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 58
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->onUiUnready(Lcom/android/incallui/AnswerPresenter$AnswerUi;)V

    return-void
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->onDismissDialog()V

    .line 119
    return-void
.end method
