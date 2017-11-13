.class public Lcom/sec/epdg/handover/EpdgImsCallStatus;
.super Ljava/lang/Object;
.source "EpdgImsCallStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    }
.end annotation


# static fields
.field private static final DOWNGRADED_VIDEO_CALL_COUNT:I = 0x2

.field private static final E911_CALL_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[EpdgImsCallStatus]"

.field private static final TOTAL_CALL_COUNT:I = 0x0

.field private static final VIDEO_CALL_COUNT:I = 0x1


# instance fields
.field private mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

.field private mEcbmModeOn:Z

.field private mHoDelayVoiceCallSessionId:Ljava/lang/String;

.field private final mImsCallList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mEcbmModeOn:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallType(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/epdg/handover/EpdgImsCallStatus;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsCallStatus;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->isVideoCall(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/handover/EpdgImsCallStatus;)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsCallStatus;

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    return-object v0
.end method

.method private static getCallType(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Integer;
    .locals 2
    .param p0, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getCallType()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method private getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getCallId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDownGradedVideoCall(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->isDowngradedVideoCall()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method

.method private isDowngradedAtEstablish(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->isDowngradedAtEstablish()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method

.method private isVideoCall(I)Z
    .locals 1
    .param p1, "imsCallType"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateEpdgCallStatus()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mEcbmModeOn:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallCount()[I

    move-result-object v0

    .local v0, "callCount":[I
    if-nez v0, :cond_1

    const-string v1, "[EpdgImsCallStatus]"

    const-string v2, "updateEpdgCallStatus() : callCount is null"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_0

    :cond_1
    aget v1, v0, v4

    if-nez v1, :cond_2

    const-string v1, "[EpdgImsCallStatus]"

    const-string v2, "updateEpdgCallStatus() : There is no call"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    aget v1, v0, v1

    if-lez v1, :cond_3

    const-string v1, "[EpdgImsCallStatus]"

    const-string v2, "updateEpdgCallStatus() : At least one call is E911"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_0

    :cond_3
    aget v1, v0, v4

    aget v2, v0, v5

    if-ne v1, v2, :cond_4

    const-string v1, "[EpdgImsCallStatus]"

    const-string v2, "updateEpdgCallStatus() : All calls are video calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_0

    :cond_4
    aget v1, v0, v4

    aget v2, v0, v6

    if-ne v1, v2, :cond_5

    const-string v1, "[EpdgImsCallStatus]"

    const-string v2, "updateEpdgCallStatus() : All calls are downgraded video calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_0

    :cond_5
    aget v1, v0, v4

    aget v2, v0, v5

    aget v3, v0, v6

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_6

    const-string v1, "[EpdgImsCallStatus]"

    const-string v2, "updateEpdgCallStatus() : All calls are video or downgraded video calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_0

    :cond_6
    aget v1, v0, v4

    aget v2, v0, v4

    aget v3, v0, v5

    sub-int/2addr v2, v3

    aget v3, v0, v6

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_7

    const-string v1, "[EpdgImsCallStatus]"

    const-string v2, "updateEpdgCallStatus() : All calls are voice calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto/16 :goto_0

    :cond_7
    aget v1, v0, v4

    aget v2, v0, v4

    aget v3, v0, v5

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_8

    const-string v1, "[EpdgImsCallStatus]"

    const-string v2, "updateEpdgCallStatus() : All calls are downgraded video or voice calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto/16 :goto_0

    :cond_8
    const-string v1, "[EpdgImsCallStatus]"

    const-string v2, "updateEpdgCallStatus() : Mixed call case"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto/16 :goto_0
.end method


# virtual methods
.method protected getCallCount()[I
    .locals 11

    .prologue
    const/4 v6, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x0

    new-array v0, v6, [I

    .local v0, "callCount":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    aput v9, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;

    .local v1, "callInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->getCallType()Ljava/lang/Integer;

    move-result-object v3

    .local v3, "imsCallType":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_2
    :pswitch_0
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->isDownGradedVideoCall()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->isDowngradedAtEstablish()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "[EpdgImsCallStatus]"

    const-string v7, "getCallCount() DownGradedVideoCall for ATT"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget v6, v0, v10

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v10

    :cond_1
    :goto_3
    aget v6, v0, v9

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v9

    const-string v6, "[EpdgImsCallStatus]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCallCount() Key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const/4 v6, 0x1

    aget v7, v0, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v0, v6

    goto :goto_2

    :pswitch_2
    const/4 v6, 0x3

    aget v7, v0, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v0, v6

    goto :goto_2

    :cond_2
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    if-nez v6, :cond_3

    const-string v6, "[EpdgImsCallStatus]"

    const-string v7, "getCallCount() DownGradedVideoCall"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget v6, v0, v10

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v10

    goto :goto_3

    :cond_3
    const-string v6, "[EpdgImsCallStatus]"

    const-string v7, "getCallCount() isDowngradedAtEstablish for ATT - Accept as voice"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v1    # "callInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .end local v3    # "imsCallType":Ljava/lang/Integer;
    .end local v5    # "key":Ljava/lang/String;
    :cond_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    .locals 1

    .prologue
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_0
.end method

.method protected getE911CallCount()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallCount()[I

    move-result-object v0

    .local v0, "callCount":[I
    if-eqz v0, :cond_0

    const/4 v1, 0x3

    aget v1, v0, v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getNonE911CallCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallCount()[I

    move-result-object v0

    .local v0, "callCount":[I
    if-eqz v0, :cond_0

    aget v1, v0, v1

    const/4 v2, 0x3

    aget v2, v0, v2

    sub-int/2addr v1, v2

    :cond_0
    return v1
.end method

.method protected onCallEnded(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 5
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    const-string v2, "[EpdgImsCallStatus]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallEnded() Key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->updateEpdgCallStatus()V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->informCallStatusChangeToHandoverModule()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCallEstablish(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 0
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    invoke-virtual {p0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->onCallModified(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    return-void
.end method

.method protected onCallModified(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 6
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;

    move-result-object v2

    .local v2, "key":Ljava/lang/String;
    const-string v3, "[EpdgImsCallStatus]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallModified() Key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;

    .local v1, "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    if-nez v1, :cond_0

    const-string v3, "[EpdgImsCallStatus]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallModified() No callinfo for Key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .end local v2    # "key":Ljava/lang/String;
    :goto_0
    return-void

    .restart local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->update(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->updateEpdgCallStatus()V

    const-string v3, "[EpdgImsCallStatus]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallModified() epdgCallInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->isHandoverReady()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "[EpdgImsCallStatus]"

    const-string v4, "onCallModified() Handover ready"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v3, v4, :cond_1

    const-string v3, "[EpdgImsCallStatus]"

    const-string v4, "Newly established call is voice, need to inform handover delay"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->informHandoverDelayToHandoverModule()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->informCallStatusChangeToHandoverModule()V

    goto :goto_0

    :cond_2
    const-string v3, "[EpdgImsCallStatus]"

    const-string v4, "onCallModified() Handover not ready"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onCallModifyRequested(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 6
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;

    move-result-object v2

    .local v2, "key":Ljava/lang/String;
    const-string v3, "[EpdgImsCallStatus]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallModifyRequested() Key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;

    .local v1, "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    if-nez v1, :cond_0

    const-string v3, "[EpdgImsCallStatus]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallModifyRequested() No callinfo for Key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .end local v2    # "key":Ljava/lang/String;
    :goto_0
    return-void

    .restart local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->resetAckRcvd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCallStarted(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 5
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    const-string v2, "[EpdgImsCallStatus]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallStarted() Key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    new-instance v3, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;

    invoke-direct {v3, p0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;-><init>(Lcom/sec/epdg/handover/EpdgImsCallStatus;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v2, v3, :cond_0

    iput-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isVoWifiWave2()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "[EpdgImsCallStatus]"

    const-string v3, "onCallModifyRequested() : not set blockhandoff for wave2"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "key":Ljava/lang/String;
    :goto_0
    return-void

    .restart local v1    # "key":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v2, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDedicatedBearerEvent(Lcom/sec/ims/volte2/data/ImsCallInfo;II)V
    .locals 6
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "bearerstate"    # I
    .param p3, "qci"    # I

    .prologue
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getKey(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/String;

    move-result-object v2

    .local v2, "key":Ljava/lang/String;
    const-string v3, "[EpdgImsCallStatus]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDedicatedBearerEvent() Key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;

    .local v1, "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    if-nez v1, :cond_0

    const-string v3, "[EpdgImsCallStatus]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDedicatedBearerEvent() No callinfo for Key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .end local v2    # "key":Ljava/lang/String;
    :goto_0
    return-void

    .restart local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->storeDedicatedBearerState(II)V

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->isHandoverReady()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "[EpdgImsCallStatus]"

    const-string v4, "onDedicatedBearerEvent() Handover ready"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v3, v4, :cond_1

    const-string v3, "[EpdgImsCallStatus]"

    const-string v4, "Newly established call is voice, need to inform handover delay"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->informHandoverDelayToHandoverModule()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "epdgCallInfo":Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->informCallStatusChangeToHandoverModule()V

    goto :goto_0

    :cond_2
    const-string v3, "[EpdgImsCallStatus]"

    const-string v4, "onDedicatedBearerEvent() Handover not ready"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected resetCallList()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mImsCallList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mHoDelayVoiceCallSessionId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mEcbmModeOn:Z

    return-void
.end method

.method protected setEcbmChanged(Z)V
    .locals 3
    .param p1, "ecbmModeOn"    # Z

    .prologue
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "[EpdgImsCallStatus]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEcbmChanged() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mEcbmModeOn:Z

    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->updateEpdgCallStatus()V

    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->informCallStatusChangeToHandoverModule()V

    goto :goto_0
.end method
