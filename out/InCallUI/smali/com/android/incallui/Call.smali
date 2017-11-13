.class public final Lcom/android/incallui/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/Call$VideoSettings;,
        Lcom/android/incallui/Call$State;
    }
.end annotation


# static fields
.field private static final ID_PREFIX:Ljava/lang/String;

.field private static sIdCounter:I


# instance fields
.field private final mChildCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateTimeMillis:J

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mId:Ljava/lang/String;

.field public mIsActiveSub:Z

.field private mIsIncoming:Z

.field private mLastCallkey:Ljava/lang/String;

.field private mLeftPostDialString:Ljava/lang/String;

.field private mModifyToVideoState:I

.field private mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mPostDialString:Ljava/lang/String;

.field private mSessionModificationState:I

.field private mSlotId:I

.field private mState:I

.field private mSubId:I

.field private final mTelecommCall:Landroid/telecom/Call;

.field private mTelecommCallListener:Landroid/telecom/Call$Listener;

.field private mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

.field private final mVideoSettings:Lcom/android/incallui/Call$VideoSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/incallui/Call;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/Call;->ID_PREFIX:Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/Call;->sIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "telecommCall"    # Landroid/telecom/Call;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-boolean v1, p0, Lcom/android/incallui/Call;->mIsActiveSub:Z

    .line 140
    new-instance v0, Lcom/android/incallui/Call$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/Call$1;-><init>(Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/Call;->mTelecommCallListener:Landroid/telecom/Call$Listener;

    .line 210
    iput v1, p0, Lcom/android/incallui/Call;->mState:I

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    .line 215
    new-instance v0, Lcom/android/incallui/Call$VideoSettings;

    invoke-direct {v0}, Lcom/android/incallui/Call$VideoSettings;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mVideoSettings:Lcom/android/incallui/Call$VideoSettings;

    .line 216
    iput v1, p0, Lcom/android/incallui/Call;->mModifyToVideoState:I

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/Call;->mCreateTimeMillis:J

    .line 221
    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/Call;->mPostDialString:Ljava/lang/String;

    .line 223
    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/Call;->mLeftPostDialString:Ljava/lang/String;

    .line 224
    iput v2, p0, Lcom/android/incallui/Call;->mSubId:I

    .line 225
    iput v2, p0, Lcom/android/incallui/Call;->mSlotId:I

    .line 230
    iput-object p1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/incallui/Call;->ID_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/incallui/Call;->sIdCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/incallui/Call;->sIdCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    .line 232
    invoke-direct {p0}, Lcom/android/incallui/Call;->updateFromTelecommCall()V

    .line 233
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCallListener:Landroid/telecom/Call$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Call;->addListener(Landroid/telecom/Call$Listener;)V

    .line 234
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/Call;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/Call;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/incallui/Call;->update()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/Call;)Landroid/telecom/Call$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/Call;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCallListener:Landroid/telecom/Call$Listener;

    return-object v0
.end method

