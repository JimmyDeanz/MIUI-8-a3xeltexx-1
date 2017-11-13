.class public Lcom/android/incallui/smartcover/b7/B7CoverPresenter;
.super Lcom/android/incallui/Presenter;
.source "B7CoverPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mCallTimer:Lcom/android/incallui/CallTimer;

.field private mCurrentCall:Lcom/android/incallui/Call;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 36
    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$1;-><init>(Lcom/android/incallui/smartcover/b7/B7CoverPresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/smartcover/b7/B7CoverPresenter;)Lcom/android/incallui/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/smartcover/b7/B7CoverPresenter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/smartcover/b7/B7CoverPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/smartcover/b7/B7CoverPresenter;
    .param p1, "x1"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/incallui/smartcover/b7/B7CoverPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/smartcover/b7/B7CoverPresenter;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->updateSmartCoverInfo()V

    return-void
.end method

.method private static getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 156
    if-nez p0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 162
    :goto_0
    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private maybeUpdateCallEntry()V
    .locals 4

    .prologue
    .line 191
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-nez v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "number":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVioceMailNumber:Z

    if-nez v2, :cond_0

    .line 197
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 198
    .local v0, "isIncoming":Z
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-static {v2, v3, v0}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 199
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v2, v0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;Z)V

    goto :goto_0

    .line 197
    .end local v0    # "isIncoming":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private startContactInfoSearch(Lcom/android/incallui/Call;Z)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isIncoming"    # Z

    .prologue
    .line 209
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->getInstance()Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 210
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    new-instance v1, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$2;-><init>(Lcom/android/incallui/smartcover/b7/B7CoverPresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 229
    return-void
.end method

.method private updateSingleDisplayInfo(Lcom/android/incallui/model/CallCardInfo;)V
    .locals 7
    .param p1, "callCardInfo"    # Lcom/android/incallui/model/CallCardInfo;

    .prologue
    const/4 v4, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;

    .line 127
    .local v0, "ui":Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;
    if-nez v0, :cond_0

    .line 129
    sget-object v1, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->TAG:Ljava/lang/String;

    const-string v4, "updateSingleDisplayInfo called but ui is null!"

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/CallUtils;->isGenericConference(Lcom/android/incallui/Call;)Z

    move-result v3

    .line 134
    .local v3, "isGenericConf":Z
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/CallUtils;->isThreeWayIncoming(Lcom/android/incallui/Call;)Z

    move-result v6

    .line 135
    .local v6, "isThreeWayIncoming":Z
    const/4 v2, 0x0

    .line 137
    .local v2, "isConferenceCall":Z
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_2

    .line 138
    iget-boolean v1, p1, Lcom/android/incallui/model/CallCardInfo;->isIncoming:Z

    if-eqz v1, :cond_3

    .line 139
    const/4 v2, 0x0

    .line 143
    :goto_1
    if-eqz v6, :cond_1

    .line 145
    const/4 v2, 0x0

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/CallUtils;->isThreeWayOutgoing(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    const/4 v2, 0x0

    :cond_2
    move-object v1, p1

    move v5, v4

    .line 152
    invoke-interface/range {v0 .. v5}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;->setPrimary(Lcom/android/incallui/model/CallCardInfo;ZZZZ)V

    goto :goto_0

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/CallUtils;->isConference(Lcom/android/incallui/Call;)Z

    move-result v2

    goto :goto_1
.end method

.method private updateSmartCoverInfo()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;

    .line 104
    .local v2, "ui":Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;
    if-nez v2, :cond_0

    .line 123
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v6, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v6}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 110
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    iget-object v6, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v3, v6}, Lcom/android/incallui/model/CallCardInfo;->createCoverCallCardInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/model/CallCardInfo;

    move-result-object v0

    .line 111
    .local v0, "callInfo":Lcom/android/incallui/model/CallCardInfo;
    iget-boolean v3, v0, Lcom/android/incallui/model/CallCardInfo;->isIncoming:Z

    if-eqz v3, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;

    invoke-interface {v3}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;->initAnswerOperLayout()V

    .line 113
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;

    invoke-interface {v3}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;->showTextButton()V

    .line 114
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;

    invoke-interface {v3, v4}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;->showAnswerUi(Z)V

    .line 119
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->updateSingleDisplayInfo(Lcom/android/incallui/model/CallCardInfo;)V

    .line 121
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getOutgoingOrActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 122
    .local v1, "controlButtonCall":Lcom/android/incallui/Call;
    if-eqz v1, :cond_3

    move v3, v4

    :goto_2
    invoke-interface {v2, v3}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;->showHangUpButton(Z)V

    goto :goto_0

    .line 116
    .end local v1    # "controlButtonCall":Lcom/android/incallui/Call;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;

    invoke-interface {v3, v5}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;->showAnswerUi(Z)V

    goto :goto_1

    .restart local v1    # "controlButtonCall":Lcom/android/incallui/Call;
    :cond_3
    move v3, v5

    .line 122
    goto :goto_2
