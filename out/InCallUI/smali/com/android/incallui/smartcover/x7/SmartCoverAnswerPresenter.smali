.class public Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;
.super Lcom/android/incallui/Presenter;
.source "SmartCoverAnswerPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;",
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
    .line 28
    const-class v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 37
    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$1;-><init>(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;)Lcom/android/incallui/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;
    .param p1, "x1"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->updateSmartCoverInfo()V

    return-void
.end method

.method private static getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 181
    if-nez p0, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private maybeUpdateCallEntry()V
    .locals 4

    .prologue
    .line 210
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-nez v2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "number":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVioceMailNumber:Z

    if-nez v2, :cond_0

    .line 216
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 217
    .local v0, "isIncoming":Z
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-static {v2, v3, v0}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 218
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v2, v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;Z)V

    goto :goto_0

    .line 216
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
    .line 228
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->getInstance()Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 229
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    new-instance v1, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$2;-><init>(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 248
    return-void
.end method

.method private updateSingleDisplayInfo(Lcom/android/incallui/model/CallCardInfo;)V
    .locals 8
    .param p1, "callCardInfo"    # Lcom/android/incallui/model/CallCardInfo;

    .prologue
    const/4 v5, 0x0

    .line 135
    sget-object v1, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSingleDisplayInfo: update primary display "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;

    .line 137
    .local v0, "ui":Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;
    if-nez v0, :cond_0

    .line 139
    sget-object v1, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->TAG:Ljava/lang/String;

    const-string v4, "updateSingleDisplayInfo called but ui is null!"

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/CallUtils;->isGenericConference(Lcom/android/incallui/Call;)Z

    move-result v3

    .line 144
    .local v3, "isGenericConf":Z
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/CallUtils;->isThreeWayIncoming(Lcom/android/incallui/Call;)Z

    move-result v7

    .line 145
    .local v7, "isThreeWayIncoming":Z
    const/4 v2, 0x0

    .line 147
    .local v2, "isConferenceCall":Z
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_2

    .line 148
    iget-boolean v1, p1, Lcom/android/incallui/model/CallCardInfo;->isIncoming:Z

    if-eqz v1, :cond_3

    .line 149
    const/4 v2, 0x0

    .line 153
    :goto_1
    if-eqz v7, :cond_1

    .line 155
    const/4 v2, 0x0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/CallUtils;->isThreeWayOutgoing(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    const/4 v2, 0x0

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->getPrimaryCallNum()I

    move-result v4

    move-object v1, p1

    move v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;->setPrimary(Lcom/android/incallui/model/CallCardInfo;ZZIZZ)V

    .line 165
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_4

    .line 166
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getRedialTimes()I

    move-result v5

    invoke-interface {v0, v1, v4, v5}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;->setCallState(ILandroid/telecom/DisconnectCause;I)V

    goto :goto_0

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/CallUtils;->isConference(Lcom/android/incallui/Call;)Z

    move-result v2

    goto :goto_1

    .line 168
    :cond_4
    const/4 v1, 0x2

    new-instance v4, Landroid/telecom/DisconnectCause;

    invoke-direct {v4, v5}, Landroid/telecom/DisconnectCause;-><init>(I)V

    const/4 v5, -0x1

    invoke-interface {v0, v1, v4, v5}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;->setCallState(ILandroid/telecom/DisconnectCause;I)V

    goto :goto_0
.end method

.method private updateSmartCoverInfo()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;

    .line 109
    .local v3, "ui":Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;
    if-nez v3, :cond_0

    .line 132
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v4, :cond_1

    .line 113
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v7, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v7}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 115
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    iget-object v7, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v4, v7}, Lcom/android/incallui/model/CallCardInfo;->createCoverCallCardInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/model/CallCardInfo;

    move-result-object v0

    .line 116
    .local v0, "callInfo":Lcom/android/incallui/model/CallCardInfo;
    iget-boolean v4, v0, Lcom/android/incallui/model/CallCardInfo;->isIncoming:Z

    if-eqz v4, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;

    invoke-interface {v4}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;->initAnswerOperLayout()V

    .line 118
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;

    invoke-interface {v4, v6}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;->showTextButton(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;

    invoke-interface {v4, v5}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    .line 124
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->updateSingleDisplayInfo(Lcom/android/incallui/model/CallCardInfo;)V

    .line 126
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    .line 127
    .local v2, "inCallState":Lcom/android/incallui/InCallPresenter$InCallState;
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    .line 128
    .local v1, "controlButtonCall":Lcom/android/incallui/Call;
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v2, v4, :cond_2

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v2, v4, :cond_2

    .line 129
    const/4 v1, 0x0

    .line 131
    :cond_2
    if-eqz v1, :cond_4

    move v4, v5

    :goto_2
    invoke-interface {v3, v4}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;->showHangUpButton(Z)V

    goto :goto_0

    .line 121
    .end local v1    # "controlButtonCall":Lcom/android/incallui/Call;
    .end local v2    # "inCallState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;

    invoke-interface {v4, v6}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    goto :goto_1

    .restart local v1    # "controlButtonCall":Lcom/android/incallui/Call;
    .restart local v2    # "inCallState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_4
    move v4, v6

    .line 131
    goto :goto_2
.end method


# virtual methods
.method public endCallClicked()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPrimaryCallNum()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnswer(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onDecline()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 81
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

    .line 82
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 83
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 3
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange(): state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , callList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;

    .line 70
    .local v0, "ui":Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;
    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    .line 74
    invoke-direct {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->maybeUpdateCallEntry()V

    .line 75
    invoke-direct {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->updateSmartCoverInfo()V

    .line 76
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->updateCallTime()V

    goto :goto_0
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->onUiReady(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;)V

    return-void
.end method

.method public onUiReady(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;)V
    .locals 4
    .param p1, "ui"    # Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;

    .prologue
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUiReady ui="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 49
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 50
    .local v0, "callList":Lcom/android/incallui/CallList;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    .line 51
    .local v1, "inCallState":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 52
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 53
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 54
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->onUiUnready(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;)V
    .locals 2
    .param p1, "ui"    # Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 60
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 61
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 62
    iput-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    .line 63
    iput-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 64
    return-void
.end method

.method public updateCallTime()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 191
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;

    .line 192
    .local v5, "ui":Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;
    iget-object v6, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4

    :cond_0
    const/4 v4, 0x1

    .line 193
    .local v4, "isIncoming":Z
    :goto_0
    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    :cond_1
    if-eqz v4, :cond_5

    .line 195
    :cond_2
    if-eqz v5, :cond_3

    .line 196
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;->setPrimaryCallElapsedTime(Ljava/lang/String;)V

    .line 198
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v6}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 207
    :goto_1
    return-void

    .line 192
    .end local v4    # "isIncoming":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 200
    .restart local v4    # "isIncoming":Z
    :cond_5
    iget-object v6, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v6}, Lcom/android/incallui/CallTimer;->isRunning()Z

    move-result v6

    if-nez v6, :cond_6

    .line 201
    iget-object v6, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v6, v8, v9}, Lcom/android/incallui/CallTimer;->start(J)Z

    .line 203
    :cond_6
    iget-object v6, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    .line 204
    .local v0, "callStart":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 205
    .local v2, "duration":J
    div-long v6, v2, v8

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerPresenter$AnswerUi;->setPrimaryCallElapsedTime(Ljava/lang/String;)V

    goto :goto_1
.end method
