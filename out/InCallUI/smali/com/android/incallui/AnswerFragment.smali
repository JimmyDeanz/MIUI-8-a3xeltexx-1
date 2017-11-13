.class public Lcom/android/incallui/AnswerFragment;
.super Lcom/android/incallui/BaseFragment;
.source "AnswerFragment.java"

# interfaces
.implements Lcom/android/incallui/AnswerPresenter$AnswerUi;
.implements Lcom/android/incallui/view/AnswerLayout$SlideEndListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/AnswerPresenter;",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;",
        ">;",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;",
        "Lcom/android/incallui/view/AnswerLayout$SlideEndListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnswerLayout:Lcom/android/incallui/view/AnswerLayout;

.field private mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/AnswerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    .line 42
    return-void
.end method

.method private varargs videoCallStateRecord(ZZ[Ljava/lang/String;)V
    .locals 2
    .param p1, "hasConferenceDiff"    # Z
    .param p2, "hasVideoDiff"    # Z
    .param p3, "keys"    # [Ljava/lang/String;

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->isVtConferenceCall()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->isVideoCall()Z

    move-result v0

    invoke-static {p1, p2, v1, v0, p3}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordVideoCallCountEvent(ZZZZ[Ljava/lang/String;)V

    .line 159
    return-void
.end method


# virtual methods
.method public configureMessageDialog(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerLayout:Lcom/android/incallui/view/AnswerLayout;

    invoke-virtual {v0, p1}, Lcom/android/incallui/view/AnswerLayout;->configureMessageDialog(Ljava/util/List;)V

    .line 120
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->createPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/android/incallui/AnswerPresenter$AnswerUi;
    .locals 0

    .prologue
    .line 51
    return-object p0
.end method

.method protected bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getUi()Lcom/android/incallui/AnswerPresenter$AnswerUi;

    move-result-object v0

    return-object v0
.end method

.method public onAnswer(I)V
    .locals 4
    .param p1, "callType"    # I

    .prologue
    const/4 v3, 0x1

    .line 124
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerPresenter;->onAnswer(I)V

    .line 125
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "video_call_answer_conference"

    aput-object v2, v0, v1

    const-string v1, "video_call_answer_video"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "video_call_answer_voice"

    aput-object v2, v0, v1

    invoke-direct {p0, v3, v3, v0}, Lcom/android/incallui/AnswerFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    const v0, 0x7f030003

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mRootView:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->clearCall()V

    .line 80
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerLayout:Lcom/android/incallui/view/AnswerLayout;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerLayout:Lcom/android/incallui/view/AnswerLayout;

    invoke-virtual {v0}, Lcom/android/incallui/view/AnswerLayout;->clearAll()V

    .line 82
    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mAnswerLayout:Lcom/android/incallui/view/AnswerLayout;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 85
    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mRootView:Landroid/view/View;

    .line 87
    :cond_1
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 88
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 142
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerPresenter;->rejectCallWithMessage(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "video_call_conference_incoming_message"

    aput-object v2, v0, v1

    const-string v1, "video_call_incoming_message"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "video_call_voice_incoming_message"

    aput-object v2, v0, v1

    invoke-direct {p0, v3, v3, v0}, Lcom/android/incallui/AnswerFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public onReject()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 133
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    .line 134
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "video_call_conference_incoming_end_call"

    aput-object v2, v0, v1

    const-string v1, "video_call_incoming_end_call"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "video_call_voice_incoming_end_call"

    aput-object v2, v0, v1

    invoke-direct {p0, v3, v3, v0}, Lcom/android/incallui/AnswerFragment;->videoCallStateRecord(ZZ[Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStart()V

    .line 62
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    check-cast p1, Lcom/android/incallui/view/SlideUpLayout;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment;->mAnswerLayout:Lcom/android/incallui/view/AnswerLayout;

    .line 74
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerLayout:Lcom/android/incallui/view/AnswerLayout;

    invoke-virtual {v0, p0}, Lcom/android/incallui/view/AnswerLayout;->setSlideEndListener(Lcom/android/incallui/view/AnswerLayout$SlideEndListener;)V

    .line 75
    return-void
.end method

.method public setJeejenLayer(Lcom/android/incallui/JeejenInCallScreenLayer;)V
    .locals 0
    .param p1, "layer"    # Lcom/android/incallui/JeejenInCallScreenLayer;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    .line 153
    return-void
.end method

.method public setVideoCall(Z)V
    .locals 1
    .param p1, "isVideoCall"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerLayout:Lcom/android/incallui/view/AnswerLayout;

    invoke-virtual {v0, p1}, Lcom/android/incallui/view/AnswerLayout;->setVideoCall(Z)V

    .line 93
    return-void
.end method

.method public showAnswerUi(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerLayout:Lcom/android/incallui/view/AnswerLayout;

    invoke-virtual {v0, p1}, Lcom/android/incallui/view/AnswerLayout;->showAnswerUi(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    invoke-virtual {v0, p1}, Lcom/android/incallui/JeejenInCallScreenLayer;->showIncomingCallWidget(Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public showTextButton(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerLayout:Lcom/android/incallui/view/AnswerLayout;

    invoke-virtual {v0, p1}, Lcom/android/incallui/view/AnswerLayout;->showTextButton(Z)V

    .line 115
    return-void
.end method
