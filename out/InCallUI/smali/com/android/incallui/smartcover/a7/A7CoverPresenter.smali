.class public Lcom/android/incallui/smartcover/a7/A7CoverPresenter;
.super Lcom/android/incallui/Presenter;
.source "A7CoverPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field private mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mCurrentCall:Lcom/android/incallui/Call;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/smartcover/a7/A7CoverPresenter;)Lcom/android/incallui/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/smartcover/a7/A7CoverPresenter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/smartcover/a7/A7CoverPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/smartcover/a7/A7CoverPresenter;
    .param p1, "x1"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/incallui/smartcover/a7/A7CoverPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/smartcover/a7/A7CoverPresenter;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->updateSmartCoverInfo()V

    return-void
.end method

.method private static getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private maybeUpdateCallEntry()V
    .locals 4

    .prologue
    .line 154
    iget-object v2, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-nez v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "number":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVioceMailNumber:Z

    if-nez v2, :cond_0

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 161
    .local v0, "isIncoming":Z
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-static {v2, v3, v0}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 162
    iget-object v2, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v2, v0}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;Z)V

    goto :goto_0

    .line 160
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
    .line 172
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->getInstance()Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 173
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    new-instance v1, Lcom/android/incallui/smartcover/a7/A7CoverPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter$1;-><init>(Lcom/android/incallui/smartcover/a7/A7CoverPresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 190
    return-void
.end method

.method private updateSmartCoverInfo()V
    .locals 8

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;

    .line 100
    .local v5, "ui":Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;
    if-nez v5, :cond_0

    .line 133
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v6, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v6, :cond_1

    .line 104
    iget-object v6, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v7, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v7}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 106
    :cond_1
    iget-object v6, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    iget-object v7, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v6, v7}, Lcom/android/incallui/model/CallCardInfo;->createCoverCallCardInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/model/CallCardInfo;

    move-result-object v0

    .line 107
    .local v0, "callCardInfo":Lcom/android/incallui/model/CallCardInfo;
    iget-object v6, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-static {v6}, Lcom/android/incallui/CallUtils;->isGenericConference(Lcom/android/incallui/Call;)Z

    move-result v4

    .line 108
    .local v4, "isGenericConf":Z
    const/4 v3, 0x0

    .line 110
    .local v3, "isConferenceCall":Z
    iget-object v6, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-eqz v6, :cond_3

    .line 111
    iget-boolean v6, v0, Lcom/android/incallui/model/CallCardInfo;->isIncoming:Z

    if-eqz v6, :cond_5

    .line 112
    const/4 v3, 0x0

    .line 116
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-static {v6}, Lcom/android/incallui/CallUtils;->isThreeWayIncoming(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 118
    const/4 v3, 0x0

    .line 120
    :cond_2
    iget-object v6, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-static {v6}, Lcom/android/incallui/CallUtils;->isThreeWayOutgoing(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 122
    const/4 v3, 0x0

    .line 125
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->getPrimaryCallNum()I

    move-result v6

    invoke-interface {v5, v0, v3, v4, v6}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;->configSmartCover(Lcom/android/incallui/model/CallCardInfo;ZZI)V

    .line 127
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    .line 128
    .local v2, "inCallState":Lcom/android/incallui/InCallPresenter$InCallState;
    iget-object v1, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    .line 129
    .local v1, "controlSlideCall":Lcom/android/incallui/Call;
    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v2, v6, :cond_4

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v2, v6, :cond_4

    .line 130
    const/4 v1, 0x0

    .line 132
    :cond_4
    if-eqz v1, :cond_6

    const/4 v6, 0x1

    :goto_2
    invoke-interface {v5, v6}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;->configSmartCoverEndCallSlide(Z)V

    goto :goto_0

    .line 114
    .end local v1    # "controlSlideCall":Lcom/android/incallui/Call;
    .end local v2    # "inCallState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_5
    iget-object v6, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-static {v6}, Lcom/android/incallui/CallUtils;->isConference(Lcom/android/incallui/Call;)Z

    move-result v3

    goto :goto_1

    .line 132
    .restart local v1    # "controlSlideCall":Lcom/android/incallui/Call;
    .restart local v2    # "inCallState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_6
    const/4 v6, 0x0

    goto :goto_2
.end method


# virtual methods
.method public endCallSlided()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPrimaryCallNum()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 139
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
    .line 78
    iget-object v0, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onDecline()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

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
    .line 73
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

    .line 74
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 75
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v3, 0x0

    .line 55
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

    .line 56
    invoke-virtual {p0}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;

    .line 57
    .local v0, "ui":Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;
    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    .line 62
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    iput-object v3, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    .line 64
    iput-object v3, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    goto :goto_0

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->maybeUpdateCallEntry()V

    .line 67
    invoke-direct {p0}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->updateSmartCoverInfo()V

    goto :goto_0
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->onUiReady(Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;)V

    return-void
.end method

.method public onUiReady(Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;)V
    .locals 3
    .param p1, "ui"    # Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 33
    const-string v2, "onUiReady"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 35
    .local v0, "callList":Lcom/android/incallui/CallList;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    .line 36
    .local v1, "inCallState":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 38
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 39
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 40
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->onUiUnready(Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;)V
    .locals 2
    .param p1, "ui"    # Lcom/android/incallui/smartcover/a7/A7CoverPresenter$CoverCardUi;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 45
    const-string v0, "onUiUnready"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 48
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 49
    iput-object v1, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCurrentCall:Lcom/android/incallui/Call;

    .line 50
    iput-object v1, p0, Lcom/android/incallui/smartcover/a7/A7CoverPresenter;->mCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 51
    return-void
.end method