.method public static areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call1"    # Lcom/android/incallui/Call;
    .param p1, "call2"    # Lcom/android/incallui/Call;

    .prologue
    .line 621
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 622
    const/4 v0, 0x1

    .line 628
    :goto_0
    return v0

    .line 623
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 624
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 628
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private getCallExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-static {v0}, Lcom/android/incallui/CallAdapterUtils;->getCallExtra(Landroid/telecom/Call;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getCallKeyForCallButtonPresenter(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 683
    if-nez p0, :cond_0

    .line 684
    const/4 v0, 0x0

    .line 686
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " video:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCallKeyForCallPresenter(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 662
    if-nez p0, :cond_0

    .line 663
    const/4 v0, 0x0

    .line 665
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getCapabilities()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ids:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " confcount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getConferenceableCallsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getProperties()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " video:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callcount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getCurrentCallCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " session:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " redial:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getRedialTimes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " postDial:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " leftPostDial:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getLeftPostDialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " forward:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isForwardedCall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSlotId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private isNeedUpdate(II)Z
    .locals 3
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 255
    invoke-static {p0}, Lcom/android/incallui/Call;->getCallKeyForCallPresenter(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "callkey":Ljava/lang/String;
    if-ne p1, p2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/Call;->mLastCallkey:Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 257
    .local v1, "isCallChanged":Z
    :goto_0
    iput-object v0, p0, Lcom/android/incallui/Call;->mLastCallkey:Ljava/lang/String;

    .line 258
    return v1

    .line 256
    .end local v1    # "isCallChanged":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setModifyToVideoState(I)V
    .locals 0
    .param p1, "newVideoState"    # I

    .prologue
    .line 740
    iput p1, p0, Lcom/android/incallui/Call;->mModifyToVideoState:I

    .line 741
    return-void
.end method

.method private setPostDialString()V
    .locals 5

    .prologue
    .line 385
    iget-object v3, p0, Lcom/android/incallui/Call;->mPostDialString:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 386
    iget-object v3, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-static {v3}, Lcom/android/incallui/CallAdapterUtils;->getCallIntentExtra(Landroid/telecom/Call;)Landroid/os/Bundle;

    move-result-object v1

    .line 387
    .local v1, "intentExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 388
    const-string v3, "telecomm.POST_DIAL_STRING"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/Call;->mPostDialString:Ljava/lang/String;

    .line 390
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/Call;->mPostDialString:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/incallui/Call;->mLeftPostDialString:Ljava/lang/String;

    .line 393
    .end local v1    # "intentExtras":Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/Call;->getCallExtra()Landroid/os/Bundle;

    move-result-object v0

    .line 394
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 395
    const-string v3, "telephony.POST_DIAL_NEXT_CHAR"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "nextChar":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 397
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_3

    .line 398
    iget-object v3, p0, Lcom/android/incallui/Call;->mLeftPostDialString:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 399
    iget-object v3, p0, Lcom/android/incallui/Call;->mLeftPostDialString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/Call;->mLeftPostDialString:Ljava/lang/String;

    .line 406
    .end local v2    # "nextChar":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 402
    .restart local v2    # "nextChar":Ljava/lang/String;
    :cond_3
    const-string v3, ""

    iput-object v3, p0, Lcom/android/incallui/Call;->mLeftPostDialString:Ljava/lang/String;

    goto :goto_0
.end method

.method private static translateState(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 285
    packed-switch p0, :pswitch_data_0

    .line 305
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 287
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 289
    :pswitch_2
    const/16 v0, 0xd

    goto :goto_0

    .line 291
    :pswitch_3
    const/16 v0, 0xc

    goto :goto_0

    .line 293
    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    .line 295
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 297
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    .line 299
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 301
    :pswitch_8
    const/16 v0, 0xa

    goto :goto_0

    .line 303
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_9
    .end packed-switch
.end method

.method private update()V
    .locals 3

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 242
    .local v0, "oldState":I
    invoke-direct {p0}, Lcom/android/incallui/Call;->updateFromTelecommCall()V

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " call, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "old state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new call detail is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->si(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 246
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->onDisconnect(Lcom/android/incallui/Call;)V

    .line 252
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/Call;->isNeedUpdate(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 250
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call update ignore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/Call;->mLastCallkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateFromTelecommCall()V
    .locals 4

    .prologue
    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFromTelecommCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call;->translateState(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/Call;->setState(I)V

    .line 264
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 265
    invoke-direct {p0}, Lcom/android/incallui/Call;->setPostDialString()V

    .line 269
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    if-nez v1, :cond_0

    .line 271
    new-instance v1, Lcom/android/incallui/InCallVideoCallCallback;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallVideoCallCallback;-><init>(Lcom/android/incallui/Call;)V

    iput-object v1, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    iget-object v2, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    invoke-static {v1, v2}, Lcom/android/incallui/CallAdapterUtils;->registerCallback(Landroid/telecom/Call;Lcom/android/incallui/InCallVideoCallCallback;)V

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 278
    iget-object v2, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call;

    invoke-virtual {v3, v1}, Lcom/android/incallui/CallList;->getCallByTelecommCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_2
    return-void
.end method

.method private updateSlotIdAndSubId()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 523
    iget v0, p0, Lcom/android/incallui/Call;->mSubId:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/Call;->mSlotId:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isAccountHandleChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    :goto_0
    return-void

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/Call;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 527
    iget-object v0, p0, Lcom/android/incallui/Call;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/Call;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v0}, Lcom/android/incallui/CallAdapterUtils;->getSubIdByAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/incallui/Call;->mSubId:I

    .line 529
    iget v0, p0, Lcom/android/incallui/Call;->mSubId:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/Call;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    :cond_1
    iput v1, p0, Lcom/android/incallui/Call;->mSlotId:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 527
    goto :goto_1
.end method


# virtual methods
.method public can(I)Z
    .locals 12
    .param p1, "capabilities"    # I

    .prologue
    const/4 v8, 0x0

    .line 436
    iget-object v9, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v9}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v5

    .line 437
    .local v5, "supportedCapabilities":I
    if-nez p1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v8

    .line 441
    :cond_1
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_5

    .line 444
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->isDsdaEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 445
    iget-object v9, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v9}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v1

    .line 447
    .local v1, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    const/4 v2, 0x0

    .line 448
    .local v2, "hasConfenceableCall":Z
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 449
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSubId()I

    move-result v9

    int-to-long v6, v9

    .line 450
    .local v6, "subId":J
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    .line 451
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    .line 452
    .local v4, "phHandle":Landroid/telecom/PhoneAccountHandle;
    if-eqz v4, :cond_2

    .line 453
    invoke-virtual {v4}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v9, v10, v6

    if-nez v9, :cond_2

    .line 454
    const/4 v2, 0x1

    .line 460
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "phHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v6    # "subId":J
    :cond_3
    if-nez v2, :cond_4

    and-int/lit8 v9, v5, 0x4

    if-eqz v9, :cond_0

    .line 470
    .end local v1    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .end local v2    # "hasConfenceableCall":Z
    :cond_4
    and-int/lit8 p1, p1, -0x5

    .line 472
    :cond_5
    iget-object v9, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v9}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v9

    and-int/2addr v9, p1

    if-ne p1, v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    .line 465
    :cond_6
    iget-object v9, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v9}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    and-int/lit8 v9, v5, 0x4

    if-nez v9, :cond_4

    goto :goto_0
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public getBlockType()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 360
    invoke-direct {p0}, Lcom/android/incallui/Call;->getCallExtra()Landroid/os/Bundle;

    move-result-object v0

    .line 361
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 362
    const-string v2, "telecomm.BLOCK_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 364
    :cond_0
    return v1
.end method

.method public getCallCreationTime()J
    .locals 4

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/android/incallui/Call;->getCallExtra()Landroid/os/Bundle;

    move-result-object v0

    .line 757
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 758
    const-string v1, "telecomm.CALL_CREATION_TIME"

    iget-wide v2, p0, Lcom/android/incallui/Call;->mCreateTimeMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 760
    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/android/incallui/Call;->mCreateTimeMillis:J

    goto :goto_0
.end method

.method public getCannedSmsResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getCannedTextResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v0

    return v0
.end method

.method public getChildCallIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallerDisplayNamePresentation()I

    move-result v0

    return v0
.end method

.method public getConferenceableCallsCount()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCreateTimeMillis()J
    .locals 2

    .prologue
    .line 485
    iget-wide v0, p0, Lcom/android/incallui/Call;->mCreateTimeMillis:J

    return-wide v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 2

    .prologue
    .line 418
    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 422
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    goto :goto_0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImsConferenceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-static {v0}, Lcom/android/incallui/CallAdapterUtils;->getImsConferenceType(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsIncoming()Z
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/android/incallui/Call;->mIsIncoming:Z

    return v0
.end method

.method public getLeftPostDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/incallui/Call;->mLeftPostDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyToVideoState()I
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Lcom/android/incallui/Call;->mModifyToVideoState:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/GatewayInfo;->getOriginalAddress()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "number":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/Call;->mPostDialString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/incallui/Call;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/Call;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 325
    :cond_0
    return-object v0

    .line 319
    .end local v0    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .restart local v0    # "number":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v0    # "number":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    move-result v0

    return v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 542
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v0

    .line 543
    .local v0, "parentCall":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 544
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->getCallByTelecommCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 546
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPostDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/incallui/Call;->mPostDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()I
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallProperties()I

    move-result v0

    return v0
.end method

.method public getRedialTimes()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 352
    invoke-direct {p0}, Lcom/android/incallui/Call;->getCallExtra()Landroid/os/Bundle;

    move-result-object v0

    .line 353
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 354
    const-string v2, "telecomm.REDIAL_TIMES"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 356
    :cond_0
    return v1
.end method

.method public getSessionModificationState()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    return v0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/android/incallui/Call;->updateSlotIdAndSubId()V

    .line 519
    iget v0, p0, Lcom/android/incallui/Call;->mSlotId:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    const/16 v0, 0xb

    .line 336
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    goto :goto_0
.end method

.method public getSubId()I
    .locals 1

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/android/incallui/Call;->updateSlotIdAndSubId()V

    .line 514
    iget v0, p0, Lcom/android/incallui/Call;->mSubId:I

    return v0
.end method

.method public getTelecommCall()Landroid/telecom/Call;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    return-object v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    return-object v0
.end method

.method public getVideoSettings()Lcom/android/incallui/Call$VideoSettings;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/incallui/Call;->mVideoSettings:Lcom/android/incallui/Call$VideoSettings;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    return v0
.end method

.method public hasProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallProperties()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAccountHandleChanged()Z
    .locals 2

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 505
    .local v0, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, p0, Lcom/android/incallui/Call;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/Call;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v1, v0}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    const-string v1, "phone account handle changed true"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    const/4 v1, 0x1

    .line 509
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConferenceCall()Z
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v0

    return v0
.end method

.method public isForwardedCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 368
    invoke-direct {p0}, Lcom/android/incallui/Call;->getCallExtra()Landroid/os/Bundle;

    move-result-object v0

    .line 369
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "telephony.IS_FORWARDED_CALL"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isGenericConferenceCall()Z
    .locals 1

    .prologue
    .line 493
    invoke-static {p0}, Lcom/android/incallui/CallAdapterUtils;->isGenericConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public isVideoCall(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 571
    invoke-static {p1}, Lcom/android/incallui/CallUtils;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/CallAdapterUtils;->isVideo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisconnectCause(Landroid/telecom/DisconnectCause;)V
    .locals 0
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/incallui/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 427
    return-void
.end method

.method public setSessionModificationState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 602
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 603
    const-string v1, "setSessionModificationState not to be called for RECEIVED_UPGRADE_TO_VIDEO_REQUEST"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iget v3, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    if-eq v3, p1, :cond_3

    move v0, v1

    .line 608
    .local v0, "hasChanged":Z
    :goto_1
    iput p1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSessionModificationState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSessionModificationState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    if-eq p1, v1, :cond_2

    .line 612
    invoke-direct {p0, v2}, Lcom/android/incallui/Call;->setModifyToVideoState(I)V

    .line 615
    :cond_2
    if-eqz v0, :cond_0

    .line 616
    invoke-direct {p0}, Lcom/android/incallui/Call;->update()V

    goto :goto_0

    .end local v0    # "hasChanged":Z
    :cond_3
    move v0, v2

    .line 607
    goto :goto_1
.end method

.method public setSessionModificationTo(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSessionModificationTo - video state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 582
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    .line 583
    const-string v0, "setSessionModificationTo - Clearing session modification state"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSessionModificationTo - mSessionModificationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " video state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    invoke-direct {p0}, Lcom/android/incallui/Call;->update()V

    .line 594
    return-void

    .line 585
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    .line 587
    invoke-direct {p0, p1}, Lcom/android/incallui/Call;->setModifyToVideoState(I)V

    .line 588
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->onUpgradeToVideo(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 341
    iput p1, p0, Lcom/android/incallui/Call;->mState:I

    .line 342
    iget v1, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 343
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/Call;->mIsIncoming:Z

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/Call;->getCallExtra()Landroid/os/Bundle;

    move-result-object v0

    .line 346
    .local v0, "bundle":Landroid/os/Bundle;
    iget v1, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "telecomm.IS_REDIAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/incallui/Call;->mState:I

    .line 349
    :cond_2
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 748
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 641
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[%s, %s, %s, children:%s, parent:%s, videoState:%d, mIsActivSub:%b, mSessionModificationState:%d, conferenceable:%s, VideoSettings:%s]"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/CallAdapterUtils;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/android/incallui/Call;->mIsActiveSub:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v4}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
