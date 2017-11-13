.class public abstract Lcom/android/internal/telephony/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Connection$PostDialState;,
        Lcom/android/internal/telephony/Connection$ListenerBase;,
        Lcom/android/internal/telephony/Connection$Listener;,
        Lcom/android/internal/telephony/Connection$PostDialListener;
    }
.end annotation


# static fields
.field public static final AUDIO_QUALITY_HIGH_DEFINITION:I = 0x2

.field public static final AUDIO_QUALITY_HIGH_DEFINITION_PLUS:I = 0x3

.field public static final AUDIO_QUALITY_STANDARD:I = 0x1

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field protected callDetails:Lcom/android/internal/telephony/CallDetails;

.field private callModifyRequest:Lcom/android/internal/telephony/CallModify;

.field id:I

.field protected mAddress:Ljava/lang/String;

.field private mAudioQuality:I

.field private mCallSubstate:I

.field protected mCnapName:Ljava/lang/String;

.field protected mCnapNamePresentation:I

.field protected mConnectTime:J

.field protected mConnectTimeReal:J

.field protected mConvertedNumber:Ljava/lang/String;

.field protected mCreateTime:J

.field protected mDialString:Ljava/lang/String;

.field protected mDuration:J

.field private mExtras:Landroid/os/Bundle;

.field protected mHoldingStartTime:J

.field protected mIsIncoming:Z

.field private mIsWifi:Z

.field public mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/telephony/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalVideoCapable:Z

.field protected mNumberConverted:Z

.field protected mNumberPresentation:I

.field protected mOrigConnection:Lcom/android/internal/telephony/Connection;

.field private mPostDialListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection$PostDialListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPreHandoverState:Lcom/android/internal/telephony/Call$State;

.field private mRemoteVideoCapable:Z

.field mUserData:Ljava/lang/Object;

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I

.field protected oldCallDetails:Lcom/android/internal/telephony/CallDetails;

.field protected sipError:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const-string v0, "Connection"

    sput-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 107
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    .line 128
    iput-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/Connection;->id:I

    .line 135
    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 136
    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->oldCallDetails:Lcom/android/internal/telephony/CallDetails;

    .line 140
    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    .line 144
    iput v2, p0, Lcom/android/internal/telephony/Connection;->sipError:I

    .line 155
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    .line 395
    return-void
.end method