.end method


# virtual methods
.method public endCallClicked()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAnswer(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onDecline()V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 78
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 79
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;

    .line 67
    .local v0, "ui":Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;
    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    .line 71
    invoke-direct {p0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->maybeUpdateCallEntry()V

    .line 72
    invoke-direct {p0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->updateSmartCoverInfo()V

    .line 73
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->updateTimeAndTelocation()V

    goto :goto_0
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->onUiReady(Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;)V

    return-void
.end method

.method public onUiReady(Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;)V
    .locals 3
    .param p1, "ui"    # Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 47
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 48
    .local v0, "callList":Lcom/android/incallui/CallList;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    .line 49
    .local v1, "inCallState":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 50
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 51
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 52
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->onUiUnready(Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;)V
    .locals 2
    .param p1, "ui"    # Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 58
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 59
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 60
    iput-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    .line 61
    iput-object v1, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 62
    return-void
.end method

.method public updateTimeAndTelocation()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;

    .line 167
    .local v5, "ui":Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;
    iget-object v8, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_4

    :cond_0
    move v4, v6

    .line 168
    .local v4, "isIncoming":Z
    :goto_0
    if-eqz v5, :cond_2

    iget-object v8, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    iget-object v8, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2

    :cond_1
    if-eqz v4, :cond_6

    .line 170
    :cond_2
    if-eqz v5, :cond_3

    .line 171
    const/4 v8, 0x0

    invoke-interface {v5, v8}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;->setPrimaryCallElapsedTime(Ljava/lang/String;)V

    .line 172
    iget-object v8, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-nez v8, :cond_5

    .line 173
    invoke-interface {v5, v7}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;->showTelocation(Z)V

    .line 178
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v6}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 188
    :goto_2
    return-void

    .end local v4    # "isIncoming":Z
    :cond_4
    move v4, v7

    .line 167
    goto :goto_0

    .line 175
    .restart local v4    # "isIncoming":Z
    :cond_5
    invoke-interface {v5, v6}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;->showTelocation(Z)V

    goto :goto_1

    .line 180
    :cond_6
    iget-object v6, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v6}, Lcom/android/incallui/CallTimer;->isRunning()Z

    move-result v6

    if-nez v6, :cond_7

    .line 181
    iget-object v6, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v6, v10, v11}, Lcom/android/incallui/CallTimer;->start(J)Z

    .line 183
    :cond_7
    iget-object v6, p0, Lcom/android/incallui/smartcover/b7/B7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    .line 184
    .local v0, "callStart":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v0

    .line 185
    .local v2, "duration":J
    div-long v8, v2, v10

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;->setPrimaryCallElapsedTime(Ljava/lang/String;)V

    .line 186
    invoke-interface {v5, v7}, Lcom/android/incallui/smartcover/b7/B7CoverPresenter$AnswerUi;->showTelocation(Z)V

    goto :goto_2
.end method
