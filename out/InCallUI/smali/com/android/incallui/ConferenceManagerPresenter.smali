.class public Lcom/android/incallui/ConferenceManagerPresenter;
.super Lcom/android/incallui/Presenter;
.source "ConferenceManagerPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCall:Lcom/android/incallui/Call;

.field private mCallTimer:Lcom/android/incallui/CallTimer;

.field private mContext:Landroid/content/Context;

.field private mCurrentConferenceCount:I

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "ConferenceManagerPresenter"

    sput-object v0, Lcom/android/incallui/ConferenceManagerPresenter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 55
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    iput v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mSlotId:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCurrentConferenceCount:I

    .line 66
    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/ConferenceManagerPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/ConferenceManagerPresenter$1;-><init>(Lcom/android/incallui/ConferenceManagerPresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    .line 72
    return-void
.end method

.method private update(Lcom/android/incallui/CallList;)V
    .locals 24
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v13

    .line 127
    .local v13, "currentCall":Lcom/android/incallui/Call;
    if-nez v13, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {v13}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCurrentConferenceCount:I

    .line 131
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCurrentConferenceCount:I

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .local v11, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/Call;>;"
    invoke-virtual {v13}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 133
    .local v10, "callerId":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    .end local v10    # "callerId":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getSubId()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mSlotId:I

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Number of calls is "

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCurrentConferenceCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v3}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->initConferenceView()V

    .line 142
    invoke-static {v13}, Lcom/android/incallui/CallUtils;->isImsRegistered(Lcom/android/incallui/Call;)Z

    move-result v20

    .line 143
    .local v20, "showAddParticipant":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    move/from16 v0, v20

    invoke-interface {v3, v0}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->showAddParticipant(Z)V

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_4

    const/16 v16, 0x1

    .line 149
    .local v16, "hasActiveCall":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_5

    const/16 v17, 0x1

    .line 150
    .local v17, "hasHoldingCall":Z
    :goto_3
    if-eqz v16, :cond_3

    if-nez v17, :cond_6

    :cond_3
    const/4 v12, 0x1

    .line 152
    .local v12, "canSeparate":Z
    :goto_4
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    const/4 v3, 0x5

    if-ge v5, v3, :cond_a

    .line 153
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCurrentConferenceCount:I

    if-ge v5, v3, :cond_9

    .line 154
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/Call;

    .line 155
    .local v4, "call":Lcom/android/incallui/Call;
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v9

    .line 156
    .local v9, "callCapabilities":I
    if-eqz v12, :cond_7

    and-int/lit16 v3, v9, 0x1000

    if-eqz v3, :cond_7

    const/4 v7, 0x1

    .line 158
    .local v7, "thisRowCanSeparate":Z
    :goto_6
    and-int/lit16 v3, v9, 0x2000

    if-eqz v3, :cond_8

    const/4 v8, 0x1

    .line 161
    .local v8, "thisRowCanDisconnect":Z
    :goto_7
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->getInstance()Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v6

    .local v6, "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    move-object/from16 v3, p0

    .line 164
    invoke-direct/range {v3 .. v8}, Lcom/android/incallui/ConferenceManagerPresenter;->updateContactCacheAndShow(Lcom/android/incallui/Call;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V

    .line 152
    .end local v4    # "call":Lcom/android/incallui/Call;
    .end local v6    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v7    # "thisRowCanSeparate":Z
    .end local v8    # "thisRowCanDisconnect":Z
    .end local v9    # "callCapabilities":I
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 148
    .end local v5    # "i":I
    .end local v12    # "canSeparate":Z
    .end local v16    # "hasActiveCall":Z
    .end local v17    # "hasHoldingCall":Z
    :cond_4
    const/16 v16, 0x0

    goto :goto_2

    .line 149
    .restart local v16    # "hasActiveCall":Z
    :cond_5
    const/16 v17, 0x0

    goto :goto_3

    .line 150
    .restart local v17    # "hasHoldingCall":Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 156
    .restart local v4    # "call":Lcom/android/incallui/Call;
    .restart local v5    # "i":I
    .restart local v9    # "callCapabilities":I
    .restart local v12    # "canSeparate":Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_6

    .line 158
    .restart local v7    # "thisRowCanSeparate":Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_7

    .line 168
    .end local v4    # "call":Lcom/android/incallui/Call;
    .end local v7    # "thisRowCanSeparate":Z
    .end local v9    # "callCapabilities":I
    :cond_9
    const/4 v3, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v5, v3, v1, v2}, Lcom/android/incallui/ConferenceManagerPresenter;->updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V

    goto :goto_8

    .line 171
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v21

    check-cast v21, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    .line 172
    .local v21, "ui":Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
    if-eqz v21, :cond_0

    .line 173
    invoke-interface/range {v21 .. v21}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->getTwoContactsName()[Ljava/lang/String;

    move-result-object v19

    .line 174
    .local v19, "names":[Ljava/lang/String;
    if-eqz v19, :cond_0

    .line 177
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCurrentConferenceCount:I

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v3, v0, :cond_b

    .line 178
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    const v22, 0x7f0c0042

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/incallui/InCallApp;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 179
    .local v15, "format":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v22, 0x0

    const/16 v23, 0x0

    aget-object v23, v19, v23

    aput-object v23, v3, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCurrentConferenceCount:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v3, v22

    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 184
    .local v14, "desp":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setConferenceDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    .end local v14    # "desp":Ljava/lang/String;
    .end local v15    # "format":Ljava/lang/String;
    :cond_b
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    const v22, 0x7f0c0041

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/incallui/InCallApp;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 182
    .restart local v15    # "format":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v22, 0x0

    const/16 v23, 0x0

    aget-object v23, v19, v23

    aput-object v23, v3, v22

    const/16 v22, 0x1

    const/16 v23, 0x1

    aget-object v23, v19, v23

    aput-object v23, v3, v22

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCurrentConferenceCount:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v3, v22

    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "desp":Ljava/lang/String;
    goto :goto_9
.end method

.method private updateContactCacheAndShow(Lcom/android/incallui/Call;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "index"    # I
    .param p3, "contactCache"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4, "canSeparate"    # Z
    .param p5, "canDisconnect"    # Z

    .prologue
    const/4 v7, 0x0

    .line 193
    if-eqz p3, :cond_1

    iget-object v0, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/incallui/ConferenceManagerPresenter;->updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v7}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object p3

    .line 198
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/incallui/ConferenceManagerPresenter;->updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V

    .line 199
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->getInstance()Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    .line 200
    .local v6, "cache":Lcom/android/incallui/ContactInfoCache;
    new-instance v0, Lcom/android/incallui/ConferenceManagerPresenter$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/ConferenceManagerPresenter$2;-><init>(Lcom/android/incallui/ConferenceManagerPresenter;Lcom/android/incallui/Call;IZZ)V

    invoke-virtual {v6, p1, v7, v0}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public endConferenceConnection(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public getMaxCallersInConference()I
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x5

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 119
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    .line 120
    iput-object p1, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    .line 121
    invoke-direct {p0, p2}, Lcom/android/incallui/ConferenceManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    .line 122
    return-void
.end method

.method public isVtConferenceCall()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/CallUtils;->isVtConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public onAddParticipantClicked()V
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isConferenceExceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const v0, 0x7f0c00d7

    invoke-static {v0}, Lcom/android/incallui/util/Utils;->displayMsg(I)V

    .line 306
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->sendAddParticipantIntent()V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v0}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->isFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v1}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->isFragmentVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_2

    .line 96
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 97
    .local v0, "call":Lcom/android/incallui/Call;
    iput-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCall:Lcom/android/incallui/Call;

    .line 98
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of existing calls is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, p3}, Lcom/android/incallui/ConferenceManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    .line 109
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    :goto_0
    return-void

    .line 103
    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    goto :goto_0

    .line 106
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    goto :goto_0
.end method