.method private validateCanModifyConnectionType(Landroid/os/Message;I)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 886
    const/4 v4, 0x0

    .line 887
    .local v4, "ret":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 888
    .local v1, "call":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v8

    iget v8, v8, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    move v2, v6

    .line 889
    .local v2, "isCb":Z
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v8

    if-eqz v8, :cond_5

    move v3, v6

    .line 891
    .local v3, "isMP":Z
    :goto_1
    if-eqz v2, :cond_6

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getIndex()I

    move-result v8

    if-ltz v8, :cond_6

    move v4, v6

    .line 893
    :goto_2
    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    .line 896
    const-string v5, ""

    .line 897
    .local v5, "s":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 898
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Call is not CallBase. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 901
    :cond_0
    if-eqz v3, :cond_1

    .line 902
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Call is Multiparty. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 905
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getIndex()I

    move-result v6

    if-gez v6, :cond_2

    .line 906
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Index is not yet assigned. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 909
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-eq p2, v6, :cond_7

    .line 911
    invoke-static {p1, v10, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 916
    .local v0, "ar":Landroid/os/AsyncResult;
    :goto_3
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 917
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 919
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "s":Ljava/lang/String;
    :cond_3
    return v4

    .end local v2    # "isCb":Z
    .end local v3    # "isMP":Z
    :cond_4
    move v2, v7

    .line 888
    goto :goto_0

    .restart local v2    # "isCb":Z
    :cond_5
    move v3, v7

    .line 889
    goto :goto_1

    .restart local v3    # "isMP":Z
    :cond_6
    move v4, v7

    .line 891
    goto :goto_2

    .line 913
    .restart local v5    # "s":Ljava/lang/String;
    :cond_7
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to change: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v10, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_3
.end method


# virtual methods
.method public acceptConnectionTypeChange(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .local p1, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 977
    sget-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Confirming call type change request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    iget-object v0, v0, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallDetails;->setExtrasFromMap(Ljava/util/Map;)V

    .line 981
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOwner()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/CallTracker;->modifyCallConfirm(Landroid/os/Message;Lcom/android/internal/telephony/CallModify;)V

    .line 982
    iput-object v3, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    .line 984
    :cond_0
    return-void
.end method

.method public final addListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$Listener;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 518
    return-void
.end method

.method public final addPostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$PostDialListener;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_0
    return-void
.end method

.method public abstract cancelPostDial()V
.end method

.method public cancelTransferCall()V
    .locals 1

    .prologue
    .line 1025
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Connection;->cancelTransferCall(Landroid/os/Message;)V

    .line 1026
    return-void
.end method

.method public cancelTransferCall(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1029
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOwner()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1030
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getIndex()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1031
    .local v0, "rilCallIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOwner()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/telephony/CallTracker;->cancelTransferCall(ILandroid/os/Message;)V

    .line 1033
    .end local v0    # "rilCallIndex":I
    :cond_0
    return-void
.end method

.method public changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 925
    .local p3, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-static {p3}, Lcom/android/internal/telephony/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p2, v3, v4}, Lcom/android/internal/telephony/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 927
    .local v0, "callDetails":Lcom/android/internal/telephony/CallDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getIndex()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 928
    .local v2, "rilCallIndex":I
    new-instance v1, Lcom/android/internal/telephony/CallModify;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/CallModify;-><init>(Lcom/android/internal/telephony/CallDetails;I)V

    .line 929
    .local v1, "callModify":Lcom/android/internal/telephony/CallModify;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOwner()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/android/internal/telephony/CallTracker;->modifyCallInitiate(Landroid/os/Message;Lcom/android/internal/telephony/CallModify;)V

    .line 930
    return-void
.end method

.method protected final clearPostDialListeners()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 427
    return-void
.end method

.method public clearUserData()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 413
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioQuality()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    return v0
.end method

.method public abstract getCall()Lcom/android/internal/telephony/Call;
.end method

.method public getCallDetails()Lcom/android/internal/telephony/CallDetails;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    return-object v0
.end method

.method public getCallSubstate()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    return v0
.end method

.method public getCdnipNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 789
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    return v0
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 341
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 342
    const/4 v1, 0x0

    .line 344
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConferenceParticipants()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    return-wide v0
.end method

.method public getConnectTimeReal()J
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    return-wide v0
.end method

.method public getConnectionExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getConnectionType()I
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v0, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 880
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    return-wide v0
.end method

.method public abstract getDisconnectCause()I
.end method

.method public abstract getDisconnectTime()J
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 254
    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 259
    :goto_0
    return-wide v0

    .line 256
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 259
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    goto :goto_0
.end method

.method public abstract getHoldDurationMillis()J
.end method

.method public getHoldingStartTime()J
    .locals 2

    .prologue
    .line 269
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 808
    iget v0, p0, Lcom/android/internal/telephony/Connection;->id:I

    return v0
.end method

.method protected getIndex()I
    .locals 1

    .prologue
    .line 864
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getNumberPresentation()I
.end method

.method public getOldCallDetails()Lcom/android/internal/telephony/CallDetails;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->oldCallDetails:Lcom/android/internal/telephony/CallDetails;

    return-object v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getOwner()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 868
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
.end method

.method public abstract getPreciseDisconnectCause()I
.end method

.method public getProposedConnectionType()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getConnectionType()I

    move-result v0

    .line 958
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    if-eqz v1, :cond_0

    .line 959
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    iget-object v1, v1, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    if-eqz v1, :cond_1

    .line 960
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    iget-object v1, v1, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    iget v0, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 966
    :cond_0
    :goto_0
    return v0

    .line 962
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Received callModifyRequest without call details"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRadioTech()Ljava/lang/String;
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    const-string v1, "radiotech"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getRemainingPostDialString()Ljava/lang/String;
.end method

.method public getSipErrorCode()I
    .locals 1

    .prologue
    .line 1010
    iget v0, p0, Lcom/android/internal/telephony/Connection;->sipError:I

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 317
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 318
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 320
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    goto :goto_0
.end method

.method public getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public abstract getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getVendorDisconnectCause()Ljava/lang/String;
.end method

.method public getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    return v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isCdmaCwActive()Z
    .locals 1

    .prologue
    .line 795
    const/4 v0, 0x0

    return v0
.end method

.method public isCdmaCwHolding()Z
    .locals 1

    .prologue
    .line 802
    const/4 v0, 0x0

    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    return v0
.end method

.method public isLocalVideoCapable()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    return v0
.end method

.method public abstract isMultiparty()Z
.end method

.method public isRemoteVideoCapable()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    return v0
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public isWifi()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    return v0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 501
    if-nez p1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    .line 503
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 504
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    .line 505
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 506
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    .line 507
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getHoldingStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    .line 508
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    goto :goto_0
.end method

.method protected final notifyPostDialListeners()V
    .locals 4

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v2, v3, :cond_0

    .line 431
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 432
    .local v1, "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialWait()V

    goto :goto_0

    .line 435
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    :cond_0
    return-void
.end method

.method protected final notifyPostDialListenersNextChar(C)V
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 438
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 439
    .local v1, "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialChar(C)V

    goto :goto_0

    .line 441
    .end local v1    # "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    :cond_0
    return-void
.end method

.method public onConferenceMergeFailed()V
    .locals 3

    .prologue
    .line 732
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 733
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceMergedFailed()V

    goto :goto_0

    .line 735
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    .prologue
    .line 744
    return-void
.end method

.method public onReceivedModifyCall(Lcom/android/internal/telephony/CallModify;)Z
    .locals 5
    .param p1, "callModify"    # Lcom/android/internal/telephony/CallModify;

    .prologue
    .line 933
    sget-object v2, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceivedCallModify("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v0, 0x0

    .line 935
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p1, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    iget v2, v2, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/Connection;->validateCanModifyConnectionType(Landroid/os/Message;I)Z

    move-result v1

    .line 936
    .local v1, "ret":Z
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    .line 938
    sget-object v2, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceivedCallModify() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    return v1
.end method

.method public abstract proceedAfterWaitChar()V
.end method

.method public abstract proceedAfterWildChar(Ljava/lang/String;)V
.end method

.method public rejectConnectionTypeChange()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 992
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    if-nez v1, :cond_0

    .line 1007
    :goto_0
    return-void

    .line 993
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallModify;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallModify;-><init>()V

    .line 994
    .local v0, "callModify":Lcom/android/internal/telephony/CallModify;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/CallModify;->call_index:I

    .line 995
    new-instance v1, Lcom/android/internal/telephony/CallDetails;

    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallDetails;-><init>(Lcom/android/internal/telephony/CallDetails;)V

    iput-object v1, v0, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    .line 997
    const-string v1, "ATT"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BMC"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TMB"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TMK"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 999
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    const/16 v2, 0xa

    iput v2, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 1002
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting Change request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " keep as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOwner()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1004
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOwner()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/android/internal/telephony/CallTracker;->modifyCallConfirm(Landroid/os/Message;Lcom/android/internal/telephony/CallModify;)V

    .line 1006
    :cond_3
    iput-object v4, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    goto :goto_0
.end method

.method public final removeListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$Listener;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 527
    return-void
.end method

.method public final removePostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$PostDialListener;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 423
    return-void
.end method

.method public resetOldCallDetails()V
    .locals 1

    .prologue
    .line 850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->oldCallDetails:Lcom/android/internal/telephony/CallDetails;

    .line 851
    return-void
.end method

.method public abstract separate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public setAudioQuality(I)V
    .locals 3
    .param p1, "audioQuality"    # I

    .prologue
    .line 649
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    .line 650
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 651
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onAudioQualityChanged(I)V

    goto :goto_0

    .line 653
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setCallDetails(Lcom/android/internal/telephony/CallDetails;)Z
    .locals 3
    .param p1, "details"    # Lcom/android/internal/telephony/CallDetails;

    .prologue
    const/4 v1, 0x0

    .line 820
    const/4 v0, 0x0

    .line 821
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-ne v2, p1, :cond_0

    .line 842
    :goto_0
    return v1

    .line 825
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v2, :cond_2

    .line 826
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/CallDetails;->isChanged(Lcom/android/internal/telephony/CallDetails;)Z

    move-result v0

    .line 831
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->oldCallDetails:Lcom/android/internal/telephony/CallDetails;

    .line 832
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 834
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 835
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v1, :cond_4

    .line 836
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallDetails;->getBundleFromExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    :cond_1
    :goto_2
    move v1, v0

    .line 842
    goto :goto_0

    .line 828
    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_3
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_3

    .line 838
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    goto :goto_2
.end method

.method public setCallSubstate(I)V
    .locals 3
    .param p1, "callSubstate"    # I

    .prologue
    .line 681
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    .line 682
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 683
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onCallSubstateChanged(I)V

    goto :goto_0

    .line 685
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setConnectTime(J)V
    .locals 1
    .param p1, "connectTime"    # J

    .prologue
    .line 227
    iput-wide p1, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 228
    return-void
.end method

.method public setConnectionExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    .line 661
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 662
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onExtrasChanged(Landroid/os/Bundle;)V

    goto :goto_0

    .line 664
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setConverted(Ljava/lang/String;)V
    .locals 1
    .param p1, "oriNumber"    # Ljava/lang/String;

    .prologue
    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    .line 701
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mConvertedNumber:Ljava/lang/String;

    .line 702
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 703
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 704
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 812
    iput p1, p0, Lcom/android/internal/telephony/Connection;->id:I

    .line 813
    return-void
.end method

.method public setLocalVideoCapable(Z)V
    .locals 3
    .param p1, "capable"    # Z

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    .line 614
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 615
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onLocalVideoCapabilityChanged(Z)V

    goto :goto_0

    .line 617
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setRemoteVideoCapable(Z)V
    .locals 3
    .param p1, "capable"    # Z

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    .line 626
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 627
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onRemoteVideoCapabilityChanged(Z)V

    goto :goto_0

    .line 629
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userdata"    # Ljava/lang/Object;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 381
    return-void
.end method

.method public setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 694
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 695
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    .line 697
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setVideoState(I)V
    .locals 3
    .param p1, "videoState"    # I

    .prologue
    .line 601
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    .line 602
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 603
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoStateChanged(I)V

    goto :goto_0

    .line 605
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setWifi(Z)V
    .locals 3
    .param p1, "isWifi"    # Z

    .prologue
    .line 637
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    .line 638
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 639
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onWifiChanged(Z)V

    goto :goto_0

    .line 641
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 754
    .local v0, "str":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pres.: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " postdial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cnap name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " incoming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " post dial state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isCdmaCwActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isCdmaCwActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isCdmaCwHolding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isCdmaCwHolding()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " videoState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v1, :cond_1

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " connection.extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v1, :cond_2

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " calldetails.extras: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallDetails;->getCsvFromExtras()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public transferCall(Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "msisdn"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 1019
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOwner()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1020
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getIndex()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1021
    .local v0, "rilCallIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOwner()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0, p1}, Lcom/android/internal/telephony/CallTracker;->transferCall(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1023
    .end local v0    # "rilCallIndex":I
    :cond_0
    return-void
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 1015
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/Connection;->transferCall(Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    return-void
.end method

.method public updateConferenceParticipants(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 712
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 713
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceParticipantsChanged(Ljava/util/List;)V

    goto :goto_0

    .line 715
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public updateMultipartyState(Z)V
    .locals 3
    .param p1, "isMultiparty"    # Z

    .prologue
    .line 723
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 724
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onMultipartyStateChanged(Z)V

    goto :goto_0

    .line 726
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method