.method public onUiReady(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 79
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 80
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 81
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerPresenter;->onUiReady(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 87
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 88
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 89
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerPresenter;->onUiUnready(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V

    return-void
.end method

.method public sendAddParticipantIntent()V
    .locals 3

    .prologue
    .line 332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 333
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.GET_MULTIPLE_PHONES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string v1, "com.android.contacts.extra.MAX_COUNT"

    iget v2, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCurrentConferenceCount:I

    rsub-int/lit8 v2, v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->customStartActivityForResult(Landroid/content/Intent;I)V

    .line 338
    return-void
.end method

.method public separateConferenceConnection(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->separateCall(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public startConferenceCall(Landroid/content/Context;Landroid/app/FragmentManager;[Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p3, "uris"    # [Landroid/os/Parcelable;

    .prologue
    .line 342
    new-instance v0, Lcom/android/incallui/ConferenceManagerPresenter$3;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/incallui/ConferenceManagerPresenter$3;-><init>(Lcom/android/incallui/ConferenceManagerPresenter;Landroid/app/FragmentManager;[Landroid/os/Parcelable;Landroid/content/Context;)V

    const v1, 0x7f0c00d5

    invoke-virtual {v0, v1}, Lcom/android/incallui/ConferenceManagerPresenter$3;->setMessage(I)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/os/AsyncTaskWithProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 368
    return-void
.end method

.method public startTimer()V
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v0}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 281
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/CallTimer;->start(J)Z

    .line 282
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v0}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 286
    return-void
.end method

.method public updateCallTime()V
    .locals 8

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    .line 222
    .local v1, "ui":Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 223
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 224
    :cond_0
    if-eqz v1, :cond_1

    .line 225
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setConferenceCallerElapsedTime(Ljava/lang/String;)V

    .line 227
    :cond_1
    iget-object v6, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v6}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v2

    .line 230
    .local v2, "callStart":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v2

    .line 231
    .local v4, "duration":J
    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setConferenceCallerElapsedTime(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V
    .locals 13
    .param p1, "i"    # I
    .param p2, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "canSeparate"    # Z
    .param p4, "canDisconnect"    # Z

    .prologue
    .line 252
    if-eqz p2, :cond_3

    .line 254
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setRowVisible(IZ)V

    .line 256
    iget-object v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 257
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 259
    .local v4, "number":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    move-object v3, v4

    .line 262
    :cond_0
    const/4 v6, -0x1

    .line 263
    .local v6, "simCardResId":I
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mSlotId:I

    invoke-static {v1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    iget v1, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mSlotId:I

    if-nez v1, :cond_2

    const v6, 0x7f0200a1

    .line 268
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callId:Ljava/lang/String;

    move/from16 v0, p3

    invoke-interface {v1, p1, v2, v0}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setupSeparateButtonForRow(ILjava/lang/String;Z)V

    .line 269
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callId:Ljava/lang/String;

    move/from16 v0, p4

    invoke-interface {v1, p1, v2, v0}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setupEndButtonForRow(ILjava/lang/String;Z)V

    .line 270
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    iget-object v5, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    move v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 277
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v6    # "simCardResId":I
    :goto_1
    return-void

    .line 265
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v6    # "simCardResId":I
    :cond_2
    const v6, 0x7f0200a2

    goto :goto_0

    .line 274
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v6    # "simCardResId":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setRowVisible(IZ)V

    .line 275
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    move v8, p1

    invoke-interface/range {v7 .. v12}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method
